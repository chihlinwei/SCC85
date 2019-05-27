#' ETOPO1 Global Relief Model
#'
#' A RasterBrick of the Global Relief Model. A multi-layer raster object compiled from the Cell/pixel-registered ETOPO1 bedrock global relief model.
#' The grid resolution is reduced from 1 minutes to 0.5 degree by averaging.
#'
#' @docType data
#' @keywords datasets
#' @format A RasterLayer object of water depth
#' @source \url{https://www.ngdc.noaa.gov/mgg/global/global.html}
#' @name etopo1
#' @examples
#' mplot(etopo1, col.regions=terrain.colors,
#'       cut=100,
#'       main=expression(Depth~(m)))
NULL
