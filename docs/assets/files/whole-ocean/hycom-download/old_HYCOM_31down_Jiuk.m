%% DOWNLOAD HYCOM - Global Ocean Forecasting System (GOFS) 3.1 output
%   Written by Jiuk Hwang
%
% Notes ===================================================================
%
% "Variables : Unit"
% temp : celcius
% sal : psu
% ssh : m
% u, v : m/s
% 
% Temporal resolution : 3 hourly data
%
% WARNING =================================================================
% 
% Dear Code Users.
% Before using it, I would like to give you some warnings.
%
% Analysis and Reanalysis have different periods of data provided by HYCOM.
% Please make sure to check the period and download the appropriate data.
%
% Please keep in mind that the size of the spatial resolution grid changes around 2019.
%
% The slow download is not a problem with this code, it is a problem with HYCOM server.
% Missing data may exist and download could be interrupted during code execution. 
% This is also likely to be a HYCOM server problem
% If the download is interrupted by an issue with ncread, we recommend that you try to run the code one more time.
% 
% The user is responsible for any problems such as incorrectly downloading data when executing this code.
% In other words, the author has no responsibility for users' problems caused by the bug.
% 
% However, the author is very interested when it comes to updating the code.
% Therefore, if there is a bug or you are debugging, please contact the e-mail below.
% address : kamanberr@naver.com
% 
% I hope you enjoy your data shopping.
%
% Best regards, 
% 
% Jiuk.

%% Download HYCOM 
% -------------------------------------------------------------------------
% Analysis (2014-07-01 12:00:00 ~ Present)
% 2014~2018 : GLBv0.08
%             GLBv0.08 grid is 0.08 deg lon x 0.08 deg lat between 40S-40N. 
%             Poleward of 40S/40N, the grid is 0.08 deg lon x 0.04 deg lat.
% 2019~     : GLBy0.08
%             GLBy0.08 grid is 0.08 deg lon x 0.04 deg lat that covers 80S to 90N.
% -------------------------------------------------------------------------
% Reanalysis (1994-01-01 12:00:00 ~ 2015-12-31 09:00:00)
% 0.08° resolution between 40°S and 40°N, 0.04° poleward of these latitudes
% -------------------------------------------------------------------------

clc; clear; close all;
tic

% [Start year, Start month ; End year, End month]
% Period = [1999, 12, 31, 21, 00, 00 ; 2000, 01, 01, 06, 00, 00];
Period = [2023, 12, 30, 00, 00, 00 ; 2023, 12, 31, 21, 00, 00];

% 'Analysis' or 'Reanalysis' (Be careful with the date range!)
HYC_ver = 'Analysis';

% [lat start, lat end, lon start, lon end]
Spatial_area = [32, 37, 127, 132];

% [shallow depth ; deep depth]
Depth_range = [0 ; 0];

% select from {'temp', 'sal', 'ssh', 'u', 'v'};
VariableData = {'temp', 'sal', 'ssh', 'u', 'v'};

% you will save data in this file path below.
HomeFolderNm = "C:\Users\User\OneDrive\문서\MATLAB\Toolbox\HYCOM_down";
RawDataFolderNm = "testhyc";

% mat files will be save with this name below.
MatFileNm = "test_HYCOM"; % you will save data with this file name

% function execution
HYCOM_31down_func_Jiuk(Period, Spatial_area, Depth_range, VariableData, HomeFolderNm, RawDataFolderNm, MatFileNm, HYC_ver)
toc

% =========================================================================
% Check time range of each HYCOM data set
% (log) Final check the time range of HYCOM data set : 2024-03-06
%
% 1
%    1994-01-01 12:00:00   1994-12-31 21:00:00
%    1995-01-01 00:00:00   1995-12-31 21:00:00
%    1996-01-01 00:00:00   1996-12-31 21:00:00
%    1997-01-01 00:00:00   1997-12-31 21:00:00
%    1998-01-01 00:00:00   1998-12-31 21:00:00
%    1999-01-01 00:00:00   1999-12-31 21:00:00
%    2000-01-01 00:00:00   2000-12-31 21:00:00
%    2001-01-01 00:00:00   2001-12-31 21:00:00
%    2002-01-01 00:00:00   2002-12-31 21:00:00
%    2003-01-01 00:00:00   2003-12-31 21:00:00
%    2004-01-01 00:00:00   2004-12-31 21:00:00
%    2005-01-01 00:00:00   2005-12-31 21:00:00
%    2006-01-01 00:00:00   2006-12-31 21:00:00
%    2007-01-01 00:00:00   2007-12-31 21:00:00
%    2008-01-01 00:00:00   2008-12-31 21:00:00
%    2009-01-01 00:00:00   2009-12-31 21:00:00
%    2010-01-01 00:00:00   2010-12-31 21:00:00
%    2011-01-01 03:00:00   2011-12-31 21:00:00
%    2012-01-01 00:00:00   2012-12-31 21:00:00
%    2013-01-01 00:00:00   2013-12-31 21:00:00
%    2014-01-01 00:00:00   2014-12-31 09:00:00
%    2015-01-01 12:00:00   2015-12-31 09:00:00
% 2
%    2014-07-01 12:00:00   2016-09-30 09:00:00 start 2015 // stop 2016-08
% 3
%    2016-05-01 12:00:00   2017-02-01 09:00:00 start 2016-09 // cut
% 4
%    2017-02-01 12:00:00   2017-06-01 09:00:00 cut // cut
% 5
%    2017-06-01 12:00:00   2017-10-01 09:00:00 cut // cut
% 6
%    2017-10-01 12:00:00   2018-03-20 09:00:00 cut // stop 2018-02
% 7
%    2018-01-01 12:00:00   2020-02-19 09:00:00 start 2018-03 // stop 2018-12
% 8
%    2018-12-04 12:00:00   2024-03-05 09:00:00 start 2019-01