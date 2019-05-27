#' Re-scale Color Palettes Function
#'
#' This function is a wrapper of color interpolation  \code{\link{colorRampPalette}},
#' which takes an color palettes function
#' and re-scale palettes in square root, 4th root and log scales.
#'
#' @param col_fun A Color Palettes function
#' @param scale A character string of "2nd", "4th" and "log" to rescale the color palettes indicated by col_fun
#' @return returns a function that takes an integer argument (the required number of colors) and returns a character vector of colors (see \code{\link{rgb}}) interpolating the given sequence (similar to \code{\link{heat.colors}} or \code{\link{terrain.colors}}.
#' @author Chih-Lin Wei <chihlinwei@@gmail.com>
#' @export
#' @examples
#' log.colors <- scale_colorPalette(heat.colors, "log")

scale_colorPalette <- function(col_fun=jet.colors, scale="2nd"){
  if(scale=="2nd") f <- colorRampPalette(level.colors(1:100, seq(1, 100^0.5, len=101)^2, col.regions=match.fun(col_fun)))
  if(scale=="4th") f <- colorRampPalette(level.colors(1:100, seq(1, 100^0.25, len=101)^4, col.regions=match.fun(col_fun)))
  if(scale=="log") f <- colorRampPalette(level.colors(1:100, 10^seq(0, 2, len=101), col.regions=match.fun(col_fun)))
  return(f)
}
