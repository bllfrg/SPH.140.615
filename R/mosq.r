#' Mosquito data
#'
#' Data from an experiment measuring length of mosquito wings (two measurements per mosquito). Four mosquitos per cage. Three cages total.
#'
#' @docType data
#'
#' @usage mosq
#'
#' @format A data frame with 24 rows and 3 columns. The response (length) is numeric, the predictors (cage and individual) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' mosq
#' str(mosq)
#' summary(mosq)
#' tapply(mosq$length,list(mosq$individual,mosq$cage),mean)
"mosq"
