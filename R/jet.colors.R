#' 'jet.colors' function
#'
#' This function is a wrapper of color interpolation  \code{\link{colorRampPalette}},
#' which takes an integer argument (the required number of colors)
#' and returns a character vector of colors
#'
#' @param n An integer argument (the required number of colors)
jet.colors <-colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
#' @describeIn jet.colors Reversed 'jet.colors'
jet.col.rev <-colorRampPalette(rev(c("#00007F", "blue", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000")))
#' @describeIn jet.colors Easier-on-eye version of 'jet.colors'
jet.colors2 <- colorRampPalette(rev(c("#7F0000", "red2", "red", "orange", "yellow2", "yellow", "#7FFF7F", "cyan", "blue")), bias = 1)
#' @describeIn jet.colors same jet.colors' with "white" color in the middle
jet.colors3 <-colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan","white", "yellow", "#FF7F00", "red", "#7F0000"))
#' @describeIn jet.colors same jet.colors' starts with "white" color
jet.colors4 <-colorRampPalette(c("#FFFFFF", "#7FBFFF", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
#' @describeIn jet.colors Same jet.colors in log scale
jet.col.log <- colorRampPalette(level.colors(1:100, 10^do.breaks(c(0, 2), 101), col.regions=jet.colors))
#' @describeIn jet.colors Key colors and color breaks for jet.colors3
jet.colors3.key <- function(x){
  absmax <- maxValue(abs(x))
  bks <- seq(-absmax, absmax, length = 100)
  Fn <- ecdf(bks)
  ln <- length(bks)
  mi <- minValue(x)
  mx <- maxValue(x)
  key.no <- (Fn(mi)*ln):(Fn(mx)*ln)
  key.bks <- bks[key.no]
  key.cols <- jet.colors3(ln-1)[key.no[-length(key.no)]]
  list(key.bks, key.cols)
}
#' @return a character vector of interpolated colors
#' @author Chih-Lin Wei <chihlinwei@@gmail.com>
#' @examples
#' jet.colors(10)
#' @export
jet.colors <-colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
#' @export
jet.col.rev <-colorRampPalette(rev(c("#00007F", "blue", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000")))
#' @export
jet.colors2 <- colorRampPalette(rev(c("#7F0000", "red2", "red", "orange", "yellow2", "yellow", "#7FFF7F", "cyan", "blue")), bias = 1)
#' @export
jet.colors3 <-colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan","white", "yellow", "#FF7F00", "red", "#7F0000"))
#' @export
jet.colors4 <-colorRampPalette(c("#FFFFFF", "#7FBFFF", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
#' @export
jet.col.log <- colorRampPalette(level.colors(1:100, 10^do.breaks(c(0, 2), 101), col.regions=jet.colors))
#' @export
jet.colors3.key <- function(x){
  absmax <- maxValue(abs(x))
  bks <- seq(-absmax, absmax, length = 100)
  Fn <- ecdf(bks)
  ln <- length(bks)
  mi <- minValue(x)
  mx <- maxValue(x)
  key.no <- (Fn(mi)*ln):(Fn(mx)*ln)
  key.bks <- bks[key.no]
  key.cols <- jet.colors3(ln-1)[key.no[-length(key.no)]]
  list(key.bks, key.cols)
}
#' @export
scale.colors <- function(n=100, col_fun=jet.colors, scale="2nd"){
  if(scale=="2nd") f <- colorRampPalette(level.colors(1:100, do.breaks(c(0, 100^0.5), 101)^2, col.regions=match.fun(col_fun)))
  if(scale=="4th") f <- colorRampPalette(level.colors(1:100, do.breaks(c(0, 100^0.25), 101)^4, col.regions=match.fun(col_fun)))
  if(scale=="log") f <- colorRampPalette(level.colors(1:100, 10^do.breaks(c(0, 2), 101), col.regions=match.fun(col_fun)))
  return(f(n))
}
