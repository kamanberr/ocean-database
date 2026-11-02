# :material-flower-poppy: Ocean Color <span class="date">[2026.10.29]</span>

Chl-a 등을 관측하는 해색 위성 자료입니다.

!!! tip "빠른 지역 다운로드"
    공식 사이트에서 원하는 지역·기간만 빠르게 받는 방법을 단계별로 정리해 두었습니다:
    [해색 위성 자료, 원하는 지역과 기간만 다운로드](ocean-color-download.md) <span class="date">[2024.09.28]</span>

## 전 지구 자료

<div class="grid cards" markdown>

-   **OC-CCI**

    ---

    Ocean Colour Climate Change Initiative. 다중 센서 병합 장기 기후 자료

    [:octicons-link-external-24: OceanColour - CCI](https://www.oceancolour.org/)

-   **NASA Ocean Color**

    ---

    SeaWiFS, MODIS, VIIRS 등 NASA 해색 자료

    [:octicons-arrow-right-24: 지역·기간 다운로드 매뉴얼](ocean-color-download.md)

-   **CMEMS GlobColour L3** · daily

    ---

    1997-09-04 – present · 4 km · Level 3

    [:octicons-link-external-24: OCEANCOLOUR_GLO_BGC_L3_MY_009_103](https://data.marine.copernicus.eu/product/OCEANCOLOUR_GLO_BGC_L3_MY_009_103/description)

-   **CMEMS GlobColour L4** · daily, monthly

    ---

    1997-09-01 – present · 4 km · Level 4, **daily gap-free** (cloud-free 내삽)

    [:octicons-link-external-24: OCEANCOLOUR_GLO_BGC_L4_MY_009_104](https://data.marine.copernicus.eu/product/OCEANCOLOUR_GLO_BGC_L4_MY_009_104/description)

-   **GlobColour (ACRI-ST)**

    ---

    GlobColour 원 제공처

    [:octicons-link-external-24: GlobColour - Home](https://hermes.acri.fr/index.php)

-   **Climate Data Store**

    ---

    Ocean colour daily data, 1997 – present

    [:octicons-link-external-24: CDS: satellite-ocean-colour](https://cds.climate.copernicus.eu/datasets/satellite-ocean-colour?tab=overview)

</div>

??? info "CMEMS GlobColour의 입력 센서"
    SeaWiFS, MODIS, MERIS, VIIRS-SNPP & JPSS1, OLCI-S3A & S3B for the **"multi"** products,
    and S3A & S3B only for the **"olci"** products.

## 정지궤도: GOCI & GOCI-II

- [GOCI & GOCI-II 다운로드 경로와 Python 코드](goci.md)
- 자료 배포 기관은 [Korea Satellite Centers](korea-centers.md) 참고
