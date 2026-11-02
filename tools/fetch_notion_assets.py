"""Download the images and documents listed in tools/assets/notion_assets.jsonl from Notion
into docs/assets/... using the Notion API. Run on your own computer (not inside Claude):

    pip install requests
    set NOTION_TOKEN=ntn_xxxxxxxx        (PowerShell: $env:NOTION_TOKEN="ntn_xxxxxxxx")
    python tools/fetch_notion_assets.py              # images + documents
    python tools/fetch_notion_assets.py --data       # also large data files (not for git)
    python tools/apply_images.py                     # then insert the figures into the pages

Setup (once): Notion → Settings → Connections → "Develop or manage integrations" → New integration
(internal) → copy the secret. Then open the "Kamanberr Ocean Database" page in Notion →
"..." menu → Connections → add the integration. Sub-pages inherit the connection.
"""
import json, os, sys, time, re
import requests

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MANIFEST = os.path.join(ROOT, "tools", "assets", "notion_assets.jsonl")
TOKEN = os.environ.get("NOTION_TOKEN")
if not TOKEN:
    sys.exit("Set the NOTION_TOKEN environment variable first (see the docstring).")
HEAD = {"Authorization": f"Bearer {TOKEN}", "Notion-Version": "2022-06-28"}
INCLUDE_DATA = "--data" in sys.argv

def block_id(ref):
    m = re.match(r"notion-file-block://([0-9a-f-]{36})/", ref)
    return m.group(1) if m else None

def file_url(bid):
    r = requests.get(f"https://api.notion.com/v1/blocks/{bid}", headers=HEAD, timeout=30)
    if r.status_code == 429:
        time.sleep(float(r.headers.get("Retry-After", "1"))); return file_url(bid)
    r.raise_for_status()
    b = r.json(); data = b.get(b.get("type", ""), {})
    f = data.get("file") or data.get("external") or {}
    return f.get("url")

rows = [json.loads(l) for l in open(MANIFEST, encoding="utf-8") if l.strip()]
ok = skip = fail = 0
failed = []
for d in rows:
    if d["kind"] == "data" and not INCLUDE_DATA:
        continue
    target = os.path.join(ROOT, d["target"]) if d["target"] else None
    if not target:
        continue
    if os.path.exists(target) and os.path.getsize(target) > 0:
        skip += 1; continue
    bid = block_id(d["ref"])
    try:
        url = file_url(bid)
        if not url:
            raise RuntimeError("no file url in block")
        r = requests.get(url, timeout=120); r.raise_for_status()
        os.makedirs(os.path.dirname(target), exist_ok=True)
        with open(target, "wb") as fh:
            fh.write(r.content)
        ok += 1; print("ok  ", d["target"])
    except Exception as e:
        fail += 1; failed.append((d["target"], str(e))); print("FAIL", d["target"], e)
    time.sleep(0.35)  # stay under Notion's rate limit (3 req/s)

print(f"\ndownloaded {ok}, already present {skip}, failed {fail}")
for t, e in failed:
    print("  ", t, "->", e)
if ok:
    print("\nNow run: python tools/apply_images.py")
