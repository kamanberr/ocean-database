# :material-arrow-decision: Current <span class="date">[2024.11.02]</span>

Satellite-based surface current products: geostrophic currents from altimetry, total surface currents, and the OSCAR analysis.

## Geostrophic current from altimetry

Geostrophic velocities are distributed together with the gridded SSH products. See [Sea Surface Height & Altimeter](ssh.md).

## Global total surface current

<div class="grid cards" markdown>

-   **COPERNICUS-GLOBCURRENT**

    ---

    Global total surface and 15 m currents (geostrophy plus Ekman), multi-year and NRT

    [:octicons-link-external-24: MULTIOBS_GLO_PHY_MYNRT_015_003](https://data.marine.copernicus.eu/product/MULTIOBS_GLO_PHY_MYNRT_015_003/description)

-   **Global Ocean Current Database (GOCD)**

    ---

    NOAA NCEI archive of in situ ocean current observations

    [:octicons-link-external-24: GOCD (NOAA NCEI)](https://www.ncei.noaa.gov/products/global-ocean-currents-database)

</div>

## OSCAR (Ocean Surface Current Analyses Real-time)

OSCAR ocean mixed layer velocities are calculated from satellite-sensed sea surface height gradients, ocean vector winds, and sea surface temperature gradients using a simplified physical model for geostrophy, Ekman, and thermal wind dynamics. Daily averaged surface currents are provided on a global 0.25 × 0.25 degree grid as an average over an assumed well-mixed top 30 m of the ocean from 1993 to present day.

OSCAR currents are provided at three quality levels: final, interim and NRT, with latencies of approximately 1 year, 1 month and 2 days respectively.

<div class="grid cards" markdown>

-   **OSCAR Final** · 0.25° · V2.0 · 1993-01-01 – 2022-08-05

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_FINAL_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_FINAL_V2.0)

-   **OSCAR Interim** · 0.25° · V2.0 · 2020-01-01 – present

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_INTERIM_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_INTERIM_V2.0)

-   **OSCAR Near Real Time** · 0.25° · V2.0 · 2021-01-01 – present

    ---

    [:octicons-link-external-24: OSCAR_L4_OC_NRT_V2.0 (PO.DAAC)](https://podaac.jpl.nasa.gov/dataset/OSCAR_L4_OC_NRT_V2.0)

</div>

!!! tip "Downloading from PO.DAAC"
    See the [PO.DAAC MATLAB Download Manual](podaac-manual.md) for downloading a specific area and period.
