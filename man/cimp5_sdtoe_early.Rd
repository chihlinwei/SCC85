% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cimp5_sdtoe_early.R
\docType{data}
\name{cimp5_sdtoe_early}
\alias{cimp5_sdtoe_early}
\title{Model-average Earliest Time of Emergence based on variability}
\format{
A RasterBrick object of 4 raster layers:
\describe{
  \item{epc_sdtoe_early}{Earliest time of emergence in export POC flux to seafloor}
  \item{o2_sdtoe_early}{Earliest time of emergence in dissolved oxygen concentration at seafloor}
  \item{ph_sdtoe_early}{Earliest time of emergence in pH at seafloor}
  \item{thetao_sdtoe_early}{Earliest time of emergence in potential temperature at seafllor}
  \item{arag_sdtoe_early}{Earliest time of emergence in aragonite Concentration}
  \item{calc_sdtoe_early}{Earliest time of emergence in calcite Concentration}
  \item{co3_sdtoe_early}{Earliest time of emergence in mole Concentration of Carbonate expressed as Carbon in Sea Water}
  \item{co3satarag_sdtoe_early}{Earliest time of emergence in carbonate ion concentration for seawater in equilibrium with pure aragonite}
  \item{co3satcalc_sdtoe_early}{Earliest time of emergence in carbonate ion concentration for seawater in equilibrium with pure calcite}
  \item{aragsat_sdtoe_early}{Earliest time of emergence in aragonite Saturation State}
  \item{calcsat_sdtoe_early}{Earliest time of emergence in calcite Saturation State}
}
}
\source{
\url{https://esgf-node.llnl.gov/search/esgf-llnl/}
}
\description{
Earliest time of emergence was estimated as the first year when climate change variability exceeds
historical climate variability.
}
\details{
Earliest time of emergence was calculated as the first year when the yearly cumulative future standard deviation
exceed the historical yearly standard deviation \code{\link{cimp5_1951_2000_sd}}.
}
\keyword{datasets}
