# :material-code-braces: Useful MATLAB Code <span class="date">[2026.09.21]</span>

해수 물성 계산 toolbox와 격자 자료 처리 코드입니다.

## Sea water toolbox

<div class="grid cards" markdown>

-   **TEOS-10 (GSW)**

    ---

    Gibbs SeaWater Oceanographic Toolbox. GitHub의 툴박스는 공식 사이트에서 제공하는 것과 동일합니다.

    [:octicons-download-24: TEOS-10 software](https://www.teos-10.org/software.htm)<br>
    [:octicons-mark-github-16: GitHub: TEOS-10/GSW-Matlab](https://github.com/TEOS-10/GSW-Matlab)

-   **Properties of seawater (SIO 210)**

    ---

    UCSD SIO 210 수업의 해수 물성 MATLAB 코드

    [:octicons-link-external-24: ppsw_matlab (UCSD)](http://sam.ucsd.edu/sio210/propseawater/ppsw_matlab/ppsw_matlab.htm)

-   **SEA-MAT**

    ---

    해양학용 MATLAB 툴 모음

    [:octicons-link-external-24: SEA-MAT](https://sea-mat.github.io/sea-mat/)

</div>

## Extract / Convert grid

### Extract specific area from global data

??? example "Extract specific area from global data"

    ```matlab title="Extract specific area from global data"
    %% Extract the data in specific area from Global data.

    % Edit ==================================

    % specific area range where you want.
    lo = [117, 130]; la = [23 43];

    % allocate the variables of global or larger area.
    originlon = ?;
    originlat = ?
    originVar = ?;

    % You don't need to edit below. =======================================
    xstart=knnsearch(originlon, lo(1)); xend=knnsearch(originlon, lo(2));
    ystart=knnsearch(originlat, la(1)); yend=knnsearch(originlat, la(2));

    newlon = originlon( xstart:xend );
    newlat = originlat( ystart:yend );
    newVar = originVar( xstart:xend ,  ystart:yend );

    % Now you just use "newlon", "newlat", "newVar"
    ```

### Extract value at a specific point from a curved grid

??? example "Extract value at a specific point from a curved grid"

    ```matlab title="Extract value at a specific point from a curved grid"
    clc; clear; close all;

    % Edit ================================================================

    % load data (Curved Grid)
    fnm = 'somxl030_control_monthly_highres_2D_199501_CONS_v0.1.nc';
    lat = ncread(fnm, 'nav_lat');
    lon = ncread(fnm, 'nav_lon');
    somxl030 = squeeze(ncread(fnm, 'somxl030'));

    % drifter position (Specific Point where you want to extract value)
    drf = [125 30];

    % You don't need to edit below. =======================================

    % reshape arraw -> input parameter for function "dsearchn"
    lat2 = reshape(lat, [], 1);
    lon2 = reshape(lon, [], 1);
    lonlat = cat(2, lon2, lat2);

    % k : index of nearlest point in grid
    k = dsearchn(lonlat, drf);

    % check the lon, lat of the nearest point in grid
    check = lonlat(k, :);
    check_lon = unique(check(:,1));
    check_lat = unique(check(:,2));

    fprintf('Longitude of nearest point : %f \n', check_lon)
    fprintf('Latitude of nearest point : %f \n', check_lat)

    % find index in 2d grid
    id1 = lon == check_lon; id2 = lat == check_lat;
    id = all(cat(3, id1, id2), 3);

    fprintf('MLD of nearest point : %f \n', somxl030(id))
    ```

### Convert curvilinear grid into regular grid

??? example "Convert curvilinear grid into regular grid"

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

    % new query grid
    [xq,yq] = meshgrid(lo(1):0.08:lo(2), la(1):0.08:la(2));

    % Regular grid
    newdep = griddata(hyclon,hyclat,hycdepth,xq,yq);
    ```
