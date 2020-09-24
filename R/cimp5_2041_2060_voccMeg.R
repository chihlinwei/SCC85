#' Model-Averaging of Gradient-based climate velocity magnitude during 2041 to 2060
#'
#' Ensemble average of the seafloor gradient-based climate velocity magnitudes based on future scenario of CIMP5 experiment.
#'
#' @details
#' Gradient-based climate velocity magnitude from 2041 to 2060 were calculated from each of the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR.
#' Climate velocity was calculated using package gVoCC \url{https://rdrr.io/github/JorGarMol/VoCC/man/gVoCC.html}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_voccMeg_2041_to_2060}{Mean climate velocity magnitude for export POC flux to seafloor (km/yr)}
#'   \item{o2_voccMeg_2041_to_2060}{Mean climate velocity magnitude for dissolved oxygen concentration at seafloor (km/yr)}
#'   \item{ph_voccMeg_2041_to_2060}{Mean climate velocity magnitude for pH at seafloor (km/yr)}
#'   \item{thetao_voccMeg_2041_to_2060}{Mean climate velocity magnitude for potential temperature at seafllor (km/yr)}
#'   \item{arag_voccMeg_2041_to_2060}{Mean climate velocity magnitude for aragonite Concentration (km/yr)}
#'   \item{calc_voccMeg_2041_to_2060}{Mean climate velocity magnitude for calcite Concentration (km/yr)}
#'   \item{co3_voccMeg_2041_to_2060}{Mean climate velocity magnitude for for mole Concentration of Carbonate expressed as Carbon in Sea Water (km/yr)}
#'   \item{co3satarag_voccMeg_2041_to_2060}{Mean climate velocity magnitude for for carbonate ion concentration for seawater in equilibrium with pure aragonite (km/yr)}
#'   \item{co3satcalc_voccMeg_2041_to_2060}{Mean climate velocity magnitude for for carbonate ion concentration for seawater in equilibrium with pure calcite (km/yr)}
#'   \item{aragsat_voccMeg_2041_to_2060}{Mean climate velocity magnitude for aragonite saturation State (km/yr)}
#'   \item{calcsat_voccMeg_2041_to_2060}{Mean climate velocity magnitude for calcite saturation State (km/yr)}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_2041_2060_voccMeg
#' @examples
#' lim <- max(abs(quantile(subset(cimp5_2041_2060_voccMeg, 1:4), c(0.01, 0.99))))
#' mplot(subset(cimp5_2041_2060_voccMeg, 1:4), col.regions=jet.colors3, at=seq(-lim, lim, len=101), main=expression(Climate~Velocity~Magnitude~(km/yr)))
NULL
