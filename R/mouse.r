#' Hibernating pocket mouse data
#'
#' The data were obtained in a study on energy utilization (in kcal/g) of the pocket mouse during hibernation at different temperatures.
#'
#' @docType data
#'
#' @usage mouse
#'
#' @format A data frame with 24 rows and 3 columns. The response (rsp) is numeric, the predictors (food and temperature) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' mouse
#' str(mouse)
#' summary(mouse)
#' tapply(mouse$rsp,list(mouse$food,mouse$temp),mean)
"mouse"
