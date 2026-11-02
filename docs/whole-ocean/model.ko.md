# :material-monitor: Model <span class="date">[2025.12.31]</span>

널리 쓰이는 수치 모형 산출물(재분석, 분석·예보)을 다운로드하는 방법을 정리했습니다.

!!! tip "모델 자료를 쓰기 전에"
    직접 수치 모형을 설계해서 돌리지 못하더라도, 기존에 배포되는 여러 수치 모형 산출물로 좋은 연구를 하는 것이 가능합니다.
    다만 해역마다 실제 해양을 잘 모사하는 모형이 다르기 때문에, 본격적인 분석에 앞서 **실측 자료와 비교·평가하는 단계가 필수**입니다.
    선행 연구가 많으니 직접 찾아보고 참고하세요.

    개인적으로는 시공간 해상도가 뛰어나고 자료 동화를 수행하는 **HYCOM과 GLORYS**를 애용합니다.
    GLORYS, HYCOM 모두 조석 성분이 포함되지 않습니다. 다만 2024-08-10 이후 제공되는 HYCOM ESPC product에는 조석이 포함된다고 합니다.

## Global reanalysis & analysis

<div class="model-card" markdown>

### HYCOM

자료 동화 기반 전 지구 해양 모형. 2024-08-10 이후 ESPC product는 조석 포함

[:octicons-arrow-right-24: HYCOM 다운로드 방법 (MATLAB: ESPC, GOFS 3.1, 이전 버전)](hycom-download.md)<br>
[:octicons-link-external-24: Tidal Analysis of ESPC-D-V02 (HYCOM forum)](https://groups.google.com/a/hycom.org/g/forum/c/-cZVLj9f5d0)

</div>

<div class="model-card" markdown>

### GLORYS12v1

0.083° · daily/monthly · 1993-01-01 – (almost) present
{ .spec }

CMEMS 전 지구 재분석 (GLOBAL_MULTIYEAR_PHY_001_030)

[:octicons-link-external-24: GLOBAL_MULTIYEAR_PHY_001_030](https://data.marine.copernicus.eu/product/GLOBAL_MULTIYEAR_PHY_001_030/description)

</div>

<div class="model-card" markdown>

### GLO12v4

0.083° · hourly/daily/monthly · 2022-06-01 – forecast (+10 d)
{ .spec }

Global Ocean Physics Analysis and Forecast. 제공 기간은 짧지만 시간 해상도가 높고 변수가 많음

[:octicons-link-external-24: GLOBAL_ANALYSISFORECAST_PHY_001_024](https://data.marine.copernicus.eu/product/GLOBAL_ANALYSISFORECAST_PHY_001_024/description)

</div>

<div class="model-card" markdown>

### GREP

0.25° · daily/monthly · 1993-01-01 – 2023-12-31
{ .spec }

Global Ocean Ensemble Physics Reanalysis. 여러 모형의 ensemble이며, 구성 모형 자료도 같은 링크에서 다운로드 가능

[:octicons-link-external-24: GLOBAL_MULTIYEAR_PHY_ENS_001_031](https://data.marine.copernicus.eu/product/GLOBAL_MULTIYEAR_PHY_ENS_001_031/description)

<figure markdown="span">
  ![GREP 구성 모형 표](../assets/whole-ocean/model/grep_member_models_table.png){ loading=lazy }
  <figcaption>GREP 구성 모형 표</figcaption>
</figure>

</div>

<div class="model-card" markdown>

### ORAS5

ECMWF Ocean ReAnalysis System 5 (Climate Data Store)

[:octicons-link-external-24: CDS: reanalysis-oras5](https://cds.climate.copernicus.eu/datasets/reanalysis-oras5?tab=overview)

</div>

<div class="model-card" markdown>

### NCEP GODAS

monthly · 1980-01 – recent (~2 months delay)
{ .spec }

NOAA/NCEP 다층 해양 분석

[:octicons-download-24: GODAS (NOAA PSL)](https://www.psl.noaa.gov/data/gridded/data.godas.html)<br>
[:octicons-link-external-24: GODAS (NOAA CPC)](https://www.cpc.ncep.noaa.gov/products/GODAS/)

??? info "NCEP products (NOAA PSL)"

    | Product | Description |
    |---|---|
    | [NCEP GDAS](https://www.psl.noaa.gov/data/gridded/data.ncep.html) | NCEP's twice-daily global analysis at 2.5° resolution on pressure levels, a product of its operational forecast system |
    | [NCEP GODAS](https://www.psl.noaa.gov/data/gridded/data.godas.html) | High-resolution multi-level ocean analysis from NOAA/NCEP |
    | [NCEP NARR](https://www.psl.noaa.gov/data/gridded/data.narr.html) | High-resolution combined model and assimilated dataset, 1979 – near present, 8-times daily, daily, and monthly on a Northern Hemisphere Lambert Conformal Conic grid ([PSL NARR page](https://www.psl.noaa.gov/data/narr/)) |
    | [NCEP-NCAR Reanalysis 1](https://www.psl.noaa.gov/data/gridded/data.ncep.reanalysis.html) | 4x daily, daily, and monthly atmospheric model output, 1948 – near present ([PSL R1 page](https://www.psl.noaa.gov/data/reanalysis/reanalysis.shtml)) |
    | [NCEP/DOE Reanalysis II](https://www.psl.noaa.gov/data/gridded/data.ncep.reanalysis2.html) | Improved version of Reanalysis 1 with fixed errors and updated physical parameterizations |

</div>

<div class="model-card" markdown>

### ECCO

관측 자료에 최소제곱 방식으로 맞춘 free-running 해양 모형 해 (state estimate)

[:octicons-link-external-24: ECCO products](https://www.ecco-group.org/products.htm)<br>
[:octicons-download-24: ECCO V4r4 T/S monthly, llc90 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/ECCO_L4_TEMP_SALINITY_LLC0090GRID_MONTHLY_V4R4)<br>
[:octicons-link-external-24: Northwest Pacific State Estimation (Scripps)](https://www.ecco.ucsd.edu/nwpac.html)

</div>

<div class="model-card" markdown>

### SODA

Simple Ocean Data Assimilation

[:octicons-link-external-24: SODA (UMD)](https://soda.umd.edu/)<br>
[:octicons-link-external-24: Climate Data Guide: SODA](https://climatedataguide.ucar.edu/climate-data/soda-simple-ocean-data-assimilation)<br>
[:octicons-link-external-24: UMD AOSC physical oceanography](https://aosc.umd.edu/research/air-sea-interaction-and-physical-oceanography)

</div>

<div class="model-card" markdown>

### OFES2

0.1° · 76°S–76°N · 1958-01 – 2016-12
{ .spec }

자료 동화 없음. 105 levels (최대 7500 m), JRA55-do forcing, M2·K1 조석 포함

[:octicons-link-external-24: OFES2 (JAMSTEC)](https://www.jamstec.go.jp/ofes/ofes2.html)

??? quote "OFES2 description (from a published study)"
    We mainly adopt monthly variables output from OFES2 (Sasaki et al. 2020) to examine the long-term changes of the winter circulation in the Yellow Sea.
    OFES2 assimilates no observations and provides dynamically consistent variables covering the global ocean except the polar regions (76°S‒76°N)
    with a horizontal resolution of 0.1° and spanning from January 1958 to December 2016. The bottom topography in OFES2 is constructed with partial bottom cells
    using the bathymetry dataset of 1 arc-minute global relief model of Earth's surface (ETOPO1; Amante and Eakins 2009). The number of vertical levels is 105
    with a maximum depth of 7500 m. The thickness of each layer is 5 m within the upper 100 m and increases to 300 m in the bottom layer.
    There are 20 levels within the upper 100 m and 55 levels within the upper 500 m. The 3-hourly JRA55-do atmosphere dataset is used for sea surface atmospheric forcing.
    Constant barotropic tidal currents of M2 and K1 generated by the FES2012 tidal model (Stammer et al. 2014) are used as the largest semidiurnal and diurnal tidal constituents.
    Note that tidal processes are of vital importance in shaping the three-dimensional structures of ocean circulation and ecosystem in the global shelf seas
    (Simpson and Sharples 2012; Timko et al. 2019; Wu et al. 2023a, b, 2025). Including tides and with higher horizontal and vertical resolutions,
    OFES2 could give more accurate and detailed three-dimensional responses of the water masses and circulation to climate variabilities and changes
    than other available ocean products in the Yellow Sea (Li et al. 2024).

    Source: [The poleward expansion of the Hadley Cell has weakened the winter circulation in a midlatitude semi-enclosed shelf sea over the past six decades](https://doi.org/10.1007/s00382-025-07774-w)

</div>

<div class="model-card" markdown>

### BRAN2020

Bluelink ReANalysis (CSIRO)

[:octicons-download-24: TDS Catalog (NCI)](https://thredds.nci.org.au/thredds/catalog/gb6/BRAN/BRAN2020/catalog.html)<br>
[:octicons-link-external-24: Bluelink reanalysis](https://research.csiro.au/bluelink/global/reanalysis/)

</div>

## Regional models

<div class="model-card" markdown>

### FORA-WNP30

1982–2016 · eddy-resolving
{ .spec }

4D-Var Ocean ReAnalysis for the Western North Pacific. 최근 30여 년 북서태평양을 eddy 해상도로 다룬 최초의 자료

[:octicons-download-24: TDS Catalog (JAMSTEC)](https://www.godac.jamstec.go.jp/jagdas/catalog/fora/catalog.html)<br>
[:octicons-link-external-24: FORA-WNP30](https://www.godac.jamstec.go.jp/fora/e/index.html)

</div>

<div class="model-card" markdown>

### JCOPE2M

1993-01-01 – present · 10.5–62°N, 108–180°E
{ .spec }

Japan Coastal Ocean Predictability Experiment. 이메일 신청 후 ftp로 제공 (Fortran binary 또는 NetCDF)

[:octicons-link-external-24: JCOPE data distribution](https://www.jamstec.go.jp/jcope/htdocs/e/distribution/#conditions%20of%20use)

??? info "How to request JCOPE2M reanalysis data"
    Application Laboratory freely distributes JCOPE2M reanalysis data to any interested persons.
    If you accept the [conditions of data use](https://www.jamstec.go.jp/jcope/htdocs/e/distribution/#conditions%20of%20use),
    send an e-mail describing your order: time range (maximum period: 1993-01-01 – present; 2 TB+),
    spatial range (maximum: 10.5–62°N, 108–180°E), and variables (sea surface height, north-south velocity, east-west velocity,
    potential temperature, salinity, heat flux at sea surface). They will provide the URL of an ftp site for downloading your data
    (Fortran binary or NetCDF) with [a README document](https://www.jamstec.go.jp/jcope/htdocs/e/distribution/README.e.txt).

    Contact: jcope (at) jamstec.go.jp

</div>

<div class="model-card" markdown>

### CORA 1.0-NWP

China Ocean ReAnalysis. 중국 연안 및 인근 해역 지역 재분석

[:octicons-link-external-24: CMOC China product service](https://www.cmoc-china.cn/pages/productService.html)<br>
[:octicons-download-24: NMDIS data](https://mds.nmdis.org.cn/pages/dataViewDetail.html?dataSetId=48)<br>
[:octicons-download-24: 海洋科学大数据中心](https://msdc.qdio.ac.cn/data/metadata-special-detail?id=1465896069408837633&otherId=1465896069547249665)

??? info "References"
    - [Han et al. (2011), Adv. Atmos. Sci.](https://link.springer.com/article/10.1007/s00376-010-9184-2)
    - [ScienceDirect article](https://www.sciencedirect.com/science/article/pii/S1674283420300234#ec-research-data)
    - [Interannual to Interdecadal Variability of the Southern Yellow Sea Cold Water Mass and Establishment of "Forcing Mechanism Bridge" (JMSE)](https://www.mdpi.com/2077-1312/9/12/1316)

</div>

<div class="model-card" markdown>

### Arctic: CMEMS

Arctic tidal analysis (15-min, 3 km, since 2017-12-19, 53–90°N) 및 TOPAZ 재분석·예보

[:octicons-link-external-24: Arctic Ocean Tidal Analysis and Forecast](https://data.marine.copernicus.eu/product/ARCTIC_ANALYSISFORECAST_PHY_TIDE_002_015/description)<br>
[:octicons-link-external-24: TOPAZ: Arctic Ocean Physics Reanalysis](https://data.marine.copernicus.eu/product/ARCTIC_MULTIYEAR_PHY_002_003/description)<br>
[:octicons-link-external-24: TOPAZ: Arctic Ocean Physics Analysis and Forecast](https://data.marine.copernicus.eu/product/ARCTIC_ANALYSISFORECAST_PHY_002_001/description)

</div>

## Tide & climate models

<div class="model-card" markdown>

### HRET14: baroclinic tide

M2, S2, N2, K1, O1 내부 조석의 해수면 높이·표층 유속 조화 상수 (Zaron & Elipot)

[:octicons-link-external-24: BAROCLINIC_HRET14 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/BAROCLINIC_HRET14)<br>
[:octicons-download-24: Files](https://cmr.earthdata.nasa.gov/virtual-directory/collections/C2935657850-POCLOUD/temporal/1993/01/01)

</div>

<div class="model-card" markdown>

### CMIP6

Coupled Model Intercomparison Project Phase 6 (ESGF)

[:octicons-download-24: ESGF CMIP6](https://esgf-node.llnl.gov/projects/cmip6/)

</div>

<div class="model-card" markdown>

### CESM2

Community Earth System Model version 2

[:octicons-link-external-24: CESM2 (NCAR)](https://www.cesm.ucar.edu/models/cesm2)

</div>
