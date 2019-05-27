#' Model-Averaging Decadal Standard deviation of Seafloor Climatic Data during 2041 to 2060
#'
#' Emsemble average of the decadal Standard deviation of seafloor (bottom-most) projections based on RCP8.5 scenario of CIMP5 experiment.
#'
#' @details
#' Yearly mean projections from 2041 to 2060 were calculated from each of the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR.
#' Decadal Standard deviation was calculated from the yearly mean and than averaged across the three models.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_sd_2041_to_2060}{Standard Deviation of export POC flux to seafloor (mg C m^-2 d^-1)}
#'   \item{o2_sd_2041_to_2060}{Standard Deviation of dissolved oxygen concentration at seafloor (mol m^-3)}
#'   \item{ph_sd_2041_to_2060}{Standard Deviation of pH at seafloor}
#'   \item{thetao_sd_2041_to_2060}{Standard Deviation of potential temperature at seafllor (K)}
#'   \item{arag_sd_2041_to_2060}{Standard deviation of aragonite Concentration (mol m-3)}
#'   \item{calc_sd_2041_to_2060}{Standard deviation of calcite Concentration (mol m-3)}
#'   \item{co3_sd_2041_to_2060}{Standard deviation of mole Concentration of Carbonate expressed as Carbon in Sea Water (mol m-3)}
#'   \item{co3satarag_sd_2041_to_2060}{Standard deviation of carbonate ion concentration for seawater in equilibrium with pure aragonite (mol m-3)}
#'   \item{co3satcalc_sd_2041_to_2060}{Standard deviation of carbonate ion concentration for seawater in equilibrium with pure calcite (mol m-3)}
#'   \item{aragsat_sd_2041_to_2060}{Standard deviation of Aragonite Saturation State}
#'   \item{calcsat_sd_2041_to_2060}{Standard deviation of Calcite Saturation State}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_2041_2060_sd
NULL
