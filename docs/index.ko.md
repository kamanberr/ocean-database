---
hide:
  - navigation
---

# :material-waves: Kamanberr Ocean Database

**다양한 공개 해양 자료의 다운로드 경로 모음**

!!! info "업데이트 안내"
    웹사이트 주소 변경을 포함한 업데이트 소식은 [Instagram (@kamanberr)](https://www.instagram.com/kamanberr/)에서 알려 드립니다.
    질문이나 제안이 있으시면 이메일 또는 DM으로 연락 주세요.

!!! note "Latest Update: 2026.10.28 (KST)"
    - Updated the SST Downloader: 11 GHRSST L4 datasets and OISST v2, with token-based download and automatic retry.
    - Updated the Bathymetry Download: ETOPO 2022, SRTM15+, and the newly added S2Shores coastal bathymetry.
    - 2026.08.25: Updated the Pacific Ocean datasets, refreshed the satellite SST page, and updated the Polar page.

??? abstract "Upcoming updates"
    - HYCOM download (MATLAB toolbox): fix the bottom-value download issue and check for errors related to the longitude range around 0°.
    - Polar page update.

## 카테고리별 보기

<div class="grid cards" markdown>

-   :material-earth: **Whole Ocean**

    ---

    위성, 현장 관측(Argo, drifter, 선박, 계류), 모델, 대기

    [:octicons-arrow-right-24: 이동](whole-ocean/index.md)

-   :material-chart-line: **Processed Product**

    ---

    기후 지수, 해수면·OHC, atlas·기후값, 혼합층 깊이

    [:octicons-arrow-right-24: 이동](processed/index.md)

-   :material-lightbulb-on-outline: **Interesting Topics**

    ---

    태풍, 탄소 순환, 생태, 하천 유출, 파랑, 해양 열파

    [:octicons-arrow-right-24: 이동](topics/index.md)

-   :material-map-marker-radius: **Local Area / Country**

    ---

    한국, 일본, 태평양, 대서양, 인도양

    [:octicons-arrow-right-24: 이동](regional/index.md)

-   :material-terrain: **Bathymetry & Boundary**

    ---

    GEBCO, ETOPO 2022, SRTM15+, KHOA, HYCOM topo, EEZ

    [:octicons-arrow-right-24: 이동](bathymetry/index.md)

-   :material-toolbox-outline: **Etc.**

    ---

    다운로드 코드, 유용한 MATLAB 코드, 논문에 쓰인 자료

    [:octicons-arrow-right-24: 이동](etc/index.md)

</div>

자료 포털, 시각화 도구, 강의 영상은 [참고 자료](resources.md)에서 확인하세요.

## 공지

1.  **SST Downloader (GHRSST L4 & OISST)** · 2026.10

    원하는 영역·기간의 일별 SST만 OPeNDAP으로 받아오는 MATLAB 코드입니다.
    PO.DAAC의 **GHRSST L4 11종**(OSTIA, OSTIA Reprocessed, MUR 4.1, MUR 0.25°, GAMSSA, DMI, OSPO, K10, REMSS MW_OI·MW_IR_OI 등)과
    **NOAA OISST v2**를 지원합니다. Earthdata 토큰 방식 다운로드, 실패한 날짜 자동 재시도, 변수 선택, 격자 자동 캐싱,
    OISST의 MAT/NetCDF 저장과 0°E 통과 영역을 새로 지원합니다.
    → [SST Downloader (MATLAB File Exchange)](https://kr.mathworks.com/matlabcentral/fileexchange/173480-sst-downloader-ghrsst-l4-po-daac-and-oisst-subset-by-area-and-period)

    이외의 PO.DAAC 자료가 필요하신 분은
    [PO.DAAC MATLAB 다운로드 매뉴얼](whole-ocean/satellite/podaac-manual.md)을 참고해 주세요.

2.  **Bathymetry Download (ETOPO 2022, SRTM15+, S2Shores)** · 2026.10.28

    세 가지 수심 자료에서 원하는 영역만 받아오는 MATLAB 코드입니다.
    **ETOPO 2022**(30·60 arc-sec), **SRTM15+ V2.4**, 그리고 새로 추가된 **S2Shores** 연안 수심(AVISO+ 계정 필요)을 지원합니다.
    −180~180과 0~360 경도 표기, 날짜변경선·본초자오선 통과 영역을 자동 처리하며, 모든 자료를 같은 형식의 MAT/NetCDF로 저장합니다.
    → [Bathymetry Download (MATLAB File Exchange)](https://kr.mathworks.com/matlabcentral/fileexchange/173370-bathymetry-download-etopo-2022-srtm-15-s2shores)

3.  **해색 위성 자료 (Chl-a 등)** · 2024.10.05

    해색 위성 자료는 [Ocean Color](whole-ocean/satellite/ocean-color.md) 페이지에 정리해 두었습니다.
    공식 사이트에서 원하는 지역, 원하는 기간을 빠르게 다운받는 방법도 이 페이지에서 확인할 수 있으며,
    다운로드 속도가 상당히 빠르니 해당 매뉴얼을 이용하실 것을 권장합니다.

## 연락처

| | |
|---|---|
| **운영자** | 황지욱 (Jiuk Hwang) · [hwangjiuk34@gmail.com](mailto:hwangjiuk34@gmail.com) |
| **GitHub** | [kamanberr](https://github.com/kamanberr) |
| **MATLAB Central** | [Jiuk Hwang](https://kr.mathworks.com/matlabcentral/profile/authors/23689574) |
