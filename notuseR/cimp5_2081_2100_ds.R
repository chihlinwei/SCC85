#' Model-Averaging Linear Detrended Standard Deviation of Seafloor Climatic Data during 2081 to 2100
#'
#' Standard deviation of projected (RCP8.5) export POC flux to seafloor, bottom dissolved oxygen concentration, hydrogen ion concentration
#' and temperature were calculated from the Geophysical Fluid Dynamics Laboratory’s ESM 2G (GFDL-ESM-2G), Institut Pierre
#' Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR) within the Coupled Models
#' Intercomparison Project Phase 5 (CIMP5).
#'
#' @details
#' Yearly linear-detrend standard deviation from 2081 to 2100 were calculated for the GFDL-ESM-2G, IPSL-CM5A-MR
#' and MPI-ESM-MR respectively. Ensemble average of the standard deviation was calculated among the three models for the periods of 2081 to 2100.
#' The export POC flux at seafloor was compute from the
#' export production at 100 m (epc100) using the Martin curve (Martin et al., 1987) following the quation:
#' \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was set to 100 m.
#' All CIMP5 data were download from \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_ds_2081_to_2100}{Standard Deviation of export POC flux to seafloor (mg C m^-2 d^-1)}
#'   \item{o2_ds_2081_to_2100}{Standard Deviation of dissolved oxygen concentration at seafloor (mol m^-3)}
#'   \item{ph_ds_2081_to_2100}{Standard Deviation of pH at seafloor (M)}
#'   \item{thetao_ds_2081_to_2100}{Standard Deviation of potential temperature at seafllor (K)}
#'   \item{arag_ds_2081_to_2100}{Standard deviation of aragonite Concentration (mol m-3)}
#'   \item{calc_ds_2081_to_2100}{Standard deviation of calcite Concentration (mol m-3)}
#'   \item{co3_ds_2081_to_2100}{Standard deviation of mole Concentration of Carbonate expressed as Carbon in Sea Water (mol m-3)}
#'   \item{co3satarag_ds_2081_to_2100}{Standard deviation of mole Concentration of Aragonite expressed as Carbon in Sea Water at Saturation (mol m-3)}
#'   \item{co3satcalc_ds_2081_to_2100}{Standard deviation of mole Concentration of Calcite expressed as Carbon in Sea Water at Saturation (mol m-3)}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_2081_2100_ds
NULL
