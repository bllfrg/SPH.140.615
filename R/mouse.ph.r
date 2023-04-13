#' Mouse pH data
#'
#' The data set contains the blood pH readings on male mouse litter mates of two strains that had been selected for high and low blood pH. Only litters with at least 4 males were considered, and 4 males were selected at random whenever more than 4 males were present in the litter. Data are presented on seven litters for each strain.
#'
#' @docType data
#'
#' @usage mouse.ph
#'
#' @format A data frame with 56 rows and 3 columns. The response (pH) is numeric, the predictors (strain and litter) are factors.
#'
#' @keywords datasets
#'
#' @source \href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
#'
#' @examples
#' str(mouse.ph)
#' summary(mouse.ph)
#' table(mouse.ph$strain,mouse.ph$litter)
#' tapply(mouse.ph$pH,mouse.ph$strain,mean)
#' tapply(mouse.ph$pH,mouse.ph$litter,mean)
"mouse.ph"
