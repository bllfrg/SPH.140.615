#' IL10 cytokines 
#'
#' Data from a an experiment measuring IL10 cytokines in 21 different strains of mice.
#'
#' @docType data
#'
#' @usage il10
#'
#' @format A data frame with 146 rows and 2 columns. The response (IL10) is numeric, the strain (Strain) is a factor.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' il10
#' str(il10)
#' summary(il10)
#' tapply(il10$IL10,il10$Strain,mean)
"il10"
