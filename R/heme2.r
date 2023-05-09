#' Heme data
#'
#' For two species of heme the optical density was recorded as a function of H2O2 concentration.
#'
#' @docType data
#'
#' @usage heme2
#'
#' @format A data frame with 24 rows and 3 columns, the optical density (od) and the concentration of H2O2 (conc) are numeric, the species of heme (heme) is recorded as a factor.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' heme2
#' str(heme2)
#' summary(heme2)
#' plot(heme2$conc, heme2$od, xlab="concentration", ylab="optical density", col=rep(c("red","blue"),rep(12,2)))
"heme2"
