#' Meioses data
#'
#' Data from an experiment measuring the total number of crossovers on the 22 autosomes in each of the male and female meioses.
#'
#' @docType data
#'
#' @usage mosq
#'
#' @format A data frame with 92 rows and 3 columns. The data have three columns: family, female, male. These last two give the total number of crossovers on the 22 autosomes in each of the male and female meioses. All columns are integers.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' meioses
#' str(meioses)
#' summary(meioses)
#' tapply(meioses$female,meioses$family,mean)
#' tapply(meioses$male,meioses$family,mean)
"meioses"
