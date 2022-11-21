#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function estimates the standard error for the LD50 estimate based on a logistic regression.

#' @param glm.out The output from the logistic regression glm() function.

#' @returns The estimated standard error for the LD50 estimate.

#' @keywords LD50, logistic regression, standard error.

#' @examples
#' glm.out <- glm(n.dead/n ~ dose, data=spiders, weights=n, family=binomial(link=logit))
#' summary(glm.out)$coef
#' params <- glm.out$coef
#' params
#'
#' # LD50 estimate 
#'
#' ld50 <- -params[1]/params[2]
#' ld50
#'
#' # Estimated standard error
#'
#' se.ld50 <- ld50se(glm.out)
#' se.ld50
#' @export

ld50se <- function(glm.out){
  glm.sum <- summary(glm.out)
  co <- glm.out$coef
  ld50 <- -co[1]/co[2]
  se.co <- glm.sum$coef[,2]
  cov.co <- glm.sum$cov.scaled[1,2]
  se.ld50 <- abs(ld50) * sqrt( (se.co[1]/co[1])^2 + (se.co[2]/co[2])^2 - 2*cov.co/(co[1]*co[2]) )
}

