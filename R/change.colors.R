#' Color palettes to indicate change
#'
#' This function returns a list of color breaks and colors with white color showing no change
#' and warm and cold colors for the positive and negative changes, respectively.
#'
#' @param x A Raster* object
#' @author Chih-Lin Wei <chihlinwei@@gmail.com>
#' @export
#' @examples
#' # Changes in seafloor temperature at 2041 to 2060
#' col <- change.colors(subset(cimp5_2041_2060_ch,4))
#' mplot(subset(cimp5_2041_2060_ch,4), at=col$breaks, col.regions=col$col, main= expression(Temperature~(degree~C)))

change.colors <- function(x){
  absmax <- maxValue(abs(x))
  bks <- seq(-absmax, absmax, length = 100)
  Fn <- ecdf(bks)
  ln <- length(bks)
  mi <- minValue(x)
  mx <- maxValue(x)
  key.no <- (Fn(mi)*ln-1):(Fn(mx)*ln+1)
  if(any(key.no==0)) key.no <- key.no[-which(key.no==0)]
  if(any(key.no==ln+1)) key.no <- key.no[-which(key.no==ln+1)]
  key.bks <- bks[key.no]
  key.cols <- jet.colors3(ln-1)[key.no[-length(key.no)]]
  list(breaks=key.bks, col=key.cols)
}
