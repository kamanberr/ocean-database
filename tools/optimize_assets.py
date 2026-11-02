"""Shrink images under docs/assets so the repository stays small.
- PNG/JPG: downscale to at most 1600 px on the long side; PNG larger than 1.5 MB after
  that is converted to JPEG (quality 85) and every Markdown reference is updated.
- GIF larger than 5 MB: converted to MP4 with ffmpeg (max width 1280); the <figure> in the
  pages is replaced with a <video> block. Original GIF is deleted.
Run from the repo root:  python tools/optimize_assets.py
"""
import os, re, subprocess, glob, sys
from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DOCS = os.path.join(ROOT, "docs")
ASSETS = os.path.join(DOCS, "assets")
MAX_SIDE = 1600
MD = glob.glob(os.path.join(DOCS, "**", "*.md"), recursive=True)

def rewrite_refs(old_rel, new_rel):
    for p in MD:
        s = open(p, encoding="utf-8").read()
        if old_rel in s:
            open(p, "w", encoding="utf-8").write(s.replace(old_rel, new_rel))

def replace_figure_with_video(img_name, video_name):
    pat = re.compile(r'(?P<ind>[ \t]*)<figure markdown="span">\r?\n[ \t]*!\[(?P<alt>[^\]]*)\]\((?P<path>[^)]*?' + re.escape(img_name) + r')\)\{[^}]*\}\r?\n(?:[ \t]*<figcaption>(?P<cap>.*?)</figcaption>\r?\n)?[ \t]*</figure>')
    for p in MD:
        s = open(p, encoding="utf-8").read()
        def rep(m):
            ind = m.group("ind"); vpath = m.group("path").replace(img_name, video_name)
            out = [f'<figure markdown="span">', f'  <video src="{vpath}" autoplay loop muted playsinline controls style="max-width:100%"></video>']
            if m.group("cap"): out.append(f'  <figcaption>{m.group("cap")}</figcaption>')
            out.append('</figure>')
            return "\n".join(ind + l for l in out)
        new = pat.sub(rep, s)
        if new != s: open(p, "w", encoding="utf-8").write(new)

saved = 0
for dp, _, fns in os.walk(ASSETS):
    for fn in fns:
        p = os.path.join(dp, fn); ext = fn.lower().rsplit(".", 1)[-1]
        before = os.path.getsize(p)
        if ext in ("png", "jpg", "jpeg"):
            im = Image.open(p)
            if max(im.size) > MAX_SIDE:
                im.thumbnail((MAX_SIDE, MAX_SIDE), Image.LANCZOS)
            if ext == "png":
                im.save(p, optimize=True)
                if os.path.getsize(p) > 1.5 * 1024 * 1024:
                    newp = p[:-4] + ".jpg"
                    im.convert("RGB").save(newp, "JPEG", quality=85, optimize=True)
                    os.remove(p); rewrite_refs(fn, fn[:-4] + ".jpg"); p = newp
            else:
                im.convert("RGB").save(p, "JPEG", quality=85, optimize=True)
        elif ext == "gif" and before > 5 * 1024 * 1024:
            newp = p[:-4] + ".mp4"
            r = subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", p, "-vf",
                                "scale='min(1280,iw)':-2", "-r", "12", "-c:v", "libx264", "-pix_fmt", "yuv420p",
                                "-crf", "28", "-an", newp])
            if r.returncode == 0 and os.path.exists(newp):
                os.remove(p); replace_figure_with_video(fn, fn[:-4] + ".mp4"); p = newp
            else:
                print("ffmpeg failed for", fn); continue
        else:
            continue
        after = os.path.getsize(p); saved += before - after
        print(f"{before/1048576:7.1f} -> {after/1048576:6.1f} MB  {os.path.relpath(p, ASSETS)}")
print(f"\nsaved {saved/1048576:.0f} MB")
