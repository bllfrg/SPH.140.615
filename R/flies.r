#' Flies data
#'
#' Data from an experiment measuring size of flies among eight strains. Three jars per strain, eight flies per jar.
#'
#' @docType data
#'
#' @usage flies
#'
#' @format A data frame with 192 rows and 3 columns. The response (response) is numeric, the predictors (far and strain) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(flies)
#' summary(flies)
#' tapply(flies$response,list(flies$jar,flies$strain),mean)
"flies"
