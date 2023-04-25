#' Copper data
#'
#' The copper data concern an analysis of copper using flame atomic absorption spectroscopy. There are two columns. the concentration of copper (in ppm) in a set of standards, and corresponding measurements of percent transmittance (via the spectroscopy procedure). 

#' @docType data
#'
#' @usage copper
#'
#' @format A data frame with 24 rows and 2 columns, the concentration of copper (concentration) and the corresponding measurements of percent transmittance (response).
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' copper
#' str(copper)
#' plot(copper$concentration,copper$response)
"copper"
