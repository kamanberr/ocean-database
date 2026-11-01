# :material-terrain: Bathymetry

전 지구 및 지역 수심 자료와, 이를 다운로드하고 처리하는 코드입니다.

??? tip "시각화 팁 · Visualization tip"
    어느 자료이건 bathymetry가 완벽하게 정확하거나 흠결 없이 깔끔하게 나오지는 않습니다.
    `pcolor` 함수와 높은 colormap level을 쓰면 꽤 이질적인 직선 형태가 종종 나타나며, 이는 해저 지형도를 시각화할 때 애로 사항이 됩니다.
    시각화에 앞서 MATLAB의 `griddata` 혹은 `interp2` 함수로 자료의 해상도를 낮추는 것도 차선책이 될 수 있습니다.

    No bathymetry dataset is perfectly accurate or entirely free of artifacts. With `pcolor` and high colormap levels,
    spurious straight lines often appear, which complicates the visualization of seafloor topography.
    As a workaround, MATLAB's `griddata` or `interp2` can be used to coarsen the data before plotting.

## Global

<div class="grid cards" markdown>

-   **GEBCO**

    ---

    꾸준히 버전을 업데이트하여 제공. **가장 최신 버전은 2024입니다.**

    [:octicons-download-24: GEBCO Gridded Bathymetry Data Download](https://download.gebco.net/)

-   **ETOPO 2022** · 30, 60 arc-second

    ---

    NOAA NCEI global relief model (ETOPO 1, 2, 5는 구버전)

    [:octicons-link-external-24: ETOPO Global Relief Model (NOAA NCEI)](https://www.ncei.noaa.gov/products/etopo-global-relief-model)<br>
    [:octicons-download-24: MATLAB 다운로드 코드](#matlab-download-script)

-   **SRTM15+**

    ---

    아래 MATLAB 툴박스로 원하는 지역을 다운로드

    [:octicons-download-24: MATLAB 다운로드 코드](#matlab-download-script)

-   **GMRT**

    ---

    Global Multi-Resolution Topography Data Synthesis

    [:octicons-link-external-24: GMRT](https://www.gmrt.org/)

-   **S2Shores** · 1 km, coastal

    ---

    Sentinel-2 wave inversion 기반 전 지구 연안 수심. AVISO+ 계정 필요

    [:octicons-arrow-right-24: Data access & references](#s2shores)

</div>

### MATLAB download script

ETOPO 2022, SRTM15+, S2Shores는 아래 MathWorks 툴박스를 설치하고 그 안에 있는 script를 사용하시면 됩니다.

- [:octicons-download-24: Bathymetry Download (ETOPO 2022, SRTM 15, S2Shores), MATLAB File Exchange](https://kr.mathworks.com/matlabcentral/fileexchange/173370-bathymetry-download-etopo-2022-srtm-15-s2shores)
- [:octicons-mark-github-16: GitHub: kamanberr/Ocean-Data-Download/Bathy_Down](https://github.com/kamanberr/Ocean-Data-Download/tree/main/Bathy_Down)

툴박스를 사용하시는 분들은 해당 MathWorks 페이지에서 **[Review → 별점]**을 달아 주시면 큰 보람이 될 것 같습니다. 감사합니다.

### S2Shores

??? info "Data access (AVISO+ credentials required)"
    - CNES AVISO FTP/SFTP access
        - FTP: `ftp-access.aviso.altimetry.fr:21`
        - SFTP: `ftp-access.aviso.altimetry.fr:2122`, path `/coastal_s2shores`
    - [CNES AVISO THREDDS Data Server](https://tds-odatis.aviso.altimetry.fr/thredds/catalog/L4P/dataset-s2shores-satellite-derived-shoreline-change.html)

??? info "References"
    - [Global 1-km Coastal Bathymetry from Sentinel-2 Wave Inversion using the Satellite-to-Shores (S2Shores) Toolbox (Scientific Data)](https://www.nature.com/articles/s41597-025-06402-w)
    - [S2Shores Documentation](https://s2shores.readthedocs.io/en/latest/)
    - [GitHub: CNES/S2Shores](https://github.com/CNES/S2Shores)
    - [Satellite-derived shoreline and nearshore bathymetry (Coastal Wiki)](https://www.coastalwiki.org/wiki/Satellite-derived_shoreline_and_nearshore_bathymetry)
    - [Hydroweb.next: Coastal Bathymetry](https://hydroweb.next.theia-land.fr/catalog/details/COASTAL_BATHYMETRY)

## Regional

<div class="grid cards" markdown>

-   **KHOA** (국립해양조사원)

    ---

    영해 경계 문제 때문에 대한민국 주변 해역에 대해서만 수심 자료를 처리한 것으로 보임

    [:octicons-link-external-24: KHOA 바다누리: 수심 자료](http://www.khoa.go.kr/oceangrid/gis/category/observe/observeSearch.do?type=EYS#none)<br>
    [:octicons-arrow-right-24: 읽기 코드 (MATLAB)](#khoa-bada)

-   **JODC** · 500 m

    ---

    Japan Oceanographic Data Center gridded bathymetry

    [:octicons-arrow-right-24: 500 m Gridded Bathymetry Data](https://app.notion.com/p/e50d6194d591827aaa8a81fb3d372206){ .notion }

-   **JTOPO30**

    ---

    일본 주변 해역 수심 (MIRC)

    [:octicons-link-external-24: MIRC JTOPO30](http://www.mirc.jha.jp/products/finished/JTOPO30/)

-   **IBCAO**

    ---

    International Bathymetric Chart of the Arctic Ocean

    [:octicons-link-external-24: IBCAO (NOAA NGDC)](https://www.ngdc.noaa.gov/mgg/bathymetry/arctic/arctic.html)

</div>

### KHOA BADA

??? example "Read BADA bathymetry (xyz) and grid it"

    ```matlab title="Read BADA bathymetry (xyz) and grid it"
    clc; clear; close all; % reset
    bathy = importdata("C:\Users\User\OneDrive\문서\MATLAB\BADA Ver.1.txt"); % load
    bedlat0 = bathy.data(:,1); bedlon0 = bathy.data(:,2); bed0 = bathy.data(:,3);

    lonlim = [129 133];   latlim = [35 38.5]; % set longitude, latitude range for interpolation
    bed = griddata(bedlon0, bedlat0, bed0, lonlim(1):0.01:lonlim(end),(latlim(1):0.01:latlim(end))'); bed=bed';
    bed=bed*(-1); bedlon = lonlim(1):0.01:lonlim(end); bedlat = latlim(1):0.01:latlim(end);
    save bathy_bada.mat bedlon bedlat bed; % save
    ```

## Model grid: HYCOM 3.1 topo

사용하는 HYCOM experiment 버전 디렉터리 안의 `topo` 폴더에 접근하여 `depth` 파일을 다운로드합니다.

- [:octicons-download-24: https://data.hycom.org/datasets/](https://data.hycom.org/datasets/)
- 예시: [GLBb0.08/expt_93.0/topo/](https://data.hycom.org/datasets/GLBb0.08/expt_93.0/topo/),
  [GLBy0.08/expt_93.0/topo/](https://data.hycom.org/datasets/GLBy0.08/expt_93.0/topo/)

!!! tip
    사용하는 HYCOM 버전(GLBb, GLBv, GLBy)에 맞는 depth 파일을 쓰면 HYCOM의 lon/lat 격자와 정확히 일치하므로 보간이 필요 없습니다.
    Layer thickness 정보도 같은 폴더의 `regional.grid` 파일에 있는 것으로 보입니다.

??? example "Convert curvilinear grid into regular grid (GLBb)"

    ```matlab title="Convert curvilinear grid into regular grid"
    clc; clear; close all;

    % Curvilinear grid
    hycbathy = "Bathy\depth_GLBb0.08_09m11.nc";
    % ncdisp(hycbathy)
    hyclon = double(ncread(hycbathy, 'Longitude'));
    hyclat = double(ncread(hycbathy, 'Latitude'));
    hycdepth = double(ncread(hycbathy, 'depth'));

    % Set the lon and lat range
    lo = [117, 128]; la = [32 42];

    % New query grid
    [xq,yq] = meshgrid(lo(1):0.08:lo(2), la(1):0.08:la(2));

    % Regular grid
    newdep = griddata(hyclon,hyclat,hycdepth,xq,yq);
    ```

## Coastline, boundary & tools

<div class="grid cards" markdown>

-   **Global Coastline**

    ---

    해안선 자료 (GSHHS 등)

    [:octicons-link-external-24: Shoreline / Coastline Resources (NOAA NCEI)](https://www.ncei.noaa.gov/products/shoreline-coastline-resources)<br>
    [:octicons-download-24: GSHHS (NOAA NGDC)](https://www.ngdc.noaa.gov/mgg/shorelines/data/gshhs/)

-   **Maritime Boundaries (EEZ etc.)**

    ---

    EEZ, LME 경계와 MATLAB 그리기 코드

    [:octicons-arrow-right-24: Boundary](boundary.md)

-   **Area on sphere / ellipsoid**

    ---

    구면·타원체 좌표에서 폴리곤 면적 계산 (MATLAB Mapping Toolbox)

    [:octicons-link-external-24: `areaint` documentation](https://kr.mathworks.com/help/map/ref/areaint.html)

</div>

??? note "Notion 첨부 파일 (이전 예정)"
    - GEBCO 2023 subsets: `gebco_2023_n41.0_s24.0_w118.0_e130.0_YECS.nc`, `gebco_2023_n41.0_s31.0_w117.0_e128.0_YS.nc`,
      `gebco_2023_n55.0_s30.0_w125.0_e145.0_EJS.nc`, `gebco_2023_n55.0_s20.0_w115.0_e145.0_KOREA.nc`, 미리보기 이미지 1개
    - Example of bathymetry: `Bathy_ETOPO_2022_60arc_EastAsia.jpg`
    - KHOA reference: `수심측량자료를_사용한_해양수치모델_전용_수심_데이터_제작_2019_JKSCOE.pdf`, 미리보기 이미지 2개
    - HYCOM: `depth_GLBb0.08_09m11.nc`, `depth_GLBv0.08_09m11.nc`, `depth_GLBy0.08_09m11.nc`, 격자 비교 이미지 1개
