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

!!! note "Latest Update: 2026.10.28 (KST)"
    - Updated the SST Downloader: 11 GHRSST L4 datasets and OISST v2, with token-based download and automatic retry.
    - Updated the Bathymetry Download: ETOPO 2022, SRTM15+, and the newly added S2Shores coastal bathymetry.
    - 2026.08.25: Updated the Pacific Ocean datasets, refreshed the satellite SST page, and updated the Polar page.

??? abstract "Upcoming updates"
    - HYCOM download (MATLAB toolbox): fix the bottom-value download issue and check for errors related to the longitude range around 0°.
    - Polar page update.

## Browse by category

<div class="grid cards" markdown>

-   :material-earth: **Whole Ocean**

    ---

    Satellite, in situ (Argo, drifters, ships, moorings), model, atmosphere

    [:octicons-arrow-right-24: Go](whole-ocean/index.md)

-   :material-chart-line: **Processed Product**

    ---

    Climate indices, sea level and OHC, atlas and climatology, mixed layer depth

    [:octicons-arrow-right-24: Go](processed/index.md)

-   :material-lightbulb-on-outline: **Interesting Topics**

    ---

    Typhoon, carbon cycle, ecology, river discharge, wave, marine heat wave

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

## Notice

1.  **SST Downloader (GHRSST L4 & OISST)** · 2026.10

    MATLAB scripts that download daily SST for a user-defined area and period through OPeNDAP.
    They support **11 GHRSST L4 analyses** from PO.DAAC (OSTIA, OSTIA Reprocessed, MUR 4.1, MUR 0.25°, GAMSSA, DMI, OSPO, K10, REMSS MW_OI and MW_IR_OI, and others)
    and **NOAA OISST v2**. New in this release: Earthdata token-based download, automatic retry of failed dates, variable selection, automatic grid caching,
    MAT or NetCDF output for OISST, and OISST domains crossing 0°E.
    → [SST Downloader (MATLAB File Exchange)](https://kr.mathworks.com/matlabcentral/fileexchange/173480-sst-downloader-ghrsst-l4-po-daac-and-oisst-subset-by-area-and-period)

    For other PO.DAAC products, see the
    [PO.DAAC MATLAB download manual](whole-ocean/satellite/podaac-manual.md).

2.  **Bathymetry Download (ETOPO 2022, SRTM15+, S2Shores)** · 2026.10.28

    MATLAB scripts that retrieve regional subsets of three bathymetry products.
    They support **ETOPO 2022** (30 and 60 arc-second), **SRTM15+ V2.4**, and the newly added **S2Shores** coastal bathymetry (AVISO+ account required).
    Longitude may be given in either the −180~180 or 0~360 convention, regions crossing the dateline or the prime meridian are handled automatically,
    and all datasets are saved in a common MAT or NetCDF layout.
    → [Bathymetry Download (MATLAB File Exchange)](https://kr.mathworks.com/matlabcentral/fileexchange/173370-bathymetry-download-etopo-2022-srtm-15-s2shores)

3.  **Ocean color satellite data (Chl-a and others)** · 2024.10.05

    Ocean color datasets are collected on the [Ocean Color](whole-ocean/satellite/ocean-color.md) page.
    It also explains how to download only the region and period you need directly from the official sites;
    the download is considerably faster, so this manual is recommended.

## Contact

| | |
|---|---|
| **Manager** | Jiuk Hwang · [hwangjiuk34@gmail.com](mailto:hwangjiuk34@gmail.com) |
| **GitHub** | [kamanberr](https://github.com/kamanberr) |
| **MATLAB Central** | [Jiuk Hwang](https://kr.mathworks.com/matlabcentral/profile/authors/23689574) |
