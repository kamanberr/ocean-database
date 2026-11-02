# :material-grid: 격자 수온·염분 Product <span class="date">[2026.03.28]</span>

현장 관측 profile(Argo와 대부분의 경우 다른 플랫폼 포함)로 만든 객관 분석 수온·염분장입니다.
표에서 product를 고른 뒤, 아래 카드에서 링크와 설명을 확인하세요.

## 비교

| Product | 제공 기관 | 해상도 | 층 수 / 깊이 | 기간 | 입력 자료 | 링크 |
|---|---|---|---|---|---|---|
| **EN4** (objective analyses) | Met Office Hadley Centre | 1°, monthly | 42 levels to 5350 m | 1900 – present (Argo는 1999년부터 포함) | Argo plus others | [EN4](#en4) |
| **CMEMS CORA OA** | CMEMS / Coriolis | 0.5°, monthly | – | 1960-01-01 – 2024-06-01 | – | [CORA OA](#cmems-cora-oa) |
| **MOAA GPV** | JAMSTEC | 1°, monthly | 25 levels to 2000 dbar | 2001-01-01 – | Argo plus others (optimal interpolation) | [MOAA GPV](#moaa-gpv) |
| **CORA5** | CMEMS / Coriolis | 1/2°, monthly | 250 levels to 2000 m | 1950 – year N-2 | Argo plus others (optimal interpolation) | [CORA5](#cora5) |
| **BOA-Argo** | CSIO, MNR | 1°, monthly | 58 levels to 1975 dbar | 2004-01-01 – | Argo only (Barnes method) | [BOA-Argo](#boa-argo) |
| **WOA** | NOAA NCEI | – | – | 기후값 | – | [WOA](../../processed/woa.md) |

월별 격자 Argo product 전체 목록: [Argo data products (UCSD)](https://argo.ucsd.edu/data/argo-data-products/)

## Product

<div class="model-card" markdown>

### EN4

1°, monthly · 42 levels to 5350 m · 1900 – present
{ .spec }

Met Office. 품질 관리된 수온·염분 profile과 불확실도를 포함한 월별 objective analysis. 최신 버전은 EN.4.2.2입니다.

[:octicons-download-24: EN.4.2.2 다운로드](https://www.metoffice.gov.uk/hadobs/en4/download-en4-2-2.html)<br>
[:octicons-link-external-24: 이전 버전](https://www.metoffice.gov.uk/hadobs/en4/download.html)<br>
[:octicons-arrow-right-24: EN4 다운로드 안내](en4.md)<br>
[:octicons-book-24: Good et al. (2013)](https://doi.org/10.1002/2013JC009067)

</div>

<div class="model-card" markdown>

### CMEMS CORA OA

0.5°, monthly · 1960-01-01 – 2024-06-01
{ .spec }

격자화된 수온·염분 objective analysis (delayed mode).

[:octicons-link-external-24: INSITU_GLO_PHY_TS_OA_MY_013_052](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_TS_OA_MY_013_052/description)

</div>

<div class="model-card" markdown>

### MOAA GPV

1°, monthly · 25 levels to 2000 dbar · since 2001-01-01
{ .spec }

JAMSTEC. Argo와 다른 플랫폼 자료를 optimal interpolation으로 격자화.

[:octicons-download-24: MOAA GPV (JAMSTEC)](https://www.jamstec.go.jp/argo_research/dataset/moaagpv/moaa_en.html)<br>
[:octicons-book-24: Hosoda et al. (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/05/Hosoda_etal_MOAA_GPV.pdf)

</div>

<div class="model-card" markdown>

### CORA5

1/2°, monthly · 250 levels to 2000 m · 1950 – year N-2
{ .spec }

CMEMS / Coriolis. Argo와 다른 플랫폼 자료를 optimal interpolation으로 격자화.

[:octicons-link-external-24: CORA 버전·문서](https://www.coriolis.eu.org/Science2/Global-Ocean/CORA/Versions-Documentations)<br>
[:octicons-book-24: Cabanes et al. (2013), Ocean Science](https://os.copernicus.org/articles/9/1/2013/)

</div>

<div class="model-card" markdown>

### BOA-Argo

1°, monthly · 58 levels to 1975 dbar · since 2004-01-01
{ .spec }

CSIO, MNR. **Argo only**, Barnes method. NetCDF와 MATLAB 파일로 제공.

[:octicons-download-24: ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/](ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/)<br>
[:octicons-book-24: 사용자 매뉴얼 (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/07/User_Manual_BOA_Argo-2020.pdf)

</div>

<div class="model-card" markdown>

### WOA

NOAA NCEI World Ocean Atlas. World Ocean Database로 만든 기후값 자료입니다.

[:octicons-arrow-right-24: World Ocean Atlas](../../processed/woa.md)

</div>
