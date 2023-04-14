#' Blood pressure data
#'
#' In this simulated data blood pressure is the outcome and two factors (two levels each) are predictors: water (plan and salted) and diet (normal and high fat).
#'
#' @docType data
#'
#' @usage dat.bp1
#'
#' @format A data frame with 80 rows and 3 columns. The response (bp) is numeric, the predictors (water and diet) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(dat.bp1)
#' summary(dat.bp1)
#' tapply(dat.bp1$bp,list(dat.bp1$water,dat.bp1$diet),mean)
"dat.bp1"
