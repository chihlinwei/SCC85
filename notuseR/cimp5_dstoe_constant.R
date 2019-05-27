#' Model-average Constant Time of Emergence based on Linear Detrend Standard Devation
#'
#' Historical and projected (RCP8.5) export POC flux to seafloor, bottom dissolved oxygen concentration, hydrogen ion concentration
#' and temperature were averaged from the Geophysical Fluid Dynamics Laboratory’s ESM 2G (GFDL-ESM-2G), Institut Pierre
#' Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR) within the Coupled Models
#' Intercomparison Project Phase 5 (CIMP5). Earliest time of emergence was estimated as the earliest year in a latest consecutive period
#' when climate change variability exceeds
#' historical climate variability.
#'
#' @details
#' Yearly linear-detrend standard deviation between cumulative periods of future (from 2006-2017 to 2006-2100) and fixed period of historical (1951-2000) projections
#' were calculated for the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR respectively. Ensemble average of the standard deviation were calculated among the
#' three models for the periods of 1951 to 2000 and 2041 to 2060 respectively. Constant time of emergence was calculated as the earliest year in a latest consecutive period
#' when the yearly cumulative future standard deviation exceed the historical yearly standard deviation. Gap years (ratio < 1) within the consecutive period are allowed
#' as long as the proportion of gap years is less than 10% of the total years within the period.
#' The export POC flux at seafloor was compute from the export
#' production at 100 m (epc100) using the Martin curve (Martin et al., 1987)
#' following the quation: \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was set to 100 m.
#' All CIMP5 data were download from \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_dstoe_constant}{Constant time of emergence in export POC flux to seafloor}
#'   \item{o2_dstoe_constant}{Constant time of emergence in dissolved oxygen concentration at seafloor}
#'   \item{ph_dstoe_constant}{Constant time of emergence in pH at seafloor}
#'   \item{thetao_dstoe_constant}{Constant time of emergence in potential temperature at seafllor}
#'   \item{arag_dstoe_constant}{Constant time of emergence in aragonite Concentration}
#'   \item{calc_dstoe_constant}{Constant time of emergence in calcite Concentration}
#'   \item{co3_dstoe_constant}{Constant time of emergence in mole Concentration of Carbonate expressed as Carbon in Sea Water}
#'   \item{co3satarag_dstoe_constant}{Constant time of emergence in mole Concentration of Aragonite expressed as Carbon in Sea Water at Saturation}
#'   \item{co3satcalc_dstoe_constant}{Constant time of emergence in mole Concentration of Calcite expressed as Carbon in Sea Water at Saturation}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_dstoe_constant
NULL
