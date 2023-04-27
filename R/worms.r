#' Tobacco budworm data
#'
#' Data from an experiment involving the tobacco budworm, Heliothis virescens. Batches of 20 male and 20 female worms were given a 3-day dose of pyrethroid trans-cypermethrin The number dead in each batch was recorded.
#'
#' @docType data
#'
#' @usage worms
#'
#' @format A data frame with 12 rows and 4 columns. Recorded are the doses (dose), the number of dead worms in each batch after conclusion of the experiment (n.dead), the number of worms per batch (n) and the sex of the worms (sex).
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' worms
#' worms$n.dead/worms$n
"worms"
