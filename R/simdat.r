#' A simulated example for a two-way mixed effects ANOVA with replicates
#'
#' Five replicates for each of four treatments (A-D; fixed effects) recorded on each of 5 separate days (blocks B1-B5; random effects).
#'
#' @docType data
#'
#' @usage simdat
#'
#' @format A data frame with 100 rows and 3 columns. The response is numeric, the predictors treat and block are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(simdat)
#' summary(simdat)
#' tapply(simdat$response,list(simdat$treat,simdat$block),mean)
"simdat"
