#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function carries out the linear regression based calibration introduced in class.

#' @param x Locations of the design points for the calibration line.
#' @param y Measurements of the observed outcomes for the calibration line.
#' @param newy New measurement(s) for which the calibration is needed.

#' @returns Estimate of the x value for the new y.

#' @keywords Calibration, linear regression.

#' @examples
#' quinine <- c(0,0,0, 12,12,12, 24,24,24, 36,36,36)
#' fluor <- c(100.45, 98.92,101.33, 133.19,127.33,126.78, 152.72,157.43,160.81, 188.73,191.96,183.70)
#' calibrate(quinine, fluor, 143.70)
#' newy <- c(148.56, 149.36, 150.29)
#' calibrate(quinine, fluor, newy)
#' @export

calibrate <- function(x, y, newy)
{
  if(length(x) != length(y))
    stop("x and y must be the sample length")

  # get the fitted line
  lm.out <- lm(y~x)
  lm.sum <- summary(lm.out)
  beta <- lm.out$coef   # estimated coefficients
  sigma <- lm.sum$sigma # estimated residual SD

  newyb <- mean(newy)   # take the average of the observed data
  n <- length(x)        # no. calibration data points
  m <- length(newy)     # no. measurements on the unknown

  # estimate of the unknown x
  xhat <- (newyb - beta[1])/beta[2]

  tmult <- qt(0.975, n-2)  # multiplier from the t distribution
  xbar <- mean(x)          # average of the calibration x's
  sxx <- sum((x-xbar)^2)   # SXX

  g <- tmult / (abs(beta[2]) / (sigma / sqrt(sxx)))

  if(g >= 1) {  # can't give a finite interval
    lo <- -Inf
    hi <- Inf
  }
  else {        # we're happy
    updown <- ((xhat - xbar)*g^2 + (tmult * sigma / abs(beta[2])) *
      sqrt((xhat-xbar)^2 / sxx + (1-g^2)*(1/m+1/n)))/(1-g^2)
    lo <- xhat - updown
    hi <- xhat + updown
  }

  result <- c(xhat,lo,hi)
  names(result) <- c("est","lo","hi")
  result
}
