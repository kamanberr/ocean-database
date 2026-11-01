---
hide:
  - navigation
---

# :material-waves: Kamanberr Ocean Database

**Download routes of various open-access oceanographic datasets.**

!!! info "Update Notice"
    Updates to this website, including any change of its address, are announced on
    [Instagram (@kamanberr)](https://www.instagram.com/kamanberr/).
    If you have any questions or suggestions, please contact me by email or DM.

!!! note "Latest Update: 2026.08.25 (KST)"
    Pacific Ocean dataset 업데이트 + 위성 SST page 정보 갱신 + Polar 갱신

??? abstract "업데이트 예정 사항"
    - HYCOM download (MATLAB Toolbox): Bottom 값 다운로드 이슈 개선, 경도 범위(0도) 관련 에러 여부 검토

## Browse by category

<div class="grid cards" markdown>

-   :material-earth: **Whole Ocean**

    ---

    Satellite, Drifter & Argo, In situ, Model, Atmosphere

    [:octicons-arrow-right-24: Go](whole-ocean/index.md)

-   :material-chart-line: **Processed Product**

    ---

    Climate indices, Sea level & OHC, Atlas & Climatology, MLD

    [:octicons-arrow-right-24: Go](processed/index.md)

-   :material-lightbulb-on-outline: **Interesting Topics**

    ---

    Typhoon, Carbon cycle, Ecology, River discharge, Wave, MHW

    [:octicons-arrow-right-24: Go](topics/index.md)

-   :material-map-marker-radius: **Local Area / Country**

    ---

    Korea, Japan, Pacific, Atlantic, Indian Ocean

    [:octicons-arrow-right-24: Go](regional/index.md)

-   :material-terrain: **Bathymetry & Boundary**

    ---

    GEBCO, ETOPO 2022, SRTM15+, KHOA, HYCOM topo, EEZ

    [:octicons-arrow-right-24: Go](bathymetry/index.md)

-   :material-toolbox-outline: **Etc.**

    ---

    Download code, useful MATLAB code, data used in papers

    [:octicons-arrow-right-24: Go](etc/index.md)

</div>

Looking for general data portals, visualization tools, or lectures? See [Resources](resources.md).

## Notice [2024.10.05]

1.  OSTIA, OISST, MUR 자료를 다운받는 사이트를 [PO.DAAC](https://podaac.jpl.nasa.gov/cloud-datasets)과
    [psl.noaa](https://psl.noaa.gov/data/gridded/data.noaa.oisst.v2.highres.html)를 사용하는 방향으로 코드를 크게 수정했습니다.
    현재 다운받을 수 있는 자료는 **OSTIA v2, OSTIA Reprocessed, OISST v2, MUR 4.1, MUR 4.2**입니다.
    → [GHRSST download - OSTIA, MUR, OISST](https://kr.mathworks.com/matlabcentral/fileexchange/173480-ghrsst-download-ostia-mur-oisst)

    [PO.DAAC에서 자료를 직접 다운받을 수 있는 MATLAB 스크립트를 작성하는 방법](https://app.notion.com/p/5f1d6194d59183b79573015c49e891eb){ .notion }을
    매뉴얼로 만들어 두었으니, 이외의 자료가 필요하신 분은 해당 매뉴얼을 참고해 주세요.

2.  Bathymetry 자료를 다운받는 MATLAB 코드에서 ETOPO 1, 2, 5와 GEBCO 2019를 제외하였습니다.
    해당 스크립트를 사용하여 **ETOPO 2022 30 arc, 60 arc** 그리고 **SRTM 15+**를 다운받을 수 있습니다.
    → [Bathymetry Download (ETOPO 2022, SRTM 15)](https://kr.mathworks.com/matlabcentral/fileexchange/173370-bathymetry-download-etopo-2022-srtm-15)

3.  **Chl-a 등을 관측하는 해색 위성**의 경우,
    [공식 사이트에서 원하는 지역, 원하는 기간을 빠르게 다운받는 방법](https://app.notion.com/p/3f6d6194d591833f9b5901533509de59){ .notion }을
    게시해 두었습니다. 다운로드 속도가 상당히 빠르니 해당 매뉴얼을 이용하실 것을 권장합니다.

## Contact

| | |
|---|---|
| **Manager** | Jiuk Hwang · [hwangjiuk34@gmail.com](mailto:hwangjiuk34@gmail.com) |
| **GitHub** | [kamanberr](https://github.com/kamanberr) |
| **MATLAB Central** | [Jiuk Hwang](https://kr.mathworks.com/matlabcentral/profile/authors/23689574) |
