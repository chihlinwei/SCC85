#' Data package for seafloor climage change (SCC85)
#'
#' SCC85 package contains ensemble model average of CIMP5 historical and RCP8.5 climate change projections.
#' Yearly mean were calculated from the Geophysical Fluid Dynamics Laboratory’s ESM 2G (GFDL-ESM-2G), Institut Pierre
#' Simon Laplace’s CM6-MR (IPSL-CM5A-MR) and Max Planck Institute’s ESM-MR (MPI-ESM-MR) within the Coupled Models
#' Intercomparison Project Phase 5 (CIMP5), respectively.
#' The ensemble averages of various model statistics were calculated among the three models for the periods of 1951 to 2000, 2041 to 2060 and 2081 to 2100.
#' The export POC flux at seafloor was computed from the export production at 100 m (epc100) using the Martin curve (Martin et al., 1987)
#' following the quation: \eqn{Flux = epc100*(depth/export depth)^-0.858}. The depth use \code{\link{etopo1}} and export depth was
#' set to 100 m. The aragonite (aragsat) and calcite staturation states (calcsat) were calculated as carbonate concentration (co3) divided by
#' carbonate concentration in equilibrium with aragonite (co3satarg) and carbonate concentration in equlibrium with calcite (co3satcalc), respectively.
#' It should be noted that the arag, co3satarg and aragsat were only available from GFDL-ESM-2G.
#' All CIMP5 data were download from \url{https://esgf-node.llnl.gov/search/esgf-llnl/}.
#' ...
#'
#' @author Chih-Lin Wei <chihlinwei@@gmail.com>
#' @docType data
#' @name SCC85
NULL

