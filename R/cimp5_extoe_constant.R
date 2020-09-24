#' Model-average Constant Time of Emergence based on exposure to climate change hazard
#'
#' Constant time of emergence was estimated as the first year when climate change constantly
#' (at least 90% of the remaining time) exceeding historical variability.
#'
#' @details
#' Constant time of emergence was calculated as the first year when the climate change (future - historical)
#' constantly (at least 90% of the remaining time) exceed the historical yearly standard deviation.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_sdtoe_constant}{Constant time of emergence in export POC flux to seafloor}
#'   \item{o2_sdtoe_constant}{Constant time of emergence in dissolved oxygen concentration at seafloor}
#'   \item{ph_sdtoe_constant}{Constant time of emergence in pH at seafloor}
#'   \item{thetao_sdtoe_constant}{Constant time of emergence in potential temperature at seafllor}
#'   \item{arag_sdtoe_constant}{Constant time of emergence in aragonite Concentration}
#'   \item{calc_sdtoe_constant}{Constant time of emergence in calcite Concentration}
#'   \item{co3_sdtoe_constant}{Constant time of emergence in mole Concentration of Carbonate expressed as Carbon in Sea Water}
#'   \item{co3satarag_sdtoe_constant}{Constant time of emergence in carbonate ion concentration for seawater in equilibrium with pure aragonite}
#'   \item{co3satcalc_sdtoe_constant}{Constant time of emergence in carbonate ion concentration for seawater in equilibrium with pure calcite}
#'   \item{aragsat_sdtoe_constant}{Earliest time of emergence in aragonite Saturation State}
#'   \item{calcsat_sdtoe_constant}{Earliest time of emergence in calcite Saturation State}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_extoe_constant
NULL
