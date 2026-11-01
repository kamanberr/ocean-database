# :material-weather-hurricane: Typhoon & Hurricane

태풍·허리케인 best track, 위성 영상, 현장 관측 자료 모음입니다. <span class="date">[2024.12.04]</span>

## Best track

<div class="grid cards" markdown>

-   **IBTrACS** (NOAA NCEI)

    ---

    International Best Track Archive for Climate Stewardship. 여러 기관의 best track 통합 자료

    [:octicons-download-24: IBTrACS](https://www.ncei.noaa.gov/products/international-best-track-archive)

-   **JTWC** (미국 합동태풍경보센터)

    ---

    Joint Typhoon Warning Center, Western Pacific

    [:octicons-link-external-24: JTWC](https://www.metoc.navy.mil/jtwc/jtwc.html?western-pacific)

-   **KMA** (기상청)

    ---

    기상자료개방포털 태풍 자료

    [:octicons-download-24: KMA 태풍 정보](https://data.kma.go.kr/data/typhoonData/typInfoTYList.do?pgmNo=689)

-   **JMA** (일본 기상청)

    ---

    RSMC Tokyo best track data

    [:octicons-download-24: JMA RSMC Best Track](https://www.jma.go.jp/jma/jma-eng/jma-center/rsmc-hp-pub-eg/besttrack.html)

</div>

??? example "MATLAB: IBTrACS에서 USA agency 정보 읽기"

    ```matlab title="Read TYPHOON data (USA agency)"
    %% Read TYPHOON data (USA data)

    clc; clear; close all;

    % recommend to use "\\" not "\" in file path.
    fnm = "C:\\Users\\MATLAB\\Typhoon_IBTrACS.WP.v04r00.nc";

    soulik = load_typhoon_data(fnm, 'SOULIK', 2018);
    rumbia = load_typhoon_data(fnm, 'RUMBIA', 2018);

    save("Typhoon_YS_2018.mat", "soulik","rumbia")


    % FUNCTION ================================================================
    function tph = load_typhoon_data(fnm, typhoon_name, typhoon_year)
    tph = struct;

    tname = deblank(string(ncread(fnm, 'name')'));
    time = datetime(1858,11,17,00,00,00) + days(ncread(fnm, 'time'));

    % indexing
    idname = strcmp(tname, typhoon_name);
    idyear = year(time(1,:)) == typhoon_year;
    % nameid_noname = strcmp(tname, 'NOT_NAMED');  % except 'no-name'

    idtyphoon = find(all([idname,idyear'], 2));

    % you could modify the variable list below.
    usa_lat = ncread(fnm, 'usa_lat');
    usa_lon = ncread(fnm, 'usa_lon');
    usa_status = reshape(string(reshape(ncread(fnm, 'usa_status'), 2, [], 1)'), 360,[]);
    usa_wind = ncread(fnm, 'usa_wind');
    usa_pres = ncread(fnm, 'usa_pres');
    usa_sshs = ncread(fnm, 'usa_sshs');
    usa_r34 = ncread(fnm, 'usa_r34');
    usa_r50 = ncread(fnm, 'usa_r50');
    usa_r64 = ncread(fnm, 'usa_r64');

    % tnum = ncread(fnm, 'number');
    % tusa_agency = ncread(fnm, 'usa_agency');
    % tusa_atcf_id = ncread(fnm, 'usa_atcf_id');
    % tusa_record = squeeze(ncread(fnm, 'usa_record'));
    % tusa_poci = ncread(fnm, 'usa_poci');
    % tusa_roci = ncread(fnm, 'usa_roci');
    % tusa_rmw = ncread(fnm, 'usa_rmw');
    % tusa_eye = ncread(fnm, 'usa_eye');
    % tusa_gust = ncread(fnm, 'usa_gust');
    % tusa_seahgt = ncread(fnm, 'usa_seahgt');
    % tusa_searad = ncread(fnm, 'usa_searad');

    tph.time = time(:,idtyphoon);
    tph.lat = usa_lat(:,idtyphoon);
    tph.lon = usa_lon(:,idtyphoon);
    tph.status = usa_status(:,idtyphoon);
    tph.wind = usa_wind(:,idtyphoon);
    tph.pres = usa_pres(:,idtyphoon);
    tph.sshs = usa_sshs(:,idtyphoon);
    tph.r34 = usa_r34(:,:,idtyphoon);
    tph.r50 = usa_r50(:,:,idtyphoon);
    tph.r64 = usa_r64(:,:,idtyphoon);
    end
    ```

??? info "IBTrACS (WP v04r00) USA agency 변수 목록 (MATLAB `ncdisp` 결과 요약)"

    | Variable | Dimensions | Description | Units |
    |---|---|---|---|
    | `number` | storm | Storm number (within season) | 1 |
    | `name` | char128, storm | Name of system (may combine names from different agencies) | |
    | `time` | date_time, storm | Nominally 3-hourly; extra positions near landfall, max intensity, etc. | days since 1858-11-17 00:00:00 |
    | `usa_agency` | char32, date_time, storm | Source dataset for U.S. data | |
    | `usa_atcf_id` | char32, date_time, storm | ATCF ID for the storm | |
    | `usa_lat`, `usa_lon` | date_time, storm | Latitude / Longitude (U.S. Agency) | degrees_north / degrees_east |
    | `usa_record` | char1, date_time, storm | Storm record type (C, G, I, L, P, R, S, T, W) | |
    | `usa_status` | char2, date_time, storm | Storm status (TD, TS, TY, ST, HU, EX 등) | |
    | `usa_wind` | date_time, storm | Maximum sustained wind speed | kts |
    | `usa_pres` | date_time, storm | Minimum central pressure | mb |
    | `usa_sshs` | date_time, storm | Saffir-Simpson Hurricane Wind Scale category (-5 to 5) | 1 |
    | `usa_r34`, `usa_r50`, `usa_r64` | quadrant, date_time, storm | Radius of 34 / 50 / 64 knot winds | nmile |
    | `usa_poci` | date_time, storm | Pressure of outermost closed isobar (not best tracked) | mb |
    | `usa_roci` | date_time, storm | Radius of outermost closed isobar (not best tracked) | nmile |
    | `usa_rmw` | date_time, storm | Radius of maximum winds (not best tracked) | nmile |
    | `usa_eye` | date_time, storm | Eye diameter (not best tracked) | nmile |
    | `usa_gust` | date_time, storm | Maximum reported wind gust from a US agency | kts |
    | `usa_seahgt` | date_time, storm | Wave height for given radii | ft |
    | `usa_searad` | quadrant, date_time, storm | Radial extent of given sea height | nmile |

    **`usa_record`**: C – Closest approach to a coast, not followed by a landfall · G – Genesis ·
    I – An intensity peak in terms of both pressure and wind · L – Landfall · P – Minimum in central pressure ·
    R – Additional detail on intensity during rapid changes · S – Change of status · T – Additional detail on the track ·
    W – Maximum sustained wind speed

    **`usa_status`**: DB disturbance, TD tropical depression, TS tropical storm, TY typhoon, ST super typhoon,
    TC tropical cyclone, HU/HR hurricane, SD subtropical depression, SS subtropical storm, EX extratropical,
    PT post tropical, IN inland, DS dissipating, LO low, WV tropical wave, ET extrapolated, MD monsoon depression, XX unknown

- [:octicons-link-external-24: Color palette (ColorsWall #3113)](https://colorswall.com/palette/3113)

## Satellite

<div class="grid cards" markdown>

-   **CIRA Satellite Library**

    ---

    태풍 위성 영상 라이브러리 (Colorado State Univ.)

    [:octicons-link-external-24: CIRA SatLib](https://satlib.cira.colostate.edu/)

-   **IFREMER CyclObs**

    ---

    L-band radiometer와 C-band SAR로 추정한 **ocean surface wind speed**

    [:octicons-link-external-24: CyclObs (tropical)](https://cyclobs.ifremer.fr/app/tropical)

-   **NHC / CPHC Satellite**

    ---

    National Hurricane Center and Central Pacific Hurricane Center 위성 영상

    [:octicons-link-external-24: NHC Satellite](https://www.nhc.noaa.gov/satellite.php)

</div>

??? info "CyclObs 자료 인용 방법"
    If you have to use SAR images from CyclObs, please be sure to credit Ifremer. Please include the following citation:
    "This image/product was obtained from Ifremer/Cyclobs and produced with SAR wind processor co-developped by IFREMER and CLS"

## NOAA hurricane observations

<div class="grid cards" markdown>

-   **AOML Observational Instruments**

    ---

    NOAA AOML 관측 장비 소개

    [:octicons-link-external-24: Observational Instruments](https://www.aoml.noaa.gov/observational-instruments/)<br>
    [:octicons-link-external-24: AOML Hurricane Data Products](https://www.aoml.noaa.gov/data-products/#hurricanedata)

-   **AOML Hurricane Field Observation**

    ---

    항공기 등 허리케인 현장 관측 자료

    [:octicons-download-24: Hurricane Field Data](https://www.aoml.noaa.gov/hrd/data_sub/hurr.html)

-   **AOML Hurricane Radar Data**

    ---

    허리케인 레이더 자료

    [:octicons-download-24: Radar Data](https://www.aoml.noaa.gov/hrd/data_sub/radar.html)

-   **NOAA Saildrone Hurricane Observations**

    ---

    무인 해상 드론(Saildrone) 허리케인 관측

    [:octicons-link-external-24: PMEL Saildrone Hurricane](https://www.pmel.noaa.gov/saildrone-hurricane/)

-   **Local Observations and Impacts from Past Tropical Cyclones**

    ---

    NWS Key West 과거 열대저기압 관측·피해 요약

    [:octicons-link-external-24: Tropical Event Summary](https://www.weather.gov/key/TropicalEventSummary)

</div>

??? note "Notion 첨부 파일 (이전 예정)"
    `khanun_2.gif` (CIRA 위성 영상 예시), NOAA hurricane observation 이미지 2개
