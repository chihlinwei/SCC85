#' Wold map without political boundaries
#'
#' Pacific center Wold map without political boundaries
#'
#' @docType data
#' @keywords datasets
#' @format A SpatialPolygonsDataFrame
#' @name wld.pg2
#' library(maptools)
#' library(sp)
#' library(raster)
#'
#' # Pacific central map
#' prj <- "+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0 +lon_wrap=180"
#' e <- crop(wld.pg, extent(0, 180, -90, 90))
#' e <- spTransform(e, CRSobj=CRS(prj))
#' w <- crop(wld.pg, extent(-180, -0.00001, -90, 90))
#' w <- spTransform(w, CRSobj=CRS(prj))
#' wld2 <- rbind(e,w)
#' wld2 <- aggregate(wld2, dissolve=TRUE, FUN=mean)
#' wld.pg2 <- SpatialPolygonsDataFrame(wld2, data.frame(NA))
#' save(wld.pg2, file="wld.pg2.rda")
NULL
