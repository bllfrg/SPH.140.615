#' FEV data
#'
#' In these data the response is a measure of lung function (FEV, in liters). The other variables are the gender of a subject (male/female), the height (in inches), and whether or not that person is a smoker (yes/no).
#'
#' @docType data
#'
#' @usage fev
#'
#' @format A data frame with 1,000 rows and 4 columns. The response fev is numeric, the predictors gender and smoking are factors, the predictor height is numeric.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(fev)
#' head(fev)
#' summary(fev)
"fev"
