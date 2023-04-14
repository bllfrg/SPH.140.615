#' ANCOVA example 
#'
#' In this simulated data set we have three different treatments, and we are interested whether treatment has an effect on a response. In this example, the response might also depend on age.
#'
#' @docType data
#'
#' @usage dat.anc1
#'
#' @format A data frame with 36 rows and 3 columns. The response (rsp) is numeric, the treatment (trt) is a factor, and age is numeric.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(dat.anc1)
#' summary(dat.anc1)
#' tapply(dat.anc1$rsp,dat.anc1$trt,mean)
"dat.anc1"
