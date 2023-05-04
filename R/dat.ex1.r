#' Longitudinal data
#'
#' Simulated data to demonstrate the ultility of the lmer R function for linear mixed effects in a longitudinal data analysis.
#'
#' @docType data
#'
#' @usage dat.ex1
#'
#' @format A data frame with 120 rows and 4 columns. The response (y) and the main predictor (x) are numeric, the other predictors (id and group) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(dat.ex1)
#' summary(dat.ex1)
#' table(dat.ex1$group,dat.ex1$id)
"dat.ex1"
