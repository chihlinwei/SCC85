#' Model-Averaging of Gradient-based climate velocity angle during 1951 to 2000
#'
#' Ensemble average of the seafloor gradient-based climate velocity angles based on historical scenario of CIMP5 experiment.
#'
#' @details
#' Gradient-based climate velocity angle from 1951 to 2000 were calculated from each of the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR.
#' Climate velocity was calculated using package gVoCC \url{https://rdrr.io/github/JorGarMol/VoCC/man/gVoCC.html}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_voccAng_1951_to_2000}{Mean climate velocity angle for export POC flux to seafloor (degree)}
#'   \item{o2_voccAng_1951_to_2000}{Mean climate velocity angle for dissolved oxygen concentration at seafloor (degree)}
#'   \item{ph_voccAng_1951_to_2000}{Mean climate velocity angle for pH at seafloor (degree)}
#'   \item{thetao_voccAng_1951_to_2000}{Mean climate velocity angle for potential temperature at seafllor (degree)}
#'   \item{arag_voccAng_1951_to_2000}{Mean climate velocity angle for aragonite Concentration (degree)}
#'   \item{calc_voccAng_1951_to_2000}{Mean climate velocity angle for calcite Concentration (degree)}
#'   \item{co3_voccAng_1951_to_2000}{Mean climate velocity angle for for mole Concentration of Carbonate expressed as Carbon in Sea Water (degree)}
#'   \item{co3satarag_voccAng_1951_to_2000}{Mean climate velocity angle for for carbonate ion concentration for seawater in equilibrium with pure aragonite (degree)}
#'   \item{co3satcalc_voccAng_1951_to_2000}{Mean climate velocity angle for for carbonate ion concentration for seawater in equilibrium with pure calcite (degree)}
#'   \item{aragsat_voccAng_1951_to_2000}{Mean climate velocity angle for aragonite saturation State (degree)}
#'   \item{calcsat_voccAng_1951_to_2000}{Mean climate velocity angle for calcite saturation State (degree)}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_1951_2000_voccAng
#' @examples
#' mplot(subset(cimp5_1951_2000_voccAng, 1:4), col.regions=jet.colors, cut=100, main=expression(Climate~Velocity~Angle~(degree)))
NULL
