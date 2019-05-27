#' Coefficient Variation of the Mean Seafloor Climatic Data among CIMP5 Models during 1951 to 2000
#'
#' Coefficient variation of the mean historical export POC flux to seafloor, bottom dissolved oxygen concentration,
#' hydrogen ion concentration and temperature were averaged from the Geophysical Fluid Dynamics Laboratory’s ESM 2G
#' (GFDL-ESM-2G), Institut Pierre Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR)
#' within the Coupled Models Intercomparison Project Phase 5 (CIMP5).
#'
#' @details
#' Yearly mean from 1951 to 2000 (historical) were calculated for the GFDL-ESM-2G, IPSL-CM5A-MR and MPI-ESM-MR respectively. Coefficient variation of the mean
#' was calculated among the three models for the periods of 1951 to 2000. The export POC flux at seafloor was compute from the
#' export production at 100 m (epc100) using the Martin curve (Martin et al., 1987) following the quation:
#' \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was set to 100 m.
#' All CIMP5 data were download from
#' \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_cv_1951_to_2000}{Coefficient variation of the mean export POC flux to seafloor (\%)}
#'   \item{o2_cv_1951_to_2000}{Coefficient variation of the mean dissolved oxygen concentration at seafloor (\%)}
#'   \item{ph_cv_1951_to_2000}{Coefficient variation of the mean pH at seafloor (\%)}
#'   \item{thetao_cv_1951_to_2000}{Coefficient variation of the mean potential temperature at seafllor (\%)}
#'   \item{arag_cv_1951_to_2000}{Coefficient variation of aragonite Concentration (\%)}
#'   \item{calc_cv_1951_to_2000}{Coefficient variation of calcite Concentration (\%)}
#'   \item{co3_cv_1951_to_2000}{Coefficient variation of mole Concentration of Carbonate expressed as Carbon in Sea Water (\%)}
#'   \item{co3satarag_cv_1951_to_2000}{Coefficient variation of mole Concentration of Aragonite expressed as Carbon in Sea Water at Saturation (\%)}
#'   \item{co3satcalc_cv_1951_to_2000}{Coefficient variation of mole Concentration of Calcite expressed as Carbon in Sea Water at Saturation (\%)}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_1951_2000_cv
#' @examples
#' # Mask the raster brick by 200 to 2000 m
#' r0 <- mask(cimp5_1951_2000_cv, mask2000)
#'
#' # Only show color between 1 to 99 percentile
#' r <- raster()
#' for(i in 1:4){
#'   d <- subset(r0, i)
#'   ma <- quantile(d, 0.99)
#'   mi <- quantile(d, 0.01)
#'   d[d>ma] <- ma
#'   d[d<mi] <- mi
#'   r <- addLayer(r, d)
#' }
#' names(r) <- names(r0)
#'
#' # plot on google earth
#' library(plotKML)
#' for(i in 1:4){
#'   plotKML(subset(r, i), folder.name=names(r)[i],
#'           colour_scale = jet.col.log(100),
#'           raster_name = paste(names(r)[i], "png", sep="."))
#' }
NULL
