#' Exposure to Climate Change Hazard during 2041 to 2060 based on linear detrend standard deviation
#'
#' Historical and projected (RCP8.5) export POC flux to seafloor, bottom dissolved oxygen concentration, hydrogen ion concentration
#' and temperature were averaged from the Geophysical Fluid Dynamics Laboratory’s ESM 2G (GFDL-ESM-2G), Institut Pierre
#' Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR) within the Coupled Models
#' Intercomparison Project Phase 5 (CIMP5). Exposure to climate change hazard was estimated as the difference between the
#' projected (RCP8.5) and historical climatic data divided by the standard deviation during the historical period.
#'
#' @details
#' Yearly mean and linear-detrended standard deviation from 1951 to 2000 (historical), 2041 to 2060 (rcp8.5) and 2081 to 2100
#' (rcp8.5) were calculated for the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR respectively. Ensemble average of the mean and
#' standard deviation were calculated among the three models for the periods of 1951 to 2000 and 2041 to 2060 respectively.
#' Exposure to climate change hazard was calculated as \code{\link{cimp5_2041_2060_ch}} divided by \code{\link{cimp5_1951_2000_ds}}.
#' The export POC flux at seafloor was compute from the export production at 100 m (epc100) using the Martin curve (Martin et al., 1987)
#' following the quation: \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was set to 100 m.
#' All CIMP5 data were download from \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_exds_2041_to_2060}{Exposure to climate change hazard in export POC flux to seafloor}
#'   \item{o2_exds_2041_to_2060}{Exposure to climate change hazard in dissolved oxygen concentration at seafloor}
#'   \item{ph_exds_2041_to_2060}{Exposure to climate change hazard in hydrogen ion concentration at seafloor}
#'   \item{thetao_exds_2041_to_2060}{Exposure to climate change hazard in potential temperature at seafllor}
#'   \item{arag_exds_2041_to_2060}{Exposure to climate change hazard in aragonite Concentration}
#'   \item{calc_exds_2041_to_2060}{Exposure to climate change hazard in calcite Concentration}
#'   \item{co3_exds_2041_to_2060}{Exposure to climate change hazard in mole Concentration of Carbonate expressed as Carbon in Sea Water}
#'   \item{co3satarag_exds_2041_to_2060}{Exposure to climate change hazard in mole Concentration of Aragonite expressed as Carbon in Sea Water at Saturation}
#'   \item{co3satcalc_exds_2041_to_2060}{Exposure to climate change hazard in mole Concentration of Calcite expressed as Carbon in Sea Water at Saturation}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_2041_2060_exds
NULL
