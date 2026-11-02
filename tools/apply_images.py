"""Replace <!-- IMAGE: path | caption --> and <!-- FILE: path | label --> placeholders
with real Markdown once the target file exists under docs/. Placeholders whose file is
still missing are left untouched. Indentation of the placeholder line is preserved so
figures inside lists and admonitions keep working. Run from the repo root:
    python tools/apply_images.py
"""
import os, re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DOCS = os.path.join(ROOT, "docs")
PAT = re.compile(r"^(?P<ind>[ \t]*)<!--\s*(?P<kind>IMAGE|FILE):\s*(?P<path>assets/[^|]+?)\s*(\|\s*(?P<cap>.*?))?\s*-->[ \t]*$", re.M)
INLINE = re.compile(r"<!--\s*(?P<kind>IMAGE|FILE):\s*(?P<path>assets/[^|]+?)\s*(\|\s*(?P<cap>.*?))?\s*-->")

def figure(rel, cap, ind):
    cap = (cap or "").strip()
    alt = cap or os.path.splitext(os.path.basename(rel))[0].replace("_", " ")
    lines = ['<figure markdown="span">', f'  ![{alt}]({rel}){{ loading=lazy }}']
    if cap:
        lines.append(f"  <figcaption>{cap}</figcaption>")
    lines.append("</figure>")
    return "\n".join(ind + l for l in lines)

def filelink(rel, cap, ind):
    label = (cap or "").strip() or os.path.basename(rel)
    return f"{ind}[:octicons-file-24: {label}]({rel})"

done = missing = 0
for dp, _, fns in os.walk(DOCS):
    for fn in fns:
        if not fn.endswith(".md"):
            continue
        p = os.path.join(dp, fn)
        s = open(p, encoding="utf-8").read()
        def rep(m):
            global done, missing
            target = os.path.join(DOCS, m.group("path").strip())
            if not os.path.exists(target):
                missing += 1
                return m.group(0)
            rel = os.path.relpath(target, dp).replace(os.sep, "/")
            done += 1
            f = figure if m.group("kind") == "IMAGE" else filelink
            return f(rel, m.group("cap"), m.group("ind"))
        new = PAT.sub(rep, s)
        def rep_inline(m):
            global done, missing
            target = os.path.join(DOCS, m.group("path").strip())
            if not os.path.exists(target):
                missing += 1
                return m.group(0)
            rel = os.path.relpath(target, dp).replace(os.sep, "/")
            done += 1
            if m.group("kind") == "FILE":
                return filelink(rel, m.group("cap"), "")
            return f'![{(m.group("cap") or "").strip()}]({rel}){{ loading=lazy }}'
        new = INLINE.sub(rep_inline, new)
        if new != s:
            open(p, "w", encoding="utf-8").write(new)
print(f"inserted {done}; {missing} placeholder(s) still waiting for files")
