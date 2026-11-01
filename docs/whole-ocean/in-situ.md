# :material-ferry: In Situ <span class="date">[2026.03.28]</span>

선박, 계류, 조위 관측 등 현장 관측 자료입니다. Drifter와 Argo product는 [Drifter & Argo](drifter-argo.md) 페이지에서 따로 관리합니다.

## Profile databases

<div class="grid cards" markdown>

-   **World Ocean Database (WOD)**

    ---

    NOAA NCEI의 전 지구 현장 관측 profile 데이터베이스

    [:octicons-arrow-right-24: How to download WOD?](https://app.notion.com/p/afdd6194d59182aa8dae01968ebd9229){ .notion }<br>
    [:octicons-arrow-right-24: World Ocean Atlas (WOA)](https://app.notion.com/p/62dd6194d59182e3a5bd8143f0680bc2){ .notion }

-   **EN4** · 1°, monthly · 1900 – present

    ---

    Met Office. 품질 관리된 수온·염분 profile과 월별 objective analysis (불확실도 포함). 최신 버전은 EN.4.2.2

    [:octicons-download-24: EN.4.2.2 download](https://www.metoffice.gov.uk/hadobs/en4/download-en4-2-2.html)<br>
    [:octicons-link-external-24: Previous versions](https://www.metoffice.gov.uk/hadobs/en4/download.html)<br>
    [:octicons-book-24: Good et al. (2013)](https://doi.org/10.1002/2013JC009067)

-   **GTSPP**

    ---

    Global Temperature and Salinity Profile Programme. WMO·IOC 공동 운영, NCEI 장기 보관

    [:octicons-link-external-24: GTSPP (NOAA NCEI)](https://www.ncei.noaa.gov/products/global-temperature-and-salinity-profile-programme)

-   **CODC-v1** · 1940–2023

    ---

    품질 관리 및 bias 보정된 수온 profile 데이터베이스

    [:octicons-book-24: Scientific Data (2024)](https://www.nature.com/articles/s41597-024-03494-8#code-availability)<br>
    [:octicons-download-24: 海洋科学大数据中心](https://msdc.qdio.ac.cn/data/metadata-special-detail?id=1614882932315443202&otherId=1614882932386746369)

-   **CODC-v2**

    ---

    Global ocean in-situ profile observational dataset

    [:octicons-download-24: 海洋科学大数据中心](https://msdc.qdio.ac.cn/data/metadata-special-detail?id=1866385243443826689&otherId=1866385243481575426)

-   **XBT**

    ---

    eXpendable BathyThermographs, Global Ocean Observing System의 구성 요소

    [:octicons-link-external-24: XBT Science (NOAA AOML)](https://www.aoml.noaa.gov/phod/goos/xbtscience/index.php)

</div>

??? info "EN4 다운로드 안내"
    EN4는 두 가지 product로 구성됩니다.

    - Observed subsurface ocean temperature and salinity profiles with data quality information
    - Objective analyses formed from the profile data with uncertainty estimates

    [EN.4.2.2 다운로드 페이지](https://www.metoffice.gov.uk/hadobs/en4/download-en4-2-2.html)에서 스크롤을 내리면 product가 꽤 많습니다.
    이때 가장 신경 쓸 부분은 "**Download profiles**"와 "**Download objective analyses**"입니다.
    각 in-situ 자료의 profile이 필요하면 전자를, gridded 자료가 필요하면 후자를 다운로드하면 됩니다.

    The analysis files contain objective analyses produced **using optimal interpolation of the profile data for a particular month and a persistence forecast** background,
    on a regular **1° latitude/longitude grid** with **42 vertical levels**. To reduce storage space, not all latitudes are saved.
    The files also contain the analysis error standard deviation and an "observation influence" analysis, formed by setting all observation values to one and all background values to zero.
    Values close to one indicate that observations closely influenced the analysis, while zero indicates that no observations were available that month at that location.

    Reference: Good, S. A., M. J. Martin and N. A. Rayner, 2013. EN4: quality controlled ocean temperature and salinity profiles and monthly objective analyses with uncertainty estimates,
    *Journal of Geophysical Research: Oceans*, 118, 6704-6716, [doi:10.1002/2013JC009067](http://doi.org/10.1002/2013JC009067).

## Coriolis / CMEMS

<div class="grid cards" markdown>

-   **Coriolis Center**

    ---

    Coriolis bigdata 인프라에서 자료 탐색·선택·다운로드

    [:octicons-link-external-24: Coriolis: Find data](https://coriolis-93c5db.gitlab-pages.ifremer.fr/find-data.html)<br>
    [:octicons-download-24: Coriolis data selection](https://data-selection.odatis-ocean.fr/coriolis)<br>
    [:octicons-link-external-24: CORA (SEANOE)](https://www.seanoe.org/data/00351/46219/)

-   **CMEMS CORA (Delayed Mode)** · 0.5°, monthly · 1960-01-01 – 2024-06-01

    ---

    격자화된 수온·염분 objective analysis

    [:octicons-link-external-24: INSITU_GLO_PHY_TS_OA_MY_013_052](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_TS_OA_MY_013_052/description)

-   **CMEMS CORA (profiles)** · instantaneous, L2 · 1950-01-01 – 2021-12-31

    ---

    Argo, GOSUD, OceanSITES, World Ocean Database 등 주요 전 지구 관측망에서 수집한 자료

    [:octicons-link-external-24: INSITU_GLO_PHY_TS_DISCRETE_MY_013_001](https://data.marine.copernicus.eu/product/INSITU_GLO_PHY_TS_DISCRETE_MY_013_001/description)

-   **CMEMS In Situ dashboard**

    ---

    Copernicus 현장 관측 자료 대시보드

    [:octicons-link-external-24: marineinsitu.eu dashboard](http://www.marineinsitu.eu/dashboard/)

</div>

## Ship-based hydrography

<div class="grid cards" markdown>

-   **CCHDO**

    ---

    CLIVAR and Carbon Hydrographic Data Office. GO-SHIP, WOCE, CLIVAR 등 반복 관측 선박 CTD·hydrographic 자료 (WHP-Exchange, WOCE, netCDF)

    [:octicons-download-24: CCHDO](https://cchdo.ucsd.edu/)

-   **CLIVAR**

    ---

    Climate and Ocean: Variability, Predictability, and Change

    [:octicons-link-external-24: CLIVAR data access](https://www.clivar.org/resources/data/data-access)

-   **WOCE**

    ---

    1990년대 "state of the oceans"을 보여주는 전 지구 hydrographic survey

    [:octicons-link-external-24: WOCE Atlas](http://woceatlas.ucsd.edu/)<br>
    [:octicons-link-external-24: eWOCE](https://www.ewoce.org/data/index.html#Surface_Drifter_Data)<br>
    [:octicons-mark-github-16: sea-mat/woce-tools](https://github.com/sea-mat/woce-tools/tree/master)

-   **GO-SHIP**

    ---

    선택된 hydrographic section을 체계적으로 재관측하는 국제 프로그램

    [:octicons-link-external-24: US GO-SHIP hydromap](https://usgoship.ucsd.edu/hydromap/)<br>
    [:octicons-link-external-24: GO-SHIP Data Direct](https://www.go-ship.org/DataDirect.html) (사이트가 없어진 것으로 보임)

-   **JAS ADCP**

    ---

    Joint Archive for Shipboard ADCP

    [:octicons-link-external-24: JAS ADCP (UHSLC)](https://uhslc.soest.hawaii.edu/sadcp/)<br>
    [:octicons-download-24: Regional nc files](https://uhslc.soest.hawaii.edu/sadcp/region.html)

-   **GLODAPv2**

    ---

    전 지구 해양 탄소·화학 관측 자료 합성

    [:octicons-link-external-24: GLODAP](https://glodap.info/)<br>
    [:octicons-download-24: GLODAPv2.2023 (NOAA NCEI)](https://www.ncei.noaa.gov/access/ocean-carbon-acidification-data-system/oceans/GLODAPv2_2023/)

-   **SOOP**

    ---

    Ships Of Opportunity Program (VOS) 자료

    [:octicons-link-external-24: SOOP / VOS Program (NOAA NCEI)](https://www.ncei.noaa.gov/access/ocean-carbon-acidification-data-system/oceans/VOS_Program/index.html)

-   **Coastal DOM (CoastDOM v1)**

    ---

    연안 용존유기물(DOM) 농도 관측 전 지구 데이터베이스

    [:octicons-download-24: PANGAEA](https://doi.pangaea.de/10.1594/PANGAEA.964012)<br>
    [:octicons-book-24: ESSD (2024)](https://essd.copernicus.org/articles/16/1107/2024/)<br>
    [:octicons-link-external-24: Archimer](https://archimer.ifremer.fr/doc/00883/99506/) · [IOCCP news](https://www.ioccp.org/news/coastal-dom-database-coastdom-v1)

</div>

??? info "CCHDO programs"
    [WOCE](https://cchdo.ucsd.edu/search?q=WOCE) ·
    [GO-SHIP](https://cchdo.ucsd.edu/search?q=GO-SHIP) ·
    [SOCCOM](https://cchdo.ucsd.edu/search?q=SOCCOM) ·
    [USHYDRO](https://cchdo.ucsd.edu/search?q=USHYDRO) ·
    [CARINA](https://cchdo.ucsd.edu/search?q=CARINA) ·
    [DIMES](https://cchdo.ucsd.edu/search?q=DIMES) ·
    [ELLETT](https://cchdo.ucsd.edu/search?q=ELLETT)

    CCHDO also manages public and non-public CTD data for use by the global Argo and OceanSITES programs.

## Moorings & observing systems

<div class="grid cards" markdown>

-   **OceanSITES (TAO, TRITON etc.)**

    ---

    전 지구 장기 계류 관측망

    [:octicons-arrow-right-24: OceanSITES (TAO, TRITON etc.)](https://app.notion.com/p/daad6194d59183c2868801ea1ed84b9d){ .notion } <span class="date">[2024.11.27]</span>

-   **OSMC**

    ---

    Observing System Monitoring Center

    [:octicons-link-external-24: OSMC viewer](https://viz.pmel.noaa.gov/osmc/?variable=ztmp&color_by=platform_type)<br>
    [:octicons-link-external-24: OSMC](https://www.osmc.noaa.gov/)

-   **PMEL**

    ---

    Pacific Marine Environmental Laboratory 관측 자료

    [:octicons-link-external-24: PMEL Data Links](https://www.pmel.noaa.gov/data-links)<br>
    [:octicons-download-24: PMEL Observed Data (ERDDAP)](https://ferret.pmel.noaa.gov/pmel/erddap/info/index.html?page=1&itemsPerPage=1000)<br>
    [:octicons-link-external-24: PMEL Observed Data (LAS)](https://ferret.pmel.noaa.gov/pmel/las/)<br>
    [:octicons-link-external-24: Ocean Climate Stations](http://www.pmel.noaa.gov/ocs/data-overview) ← KEO, Papa, ARC<br>
    [:octicons-link-external-24: GTMBA (Global Tropical Moored Buoy Array)](http://www.pmel.noaa.gov/tao/jsdisplay/)<br>
    [:octicons-link-external-24: EcoFOCI Data](http://www.ecofoci.noaa.gov/efoci_data.shtml)

-   **RFROM**

    ---

    Random Forest Regression Ocean Maps (PMEL). profile 기반 **해양 열용량 아노말리(OHCA)**를 random forest로 매핑

    [:octicons-link-external-24: RFROM](https://www.pmel.noaa.gov/rfrom/)

-   **iQuam**

    ---

    In situ SST quality monitoring (NOAA STAR)

    [:octicons-link-external-24: iQuam](https://www.star.nesdis.noaa.gov/socd/sst/iquam/)

</div>

## Sea level (tide gauges)

<div class="grid cards" markdown>

-   **PSMSL**

    ---

    Permanent Service for Mean Sea Level

    [:octicons-download-24: PSMSL data](https://psmsl.org/data/)<br>
    [:octicons-link-external-24: GLOSS cluster map](https://psmsl.org/products/gloss/clustermap.html)

-   **GLOSS**

    ---

    Global Sea Level Observing System

    [:octicons-download-24: GLOSS data](https://gloss-sealevel.org/data)

-   **CSIRO Sea Level Data Repository**

    ---

    CSIRO 해수면 자료 저장소

    [:octicons-download-24: CSIRO sea level data](https://www.cmar.csiro.au/sealevel/sl_data_cmar.html)

</div>

??? note "Notion 첨부 파일 (이전 예정)"
    이미지: GLODAPv2, EN4 2개, OceanSITES 지도 및 TAO/TRITON 3개, Ocean Climate Stations, XBT 2개, PSMSL, GLOSS, SOOP, WOCE, US GO-SHIP, CMEMS In Situ
