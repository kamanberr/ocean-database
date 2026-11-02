# :material-arrow-decision: Current <span class="date">[2024.11.02]</span>

위성 기반 표층 해류 자료입니다. 고도계 기반 지형류, 전체 표층 해류, OSCAR 분석장을 정리했습니다.

## 고도계 기반 지형류

지형류 속도는 격자 SSH 자료와 함께 배포됩니다. [Sea Surface Height & Altimeter](ssh.md) 페이지를 참고하세요.

## 전 지구 전체 표층 해류

<div class="grid cards" markdown>

-   **COPERNICUS-GLOBCURRENT**

    ---

    전 지구 표층·15 m 전체 해류(지형류 + Ekman), multi-year 및 NRT

    [:octicons-link-external-24: MULTIOBS_GLO_PHY_MYNRT_015_003](https://data.marine.copernicus.eu/product/MULTIOBS_GLO_PHY_MYNRT_015_003/description)

-   **Global Ocean Current Database (GOCD)**

    ---

    NOAA NCEI의 현장 해류 관측 아카이브

    [:octicons-link-external-24: GOCD (NOAA NCEI)](https://www.ncei.noaa.gov/products/global-ocean-currents-database)

</div>

## OSCAR (Ocean Surface Current Analyses Real-time)

OSCAR ocean mixed layer velocities are calculated from satellite-sensed sea surface height gradients, ocean vector winds, and sea surface temperature gradients using a simplified physical model for geostrophy, Ekman, and thermal wind dynamics. Daily averaged surface currents are provided on a global 0.25 × 0.25 degree grid as an average over an assumed well-mixed top 30 m of the ocean from 1993 to present day.

OSCAR는 final, interim, NRT의 세 품질 등급으로 제공되며, 각각 약 1년, 1개월, 2일의 지연이 있습니다.

<div class="grid cards" markdown>

-   **OSCAR Final** · 0.25° · V2.0 · 1993-01-01 – 2022-08-05

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_FINAL_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_FINAL_V2.0)

-   **OSCAR Interim** · 0.25° · V2.0 · 2020-01-01 – present

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_INTERIM_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_INTERIM_V2.0)

-   **OSCAR Near Real Time** · 0.25° · V2.0 · 2021-01-01 – present

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_NRT_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_NRT_V2.0)

</div>

!!! tip "PO.DAAC에서 다운로드"
    원하는 영역·기간만 받는 방법은 [PO.DAAC MATLAB 다운로드 매뉴얼](podaac-manual.md)을 참고하세요.
