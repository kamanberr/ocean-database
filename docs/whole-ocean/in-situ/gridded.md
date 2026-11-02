# :material-grid: Gridded T/S Products <span class="date">[2026.03.28]</span>

Objectively analysed temperature and salinity fields built from in situ profiles (Argo and, in most cases, other platforms).
Use the table to pick a product, then see the cards below for links and notes.

## Comparison

| Product | Provider | Resolution | Levels / depth | Period | Input data | Link |
|---|---|---|---|---|---|---|
| **EN4** (objective analyses) | Met Office Hadley Centre | 1°, monthly | 42 levels to 5350 m | 1900 – present (Argo included from 1999) | Argo plus others | [EN4](#en4) |
| **CMEMS CORA OA** | CMEMS / Coriolis | 0.5°, monthly | – | 1960-01-01 – 2024-06-01 | – | [CORA OA](#cmems-cora-oa) |
| **MOAA GPV** | JAMSTEC | 1°, monthly | 25 levels to 2000 dbar | 2001-01-01 – | Argo plus others (optimal interpolation) | [MOAA GPV](#moaa-gpv) |
| **CORA5** | CMEMS / Coriolis | 1/2°, monthly | 250 levels to 2000 m | 1950 – year N-2 | Argo plus others (optimal interpolation) | [CORA5](#cora5) |
| **BOA-Argo** | CSIO, MNR | 1°, monthly | 58 levels to 1975 dbar | 2004-01-01 – | Argo only (Barnes method) | [BOA-Argo](#boa-argo) |
| **WOA** | NOAA NCEI | – | – | climatology | – | [WOA](../../processed/atlas-climatology.md#world-ocean-atlas-woa23) |

Full list of monthly gridded Argo products: [Argo data products (UCSD)](https://argo.ucsd.edu/data/argo-data-products/)

## Products

<div class="model-card" markdown>

### EN4

1°, monthly · 42 levels to 5350 m · 1900 – present
{ .spec }

Met Office. Quality-controlled temperature and salinity profiles and monthly objective analyses with uncertainty estimates. Latest version: EN.4.2.2.

[:octicons-download-24: EN.4.2.2 download](https://www.metoffice.gov.uk/hadobs/en4/download-en4-2-2.html)<br>
[:octicons-link-external-24: Previous versions](https://www.metoffice.gov.uk/hadobs/en4/download.html)<br>
[:octicons-arrow-right-24: EN4 download guide](en4.md)<br>
[:octicons-book-24: Good et al. (2013)](https://doi.org/10.1002/2013JC009067)

</div>

<div class="model-card" markdown>

### CMEMS CORA OA

0.5°, monthly · 1960-01-01 – 2024-06-01
{ .spec }

Gridded temperature and salinity objective analysis (delayed mode).

[:octicons-link-external-24: INSITU_GLO_PHY_TS_OA_MY_013_052](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_TS_OA_MY_013_052/description)

</div>

<div class="model-card" markdown>

### MOAA GPV

1°, monthly · 25 levels to 2000 dbar · since 2001-01-01
{ .spec }

JAMSTEC. Argo plus other platforms, optimal interpolation.

[:octicons-download-24: MOAA GPV (JAMSTEC)](https://www.jamstec.go.jp/argo_research/dataset/moaagpv/moaa_en.html)<br>
[:octicons-book-24: Hosoda et al. (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/05/Hosoda_etal_MOAA_GPV.pdf)

</div>

<div class="model-card" markdown>

### CORA5

1/2°, monthly · 250 levels to 2000 m · 1950 – year N-2
{ .spec }

CMEMS / Coriolis. Argo plus other platforms, optimal interpolation.

[:octicons-link-external-24: CORA versions & documentation](https://www.coriolis.eu.org/Science2/Global-Ocean/CORA/Versions-Documentations)<br>
[:octicons-book-24: Cabanes et al. (2013), Ocean Science](https://os.copernicus.org/articles/9/1/2013/)

</div>

<div class="model-card" markdown>

### BOA-Argo

1°, monthly · 58 levels to 1975 dbar · since 2004-01-01
{ .spec }

CSIO, MNR. **Argo only**, Barnes method. Provided as NetCDF and MATLAB files.

[:octicons-download-24: ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/](ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/)<br>
[:octicons-book-24: User manual (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/07/User_Manual_BOA_Argo-2020.pdf)

</div>

<div class="model-card" markdown>

### WOA

NOAA NCEI World Ocean Atlas: climatological fields derived from the World Ocean Database.

[:octicons-arrow-right-24: World Ocean Atlas](../../processed/atlas-climatology.md#world-ocean-atlas-woa23)

</div>
