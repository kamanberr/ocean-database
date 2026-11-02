# tools/

Helper files for maintaining the site.

## Images and attachments from Notion

Pages that still need an image carry a placeholder comment at the exact spot:

    <!-- IMAGE: assets/<section>/<page>/<name>.png | <caption> -->

`assets/notion_assets.jsonl` lists every file to fetch, one JSON object per line:

    {"ref": "notion-file-block://...", "target": "docs/assets/<section>/<page>/<name>.png",
     "kind": "image|file|data", "pages": ["docs/...md"], "caption_en": "...", "caption_ko": "..."}

* `image`: downloaded into `docs/assets/...` and inserted where the placeholder is.
* `file`: small documents (PDF, code, zip) kept under `docs/assets/files/...`.
* `data`: large data files (.nc, .mat, big zips). Not stored in git; linked to the original source
  or to a GitHub Release instead.

`apply_images.py` replaces placeholders with `<figure>` blocks for every target that exists on disk,
and leaves the placeholder in place when the file is still missing. Run it from the repo root:

    python tools/apply_images.py

## Folder layout for images

    docs/assets/<section>/<page>/<descriptive_name>.<ext>

For example `docs/assets/whole-ocean/satellite/sst/khoa_sst_l4_example.png`.
To replace a figure, overwrite the file with the same name. To add one, drop the file in the page's
folder and reference it from the Markdown (both the `.md` and the `.ko.md` file).
