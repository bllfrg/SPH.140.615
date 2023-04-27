#' Ticks data
#'
#' Data from the tick experiment. Place ticks on clay island surrounded by water, with two capillary tubes: one treated with deer-gland-substance, and one untreated.
#'
#' @docType data
#'
#' @usage ticks
#'
#' @format A data frame with 8 rows and 4 columns. Recorded are the tick sex (Tsex, fe for female and ma for male), the leg the gland substance came from (Leg, fo for fore leg, hi for hind leg), the deer sex (Dsex, fe for female and ma for male), number of ticks going to the treated tube (T) and the number of ticks going to the untreated tube (U).
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' ticks
#' str(ticks)
#' summary(ticks)
#' ticks$T/(ticks$T+ticks$U)
"ticks"
