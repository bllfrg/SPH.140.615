#' Spider mites data
#'
#' Data from an experiment exposing batches of 25 spider mites to different doses of DDT.
#'
#' @docType data
#'
#' @usage spiders
#'
#' @format A data frame with 7 rows and 3 columns. Recorded are the doses of DDT (dose), the number of dead spider mites in each batch after conclusion of the experiment (n.dead), and the number of spider mites per batch (n).
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' spiders
#' str(spiders)
#' summary(spiders)
#' spiders$n.dead/spiders$n
"spiders"
