#' ETOPO1 Global Relief Model masked by 200 to 2500 m depth
#'
#' A RasterBrick of the Global Relief Model. A multi-layer raster object compiled from the Cell/pixel-registered ETOPO1 bedrock global relief model.
#' The grid resolution is reduced from 1 minutes to 0.5 degree by averaging.
#'
#' @docType data
#' @keywords datasets
#' @format A RasterLayer object of water depth
#' @source \url{https://www.ngdc.noaa.gov/mgg/global/global.html}
#' @name mask2500
#' @examples
#' mplot(mask2500, col.regions=terrain.colors,
#'       cut=100,
#'       main=expression(Depth~(m)))
NULL
