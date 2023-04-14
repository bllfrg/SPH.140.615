#' Blood pressure data
#'
#' In this simulated data blood pressure is the outcome and two factors (two levels each) are predictors: water (plan and salted) and diet (normal and high fat).
#'
#' @docType data
#'
#' @usage dat.bp2
#'
#' @format A data frame with 80 rows and 3 columns. The response (bp) is numeric, the predictors (water and diet) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(dat.bp2)
#' summary(dat.bp2)
#' tapply(dat.bp2$bp,list(dat.bp2$water,dat.bp2$diet),mean)
"dat.bp2"
