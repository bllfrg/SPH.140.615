#' Longitudinal data
#'
#' Simulated data to demonstrate the ultility of the lmer R function for linear mixed effects in a longitudinal data analysis.
#'
#' @docType data
#'
#' @usage dat.ex2
#'
#' @format A data frame with 120 rows and 4 columns. The response (y) and the main predictor (x) are numeric, the other predictors (id and group) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(dat.ex2)
#' summary(dat.ex2)
#' table(dat.ex2$group,dat.ex2$id)
"dat.ex2"
