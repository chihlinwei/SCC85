#' A simple mapping function
#'
#' This function is a wrapper of  \code{\link{spplot}}
#'
#' @param x A Raster* object
#' @param loc A SpatialPointDataFrame object to add to the map
#' @param ... Any argument that can be passed to \code{\link{spplot}} and \code{\link{levelplot}}
#' @author Chih-Lin Wei <chihlinwei@@gmail.com>
#' @export
#' @examples
#' data("woa13ts")
#' mplot(woa13ts, col.regions=jet.colors2, cut=100)

mplot<-function(x, loc=NULL, fill="transparent", col="gray30",...){
  sp:::spplot(x,
         scales = list(draw = TRUE, cex=0.8),
         as.table=TRUE,
         panel=function(...){
           panel.fill("white")
           panel.levelplot.raster(...)
           data("wld.pg")
           sp.polygons(wld.pg, fill="gray80", col="gray50")
           if(!is.null(loc))sp.points(loc, pch=21, fill=fill, col=col, lwd=0.5)
         },...
  )
}
