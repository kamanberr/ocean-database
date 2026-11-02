function HYCOM_31down_func_Jiuk(Period, Spatial_area, Depth_range, VariableData, HomeFolderNm, RawDataFolderNm, MatFileNm, HYC_ver)
%   Written by Jiuk Hwang
%   Log
%       2024.03.04 Draft completed
%       2024.03.06 Modify (1) : setting time range
%       2024.03.29 Modify (2) : bug with reject for download data after 2019
% =========================================================================

%% Preprocessing

% make FOLDER for save mat file
hfn_ch = char(HomeFolderNm); hfn_end = hfn_ch(end);
if hfn_end ~= '\';            HomeFolderNm = strcat(HomeFolderNm, '\');        end
clear hfn_ch hfn_end;
hfn_ch = char(RawDataFolderNm); hfn_end = hfn_ch(end);
if hfn_end ~= '\';            RawDataFolderNm = strcat(RawDataFolderNm, '\');        end
clear hfn_ch hfn_end;

HomeFolderNm = sprintf('%s%s', HomeFolderNm, RawDataFolderNm);

if ~exist(HomeFolderNm, 'dir')
    mkdir(HomeFolderNm);
end

% time axis
HycSetTime      = NaT(8, 2);
HycSetTime(2,1) = datetime(2014,07,01,12,00,00);    HycSetTime(2,2) = datetime(2016,08,31,21,00,00);
HycSetTime(3,1) = datetime(2016,09,01,00,00,00);    HycSetTime(3,2) = datetime(2017,02,01,09,00,00);
HycSetTime(4,1) = datetime(2017,02,01,12,00,00);    HycSetTime(4,2) = datetime(2017,06,01,09,00,00);
HycSetTime(5,1) = datetime(2017,06,01,12,00,00);    HycSetTime(5,2) = datetime(2017,10,01,09,00,00);
HycSetTime(6,1) = datetime(2017,10,01,12,00,00);    HycSetTime(6,2) = datetime(2018,02,28,21,00,00);
HycSetTime(7,1) = datetime(2018,03,01,00,00,00);    HycSetTime(7,2) = datetime(2018,12,31,21,00,00);
HycSetTime(8,1) = datetime(2019,01,01,00,00,00);    HycSetTime(8,2) = datetime(3000,12,31,21,00,00);

datestart   = datetime(sprintf('%d-%d-%d %d:%d:%d',Period(1,1), Period(1,2), Period(1,3), Period(1,4), Period(1,5), Period(1,6)), ...
    'Format','uuuu-MM-dd HH:mm:ss');
dateend   = datetime(sprintf('%d-%d-%d %d:%d:%d',Period(2,1), Period(2,2), Period(2,3), Period(2,4), Period(2,5), Period(2,6)), ...
    'Format','uuuu-MM-dd HH:mm:ss');
daterange   = (datestart:3*hours(1):dateend)';

dateID = nan(length(daterange),size(HycSetTime,1));
for i=1:size(HycSetTime,1)
    if strcmp(HYC_ver, 'Reanalysis') && datestart <= datetime('2015-12-31 09:00:00') && dateend <= datetime('2015-12-31 09:00:00')
        Rean_yr = unique(year(daterange));
    % elseif strcmp(HYC_ver, 'Analysis') && datestart > datetime('2015-12-31 09:00:00') && dateend > datetime('2015-12-31 09:00:00')
    elseif strcmp(HYC_ver, 'Analysis') && datestart >= datetime('2014-07-01 12:00:00') && dateend > datetime('2014-07-01 12:00:00')
        dateID1 = HycSetTime(i,1)<=daterange;
        dateID2 = HycSetTime(i,2)>=daterange;
        dateID(:,i) = all([dateID1, dateID2] ,2);
    else
        disp('Wrong INPUT parameter!');        break;
    end
end


% check Variables
varcheck    = nan(1,5);
varcheck(1) = ismember('ssh', string(VariableData));
varcheck(2) = ismember('temp', string(VariableData));
varcheck(3) = ismember('sal', string(VariableData));
varcheck(4) = ismember('u', string(VariableData));
varcheck(5) = ismember('v', string(VariableData));

% URL
idlinkfull(1) = "https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_53.X//data//";

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '56.3';
idlinkfull(2) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '57.2';
idlinkfull(3) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '92.8';
idlinkfull(4) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '57.7';
idlinkfull(5) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '92.9';
idlinkfull(6) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBv0.08//expt_';
idlink2 = '93.0';
idlinkfull(7) = sprintf('%s%s', idlink1, idlink2);

idlink1 = 'https://tds.hycom.org//thredds//dodsC//GLBy0.08//expt_';
idlink2 = '93.0';
idlinkfull(8) = sprintf('%s%s', idlink1, idlink2);

idlinkfull=idlinkfull';

%% MAIN CODE - Download

if strcmp(HYC_ver, 'Analysis')
    dateID_any = find(any(dateID,1));
    for i_ver = 1:size(HycSetTime,1)
        if ismember(i_ver, dateID_any)
            dateID_re = logical(dateID(:,i_ver));
            if any(dateID_re)
                daterange_re = daterange(dateID_re);
                daterange_str_end = [daterange_re(1), daterange_re(end)];

                ads1 = idlinkfull(i_ver);

                [id_tm, id_la, id_lo, id_dep] = hyc_down_preparing(ads1, daterange_str_end, Spatial_area, Depth_range);

                for loopdown = 1:length(id_tm)
                    hyc = hyc_down_specific_area(ads1, id_tm(loopdown), id_la, id_lo, id_dep, varcheck);

                    % save struct to mat file
                    strtime = datevec(hyc.date);
                    matnm = sprintf('%s_%d_%02.f_%02.f_%02.f_%s.mat', MatFileNm, strtime(1), strtime(2), strtime(3), strtime(4), HYC_ver);
                    fpath = sprintf('%s%s',HomeFolderNm,matnm);
                    save(fpath, "hyc")
                    fprintf('Download %s\n', matnm);
                end
            end
        end
    end

elseif strcmp(HYC_ver, 'Reanalysis')
    for i_ver = Rean_yr(1):Rean_yr(end)

        ads1 = sprintf('%s%d', idlinkfull(1), i_ver);

        [id_tm, id_la, id_lo, id_dep] = hyc_down_preparing(ads1, [datestart, dateend], Spatial_area, Depth_range);

        for loopdown = 1:length(id_tm)
            hyc = hyc_down_specific_area(ads1, id_tm(loopdown), id_la, id_lo, id_dep, varcheck);

            % save struct to mat file
            strtime = datevec(hyc.date);
            matnm = sprintf('%s_%d_%02.f_%02.f_%02.f_%s.mat', MatFileNm, strtime(1), strtime(2), strtime(3), strtime(4), HYC_ver);
            fpath = sprintf('%s%s',HomeFolderNm,matnm);
            save(fpath, "hyc")
            fprintf('Download %s\n', matnm);
        end
    end
end

% hyc_down_preparing ======================================================

    function [id_tm, id_la, id_lo, id_dep] = hyc_down_preparing(ads1, daterange_str_end, Spatial_area, Depth_range)

        ads2 = '?time';
        ads_f2 = sprintf('%s%s', ads1, ads2);
        all_time = ncread(ads_f2, 'time');
        all_time2 = datetime(2000, 01, 01, 00, 00, 00)+hours(all_time);
        idid1 = all_time2 >= daterange_str_end(1);    idid2 = all_time2 <= daterange_str_end(2);
        id_tm = find(all([idid1, idid2], 2));    id_tm = id_tm-1;

        ads5 = '?lat,lon';
        ads_f5 = sprintf('%s%s', ads1, ads5);
        all_la = ncread(ads_f5, 'lat');        all_lo = ncread(ads_f5, 'lon');
        id_la = knnsearch(all_la, [Spatial_area(1); Spatial_area(2)]); id_la = id_la -1;
        id_lo = knnsearch(all_lo, [Spatial_area(3); Spatial_area(4)]); id_lo = id_lo -1;

        ads3 = '?depth';
        ads_f3 = sprintf('%s%s', ads1, ads3);
        all_dep = ncread(ads_f3, 'depth');
        id_dep = knnsearch(all_dep, Depth_range); id_dep = id_dep -1;

    end

% hyc_down_specific_area ==================================================

    function hyc = hyc_down_specific_area(ads1, id_tm, id_la, id_lo, id_dep, varcheck)

        % lon, lat, time
        adsset1 = sprintf('?lat[%d:1:%d],lon[%d:1:%d],time[%d:1:%d]', ...
            id_la(1), id_la(2), id_lo(1), id_lo(2), id_tm, id_tm);

        % ssh
        adsrng2 = sprintf('[%d:1:%d][%d:1:%d][%d:1:%d]', ...
            id_tm, id_tm, id_la(1), id_la(2), id_lo(1), id_lo(2));
        if varcheck(1) == 1
            adsset1 = sprintf('%s,surf_el%s',adsset1, adsrng2);
        end

        % depth
        adsset1 = sprintf('%s,depth[%d:1:%d]',adsset1, id_dep(1), id_dep(2));

        % temp, sal, u, v
        adsrng1 = sprintf('[%d:1:%d][%d:1:%d][%d:1:%d][%d:1:%d]', ...
            id_tm, id_tm, id_dep(1), id_dep(2), id_la(1), id_la(2), id_lo(1), id_lo(2));
        for i_var = 2:length(varcheck)
            if varcheck(i_var) == 1
                if i_var == 2
                    adsset1 = sprintf('%s,water_temp%s',adsset1, adsrng1);
                elseif i_var == 3
                    adsset1 = sprintf('%s,salinity%s',adsset1, adsrng1);
                elseif i_var == 4
                    adsset1 = sprintf('%s,water_u%s',adsset1, adsrng1);
                elseif i_var == 5
                    adsset1 = sprintf('%s,water_v%s',adsset1, adsrng1);
                end
            end
        end

        ads_f1 = sprintf('%s%s', ads1, adsset1);

        % load data
        hyc = struct;

        dntm = ncread(ads_f1, 'time');
        hyc.date = datetime(datetime(2000, 01, 01, 00, 00, 00)+hours(dntm), 'Format','uuuu-MM-dd HH:mm:ss');
        hyc.lat = ncread(ads_f1, 'lat');
        hyc.lon = ncread(ads_f1, 'lon');
        hyc.dep = ncread(ads_f1, 'depth');

        for i_var = 1:length(varcheck)
            if varcheck(i_var) == 1
                if i_var == 1
                    hyc.ssh = ncread(ads_f1, 'surf_el');
                elseif i_var == 2
                    hyc.temp = ncread(ads_f1, 'water_temp');
                elseif i_var == 3
                    hyc.sal = ncread(ads_f1, 'salinity');
                elseif i_var == 4
                    hyc.u = ncread(ads_f1, 'water_u');
                elseif i_var == 5
                    hyc.v = ncread(ads_f1, 'water_v');
                end
            end
        end

    end

% =========================================================================
end