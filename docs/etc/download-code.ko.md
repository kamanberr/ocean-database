# :material-download-box-outline: Data download with code <span class="date">[2026.09.21]</span>

자료 종류별 다운로드 코드입니다.

!!! info "Toolbox 버전 확인"
    제가 작성하는 코드를 비롯한 대부분의 공개된 toolbox들은 계속해서 업데이트됩니다.
    종종 해당 toolbox의 버전을 확인하고 업데이트하시기를 권합니다.

## Numerical model

<div class="grid cards" markdown>

-   **HYCOM: ESPC, GOFS 3.1** · MATLAB

    ---

    영역·기간·수심을 지정하여 HYCOM 산출물 다운로드 (MAT 또는 NetCDF)

    [:octicons-arrow-right-24: HYCOM 다운로드 방법 (ESPC, GOFS 3.1)](../whole-ocean/hycom-download.md)

</div>

## Satellite

<div class="grid cards" markdown>

-   **GHRSST: OSTIA, MUR, OISST** · MATLAB

    ---

    PO.DAAC과 NOAA PSL에서 지역·기간을 지정하여 다운로드

    [:octicons-download-24: SST Downloader: GHRSST L4 (11 datasets) & OISST (MATLAB File Exchange)](https://kr.mathworks.com/matlabcentral/fileexchange/173480-sst-downloader-ghrsst-l4-po-daac-and-oisst-subset-by-area-and-period)

-   **AMSR-2**

    ---

    마이크로파 복사계 자료 다운로드

    [:octicons-arrow-right-24: AMSR-2 다운로드](../whole-ocean/satellite/microwave.md)

-   **SAR**

    ---

    SAR 자료 다운로드

    [:octicons-arrow-right-24: SAR 다운로드](../whole-ocean/satellite/sar.md)

-   **GOCI-II** · Python

    ---

    GOCI-II 자료 다운로드

    [:octicons-arrow-right-24: GOCI-II Python 다운로드](../whole-ocean/satellite/goci.md)

</div>

## Bathymetry

<div class="grid cards" markdown>

-   **ETOPO 2022 (30, 60 arc) & SRTM15+** · MATLAB

    ---

    지역을 지정하여 수심 자료 다운로드

    [:octicons-download-24: Bathymetry Download (ETOPO 2022, SRTM15+, S2Shores), MATLAB File Exchange](https://kr.mathworks.com/matlabcentral/fileexchange/173370-bathymetry-download-etopo-2022-srtm-15-s2shores)

</div>

!!! note ""
    툴박스를 사용하시는 분들은 해당 MathWorks 페이지에서 **[Review → 별점]**을 달아 주시면 큰 보람이 될 것 같습니다. 감사합니다.

## Using R

<div class="grid cards" markdown>

-   **OISST, CCI, OSTIA, GLORYS** · R

    ---

    R로 해양 환경 자료를 다운로드하는 방법 (The Ocean Code 블로그)

    [:octicons-link-external-24: Downloading environmental data in R](https://theoceancode.netlify.app/post/dl_env_data_r/)

-   **HYCOM, GHRSST, OISST, WOA** · R

    ---

    HMMoce 패키지의 다운로드 함수

    [:octicons-mark-github-16: GitHub: cran/HMMoce (R)](https://github.com/cran/HMMoce/tree/master/R)

</div>
