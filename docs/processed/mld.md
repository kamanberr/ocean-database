# :material-layers-triple-outline: Mixed Layer Depth <span class="date">[2025.03.22]</span>

Mixed layer depth (MLD) datasets and toolboxes for computing MLD yourself.

## Climatology & observation-based

<div class="grid cards" markdown>

-   **World Ocean Atlas 2018 MLD** · 1° and 1/4°

    ---

    Annual, seasonal, monthly. Provided only for two time spans: **A5B7 (2005–2017)** and **decav81B0 (1981–2010)**

    [:octicons-download-24: WOA18 MLD netCDF](https://www.ncei.noaa.gov/data/oceans/woa/WOA18/DATA/mld/netcdf/)<br>
    [:octicons-arrow-right-24: WOA page](woa.md)

-   **MILA GPV (JAMSTEC)** · Argo

    ---

    Argo product 1

    [:octicons-link-external-24: MILA GPV](https://www.jamstec.go.jp/argo_research/dataset/milagpv/mila_en.html)<br>
    [:octicons-link-external-24: Reference (J. Oceanogr.)](https://link.springer.com/article/10.1007/s10872-010-0063-3)

-   **MIMOC** · 1/2°, Argo

    ---

    Argo product 2. Gridded isopycnal and mixed-layer water properties (objective mapping with front-finding and bathymetry-following algorithms)

    [:octicons-link-external-24: MIMOC](https://www.pmel.noaa.gov/mimoc/)

-   **Argo Mixed Layers (UCSD)** · Argo

    ---

    Argo product 3 (see also toolbox 2)

    [:octicons-link-external-24: mixedlayer.ucsd.edu](https://mixedlayer.ucsd.edu/)

-   **LOPS MLD Climatology** (de Boyer Montégut)

    ---

    Introduces several MLD references. Global climatology with a density threshold of 0.03 kg/m³ relative to 5 m

    [:octicons-link-external-24: Surface Mixed Layer Depth (Ifremer)](https://cerweb.ifremer.fr/deboyer/mld/Surface_Mixed_Layer_Depth.php)<br>
    [:octicons-download-24: MLD climatology, 0.03 kg/m³ criterion (SEANOE)](https://www.seanoe.org/data/00870/98226/)

-   **GOSML** · Monthly statistical climatology

    ---

    A Global Ocean Surface Mixed Layer Statistical Monthly Climatology (NOAA PMEL)

    [:octicons-link-external-24: GOSML](https://www.pmel.noaa.gov/gosml/)<br>
    [:octicons-link-external-24: Reference (pdf)](https://www.pmel.noaa.gov/gosml/5294_Johnson_Lyman_GOSML_v4_clean_with_figures_ASACCEPTED_508.pdf)

-   **MLD in Polar Regions**

    ---

    [:octicons-download-24: SEANOE 00870/98226](https://www.seanoe.org/data/00870/98226/)<br>
    [:octicons-download-24: SEANOE 00806/91774](https://www.seanoe.org/data/00806/91774/)

</div>

??? info "What the WOA18 MLD folder names mean"
    The download link contains two folders with somewhat unusual names. Their meaning is as follows.

    <figure markdown="span">
      ![WOA18 MLD download folders](../assets/processed/mld/woa18_mld_folders.png){ loading=lazy }
      <figcaption>WOA18 MLD download folders</figcaption>
    </figure>

    > Mixed Layer Depth fields are available on one-degree and quarter-degree grids, annual, seasonal, and monthly, ONLY for
    > **A5B7 (Time Span: 2005~2017)** and **decav81B0 (Time Span: 1981~2010)** time spans.

    <figure markdown="span">
      ![WOA18 MLD time spans](../assets/processed/mld/woa18_mld_time_spans.png){ loading=lazy }
      <figcaption>WOA18 MLD time spans</figcaption>
    </figure>

## Model & reanalysis

<div class="grid cards" markdown>

-   **GLORYS12V1** (CMEMS)

    ---

    Variable `mlotst` (Ocean Mixed Layer Thickness)

    [:octicons-link-external-24: GLOBAL_MULTIYEAR_PHY_001_030](https://data.marine.copernicus.eu/product/GLOBAL_MULTIYEAR_PHY_001_030/description)<br>
    [:octicons-link-external-24: How is mlotst defined?](https://help.marine.copernicus.eu/en/articles/5676870-how-is-the-ocean-mixed-layer-thickness-mlotst-variable-defined)

-   **HYCOM GLBy0.08 expt 93.0 sur** · 2018–

    ---

    HYCOM surface product

    [:octicons-link-external-24: THREDDS catalog](https://tds.hycom.org/thredds/catalogs/GLBy0.08/expt_93.0_sur.html)

-   **ECCO MLD** · 0.5°, monthly mean

    ---

    ECCO V4r4 (PO.DAAC)

    [:octicons-link-external-24: ECCO_L4_MIXED_LAYER_DEPTH_05DEG_MONTHLY_V4R4](https://podaac.jpl.nasa.gov/dataset/ECCO_L4_MIXED_LAYER_DEPTH_05DEG_MONTHLY_V4R4)

</div>

## MLD toolboxes

<div class="grid cards" markdown>

-   **Toolbox 1** · Chad Greene `mld.m`

    ---

    MLD function from the Climate Data Toolbox

    [:octicons-link-external-24: mld documentation](https://www.chadagreene.com/CDT/mld_documentation.html)<br>
    [:octicons-file-24: mld.m (Chad Greene)](../assets/files/processed/mld/mld.m)

-   **Toolbox 2** · Subjective method (MATLAB)

    ---

    The original paper it cites (de Boyer Montégut et al., 2004) has more than 3,000 citations. Note that the toolbox was not written by the paper's authors

    [:octicons-download-24: File Exchange: compute MLD based on subjective method](https://kr.mathworks.com/matlabcentral/fileexchange/53370-to-compute-mixed-layer-depth-based-on-subjective-method)<br>
    [:octicons-book-24: de Boyer Montégut et al. (2004), JGR Oceans](https://doi.org/10.1029/2004JC002378)

    <figure markdown="span">
      ![Toolbox 2 example](../assets/processed/mld/toolbox2_subjective_method_example.png){ loading=lazy }
      <figcaption>Toolbox 2 example</figcaption>
    </figure>

-   **Toolbox 3** · Holte & Talley algorithm

    ---

    [:octicons-link-external-24: GitHub: rsignell-usgs/mld_demo](https://github.com/rsignell-usgs/mld_demo)<br>
    [:octicons-file-24: Holte MLD algorithm files (zip)](../assets/files/processed/mld/jaot09_holte_mld_algorithm_files.zip)

-   **Toolbox 4** · Neutral surfaces (MATLAB)

    ---

    [:octicons-download-24: File Exchange: Neutral Surfaces](https://kr.mathworks.com/matlabcentral/fileexchange/124650-neutral-surfaces)

</div>
