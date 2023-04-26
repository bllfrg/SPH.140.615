#' An enzyme-catalysed reaction
#'
#' Data from a biochemical experiment measuring the velocity (vel) as a function of substrate concentration (conc) for treated and untreated cells (state).
#'
#' @docType data
#'
#' @usage puro
#'
#' @format A data frame with 23 rows and 3 columns. The response (vel) and the concentration (conc) are numeric, the type of cell (state) is a factor.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' puro
#' str(puro)
#' summary(puro)
#' plot(vel ~ conc, data=puro, xlab="concentration", ylab="initial velocity", lwd=2, col=ifelse(puro$state=="treated","blue","red"))
"puro"
