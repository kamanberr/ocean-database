# Kamanberr Ocean Database

**Website → https://kamanberr.github.io/ocean-database/** (한국어: https://kamanberr.github.io/ocean-database/ko/)

This repository holds the source of the website above: download routes of various open-access oceanographic datasets.
Built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/), migrated from the original Notion site.
Edits pushed to `main` are deployed automatically by GitHub Actions in 1-2 minutes.

## Local preview

```powershell
.venv\Scripts\activate          # or: conda activate <env>
pip install -r requirements.txt # first time only
mkdocs serve                    # open http://127.0.0.1:8000
```

## Structure

```
mkdocs.yml            site settings + navigation menu
docs/                 all pages (Markdown)
  index.md            home
  whole-ocean/        Satellite, Drifter & Argo, In situ, Model, Atmosphere
  processed/          Indices, Sea level & OHC, Atlas, MLD
  topics/             Typhoon, Carbon, Ecology, River, Wave, MHW
  regional/           Korea, Japan, Pacific, Atlantic, Indian
  bathymetry/         Bathymetry, Boundary
  etc/                Code, papers, images, ongoing pages
  resources.md        portals, tools, lectures
.github/workflows/    deployment (manual only for now)
```

Links marked with a **Notion** badge point to pages that have not been migrated yet.

## Adding a page

1. Create `docs/<category>/<name>.md`.
2. Add it under the matching section in `nav:` in `mkdocs.yml`.
3. Replace the Notion link on the category index page with the new page.
