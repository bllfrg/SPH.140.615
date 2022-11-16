#' Pea sections and sugar data
#'
#' Data from a an experiment measuring length of pea sections grown in tissue culture with auxin present. The purpose of the experiment was to investigate the effects of various sugars on growth. Four different treatments were used, plus one control (no sugar).
#'
#' @docType data
#'
#' @usage sugar
#'
#' @format An data frame with 50 rows and 2 columns. The response (rsp) is numeric, the treatment (trt) is a factor.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' sugar
#' str(sugar)
#' summary(sugar)
#' tapply(sugar$rsp,sugar$trt,mean)
"sugar"
