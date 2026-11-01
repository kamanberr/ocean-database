# :material-waves: Drifter & Argo <span class="date">[2026.01.02]</span>

Argo float와 표층 뜰개(drifter) 관측 자료, 그리고 이를 격자화한 product를 정리했습니다.

## Argo: profiles

<div class="grid cards" markdown>

-   **Euro-Argo Data Selection**

    ---

    공간 범위(lon, lat)를 지정해서 바로 다운로드할 수 있습니다.

    [:octicons-download-24: Euro-Argo Data Selection](https://dataselection.euro-argo.eu/)

-   **Argo GDAC (ftp, https, s3)**

    ---

    Argo 전체 자료를 제공하는 Global Data Assembly Center 서버

    [:octicons-link-external-24: Argo GDAC servers](http://www.argodatamgt.org/Access-to-data/Argo-GDAC-ftp-https-and-s3-servers)

-   **Argovis**

    ---

    웹에서 Argo profile을 검색·시각화

    [:octicons-link-external-24: Argovis](https://argovis.colorado.edu/)

-   **Tools & tutorials**

    ---

    Argo 자료 활용 소프트웨어와 교육 자료

    [:octicons-link-external-24: Argo software tools (UCSD)](https://argo.ucsd.edu/data/argo-software-tools/)<br>
    [:octicons-link-external-24: Argo Online School](https://euroargodev.github.io/argoonlineschool/intro.html)<br>
    [:octicons-link-external-24: KIOST Argo](https://oceanclimate.kr/kiost_argo/)

</div>

??? info "개별 Argo 검색 (WMO 번호를 알고 있을 때)"
    1. 아래 사이트에서 WMO 번호로 Argo를 검색한 후, 어느 기관이 투하한 것인지 확인합니다.
       [Euro-Argo Fleet Monitoring](https://fleetmonitoring.euro-argo.eu/dashboard?Status=Active,Inactive)
    2. HTTPS → `dac` 디렉토리로 접근해서 해당 기관의 이름으로 된 디렉토리에 접근합니다.
       [Argo profile selection (NRL GODAE)](https://nrlgodae1.nrlmry.navy.mil/cgi-bin/argo_select.pl)
    3. 참고 영상: [YouTube](https://www.youtube.com/watch?v=2vD6UDsW-GA)

## Argo: gridded products

- [Climatological gridded Argo product](https://app.notion.com/p/a27d6194d59183e99e958164428bdddb){ .notion }
- 월별 격자 product 전체 목록: [Argo data products (UCSD)](https://argo.ucsd.edu/data/argo-data-products/). 그중 일부를 아래에 정리했습니다.

<div class="grid cards" markdown>

-   **EN4** · 1°, monthly

    ---

    Met Office · Argo plus others · 42 levels to 5350 m · Argo 포함 1999-01-01부터

    [:octicons-download-24: Met Office Hadley Centre EN4](https://hadleyserver.metoffice.gov.uk/en4/download.html)<br>
    [:octicons-book-24: Good et al. (2013)](https://agupubs.onlinelibrary.wiley.com/doi/10.1002/2013JC009067)

-   **MOAA GPV** · 1°, monthly

    ---

    JAMSTEC · Argo plus others · optimal interpolation · 25 levels to 2000 dbar · since 2001-01-01

    [:octicons-download-24: MOAA GPV (JAMSTEC)](https://www.jamstec.go.jp/argo_research/dataset/moaagpv/moaa_en.html)<br>
    [:octicons-book-24: Hosoda et al. (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/05/Hosoda_etal_MOAA_GPV.pdf)

-   **CORA5** · 1/2°, monthly

    ---

    CMEMS–Coriolis · Argo plus others · optimal interpolation · 250 levels to 2000 m · 1950 – year N-2

    [:octicons-link-external-24: CORA versions & documentation](https://www.coriolis.eu.org/Science2/Global-Ocean/CORA/Versions-Documentations)<br>
    [:octicons-book-24: Cabanes et al. (2013), Ocean Science](https://os.copernicus.org/articles/9/1/2013/)

-   **BOA-Argo** · 1°, monthly

    ---

    CSIO, MNR · **Argo only** · Barnes method · NetCDF/MATLAB · 58 levels to 1975 dbar · since 2004-01-01

    [:octicons-download-24: ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/](ftp://data.argo.org.cn/pub/ARGO/BOA_Argo/)<br>
    [:octicons-book-24: User manual (PDF)](https://argo.ucsd.edu/wp-content/uploads/sites/361/2020/07/User_Manual_BOA_Argo-2020.pdf)

</div>

## Argo: velocity products

전체 목록: [Velocity products (UCSD)](https://argo.ucsd.edu/data/argo-data-products/velocity-products/)

<div class="grid cards" markdown>

-   **G-YoMaHa** · 1°, 1000 dbar

    ---

    Argo float 궤적에서 계산한 약 1000 m 깊이의 객관 분석 유속

    [:octicons-link-external-24: G-YoMaHa (JAMSTEC)](https://www.jamstec.go.jp/argo_research/dataset/gyomaha/gyomaha_en.html)

-   **CMEMS in-situ NRT ocean currents** · 1997-07-28 – present

    ---

    Argo float 궤적을 따라 계산한 parking depth 및 표층의 동서·남북 유속

    [:octicons-link-external-24: INSITU_GLO_PHY_UV_DISCRETE_NRT_013_048](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_UV_DISCRETE_NRT_013_048/description)

</div>

---

## Surface drifters

<div class="grid cards" markdown>

-   **Global Drifter Program (GDP)**

    ---

    NOAA AOML의 전 지구 표층 뜰개 프로그램

    [:octicons-arrow-right-24: How to download GDP data? (Kor)](https://app.notion.com/p/99ad6194d5918349bef501ec375acdb9){ .notion }<br>
    [:octicons-arrow-right-24: How to download GDP data? (Eng)](https://app.notion.com/p/a02d6194d59182fea16801d35eb43aec){ .notion }<br>
    [:octicons-link-external-24: GDP (NOAA AOML)](https://www.aoml.noaa.gov/phod/gdp/index.php)<br>
    [:octicons-link-external-24: Lagrangian Drifter Laboratory (UCSD)](https://gdp.ucsd.edu/ldl/)<br>
    [:octicons-download-24: GDP ERDDAP](https://erddap.aoml.noaa.gov/gdp/erddap/info/index.html?page=1&itemsPerPage=1000)

-   **Near-surface drifter-wind-altimetry synthesis** · 0.25°, daily, 15 m

    ---

    NOAA AOML 개발. 드리프터를 기준으로 Ekman + geostrophic 성분을 결합한 관측 기반 합성 유속장
    (Drifter: GDP, Altimetry: AVISO multi-satellite DM, Winds: ERA-Interim)

    [:octicons-download-24: AOML ftp: decomp](https://www.aoml.noaa.gov/ftp/pub/phod/lumpkin/decomp/)

-   **CMEMS in-situ NRT drifter currents**

    ---

    CMEMS가 제공하는 drifter 기반 표층 유속 관측

    [:octicons-link-external-24: INSITU_GLO_PHY_UV_DISCRETE_NRT_013_048](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_UV_DISCRETE_NRT_013_048/description)<br>
    [:octicons-arrow-right-24: Data processing for CMEMS drifters](https://app.notion.com/p/5b8d6194d591822294a981afe16d6c2e){ .notion }

-   **Subsurface float data**

    ---

    NOAA AOML 수중 float 궤적 자료

    [:octicons-link-external-24: AOML float trajectories](https://www.aoml.noaa.gov/phod/float_traj/data/index.php)

</div>

??? info "GDP와 CMEMS drifter 비교"
    - **GDP (1 and 6 hours)**: 2015-01-01 – 2022-10-23 18:00 (지도), 1996-10 – 2022-10-23 18:00 (속도 분포)
    - **CMEMS (1 or 3 hours)**: 2002-01-08 21:00 – 2024-07-31 23:00, retrieved 2024-08-19

    여기서는 GDP 1시간 자료와 CMEMS 자료를 비교하고 있는데, GDP 6시간 자료는 1시간 자료보다 훨씬 더 개수가 많아서,
    단순히 이 비교 그림만으로 CMEMS에 자료가 더 많다고 보기는 어렵습니다.

??? info "OSMC drifter wave height (더 이상 사용하지 않음)"
    [ERDDAP: OSMC flattened observations from GTS](https://erddap.aoml.noaa.gov/gdp/erddap/tabledap/OSMC_RealTime.html)

## CORA drifters (Coriolis)

[:octicons-link-external-24: Coriolis Data Selection](https://www.coriolis.eu.org/Data-Products/Data-selection)

??? info "Coriolis Data Selection 사용 방법"
    1. 좌측 하단의 box에서 시간 범위, 공간 범위를 설정합니다.
    2. 하단의 자료 중 원하는 데이터를 클릭합니다.
    3. 좌측 상단의 "Refresh"를 클릭합니다.
    4. 지도에서 bar를 확인하여 gauge가 채워진 후 사라질 때까지 기다립니다. 하단에 각 데이터별 개수가 먼저 나타나므로, 기다리는 동안 개수를 확인하는 것을 추천합니다.
    5. load가 완료되면 좌측 상단의 download를 클릭하고 본인 e-mail을 입력합니다.
    6. 너무 긴 시간 범위, 너무 큰 공간 범위, 너무 많은 데이터셋을 요청하면 download가 거부됩니다
       (e.g. drifting buoy를 요청했을 때 300개 안팎까지만 허용되었음). 기간을 나눠서 다운받는 것을 권합니다.

## WOCE surface drifters

- [WOCE Global Data Resource (NOAA NCEI)](https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=gov.noaa.nodc:NODC-WOCE-GDR)
- [NCEI Geoportal](https://www.ncei.noaa.gov/metadata/granule/geoportal/#)
- [eWOCE: Surface Drifter Data](https://www.ewoce.org/data/index.html#Surface_Drifter_Data) ← final WOCE data release (DVD 2), WOCE Report No. 180/02 (2002)

## Regional drifters & buoys

=== "Korea: KHOA"

    [:octicons-link-external-24: 바다누리 해양정보 (KHOA)](https://khoa.go.kr/oceandata/oceaninfo/map.do)

    - (전화 문의 결과) 부이, 표층 뜰개 자료 등 바다누리에서 제공하는 자료는 **KST(한국 표준시)** 기준입니다.
    - 바다누리에서 받을 수 있는 표층 뜰개 중 SVP drifter는 **GDP program에 포함되지 않는다**고 합니다.
    - 표층 뜰개 자료는 현재 개별로만 다운로드할 수 있고, 한번에 받는 별도 방법은 없습니다. [2025.05.01 기준]

=== "Japan: JMA"

    **Ocean Data Buoy Observations**

    [:octicons-link-external-24: JMA ocean data buoy](https://www.data.jma.go.jp/kaiyou/db/vessel_obs/data-report/html/buoy/buoy_e.php)

??? note "Notion 첨부 파일 (이전 예정)"
    - Raw data for ECS & ES: `cmems_obs-ins_glo_phy-cur_nrt_drifter_irr_ECS.csv`, `cmems_obs-ins_glo_phy-cur_nrt_drifter_irr_ES.csv`
    - Reference: `CMEMS-INS-QUID-013-048_retrieved2024.08.22.pdf`, `CMEMS-INS-PUM-013-048_retrieved2024.08.22.pdf`
    - CORA drifter, ECS (retrieved 2024-08-19): `cora_ecs_drf_1970_2000.tgz`, `_2001_2005`, `_2006_2008`, `_2009_2010`, `_2011_2013`, `_2014_2019`, `_2020_2024`
    - CORA drifter, ES (retrieved 2024-08-19): `cora_es_drf_1950_1998.tgz`, `_1999_2003`, `_2004_2006`, `_2007_2008`, `_2009_2010`, `_2011_2013`, `_2014_2017`, `_2018_2024`
    - 이미지: Euro-Argo 화면 2개, WMO 검색 화면 2개, subsurface float, CMEMS product, GDP·CMEMS 비교 그림 3개, CORA 화면, WOCE, JMA buoy
    - Notion 페이지에 임베드된 외부 객체 1개 (내용 확인 필요)
