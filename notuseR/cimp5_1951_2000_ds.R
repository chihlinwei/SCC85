#' Model-Averaging Linear Detrend Standard Deviation of Seafloor Climatic Data during 1951 to 2000
#'
#' Linear detrended standard deviation of historical export POC flux to seafloor, bottom dissolved oxygen concentration, hydrogen ion concentration
#' and temperature were calculated from the Geophysical Fluid Dynamics Laboratory’s ESM 2G (GFDL-ESM-2G), Institut Pierre
#' Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR) within the Coupled Models
#' Intercomparison Project Phase 5 (CIMP5).
#'
#' @details
#' Yearly linear-detrend standard deviation from 1951 to 2000 were calculated for the GFDL-ESM-2G, IPSL-CM5A-MR
#' and MPI-ESM-MR respectively. Ensemble average of the standard deviation was calculated among the three models for the periods of 1951 to 2000.
#' The export POC flux at seafloor was compute from the
#' export production at 100 m (epc100) using the Martin curve (Martin et al., 1987) following the quation:
#' \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was set to 100 m.
#' All CIMP5 data were download from \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' @docType data
#' @keywords datasets
#' @format A RasterBrick object of 4 raster layers:
#' \describe{
#'   \item{epc_ds_1951_to_2000}{Standard deviation of export POC flux to seafloor (mg C m^-2 d^-1)}
#'   \item{o2_ds_1951_to_2000}{Standard deviation of dissolved oxygen concentration at seafloor (mol m^-3)}
#'   \item{ph_ds_1951_to_2000}{Standard deviation of pH at seafloor}
#'   \item{thetao_ds_1951_to_2000}{Standard deviation of potential temperature at seafllor (K)}
#'   \item{arag_ds_1951_to_2000}{Standard deviation of aragonite Concentration (mol m-3)}
#'   \item{calc_ds_1951_to_2000}{Standard deviation of calcite Concentration (mol m-3)}
#'   \item{co3_ds_1951_to_2000}{Standard deviation of mole Concentration of Carbonate expressed as Carbon in Sea Water (mol m-3)}
#'   \item{co3satarag_ds_1951_to_2000}{Standard deviation of mole Concentration of Aragonite expressed as Carbon in Sea Water at Saturation (mol m-3)}
#'   \item{co3satcalc_ds_1951_to_2000}{Standard deviation of mole Concentration of Calcite expressed as Carbon in Sea Water at Saturation (mol m-3)}
#' }
#' @source \url{https://esgf-node.llnl.gov/search/esgf-llnl/}
#' @name cimp5_1951_2000_ds
#' @examples
#' # Mask the raster brick by 200 to 2000 m
#' r0 <- mask(cimp5_1951_2000_ds, mask2000)
#'
#' # Only show color between 1 to 99 percentile
#' r <- raster()
#' for(i in 1:4){
#'   d <- subset(r0, i)
#'   ma <- quantile(d, 0.99)
#'   mi <- quantile(d, 0.01)
#'   d[d>ma] <- ma
#'   d[d<mi] <- mi
#'   if(i==2) d <- d*15.9994 # to mg/L
#'   if(i==3) d <- log10(d)*(-1) # to total scale
#'   if(i==4) d <- d-273.15 # to degree C
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
