#' Wold map without political boundaries
#'
#' Atlantic center Wold map without political boundaries
#'
#' @docType data
#' @keywords datasets
#' @format A SpatialPolygonsDataFrame
#' @name wld.pg
#' library(maptools)
#' library(sp)
#' library(raster)
#'
#' # Atlantic central map
#' wld1 <- readShapePoly("../GIS/GSHHS_shp/c/GSHHS_c_L1")
#' wld2 <- readShapePoly("../GIS/GSHHS_shp/c/GSHHS_c_L5")
#' wld <- rbind(wld1, wld2)
#' wld <- aggregate(wld, dissolve=TRUE, FUN=mean)
#' prj <- "+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
#' wld.pg <- SpatialPolygonsDataFrame(wld, data.frame(NA))
#' projection(wld.pg) <- prj
#' save(wld.pg, file="wld.pg.rda")
NULL
