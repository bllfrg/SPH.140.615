#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function corrects the nested ANOVA table obtained from the aov() R function. It calculates the correct F statistic and p-value for the nested effect.

#' @param aov.out The output from the aov() function for nested ANOVA.

#' @returns The correct nested ANOVA table. 

#' @keywords Nested ANOVA, random effects.

#' @examples
#' data(mosq)
#' mosq.aov <- aov(length ~ cage / individual, data=mosq)
#' summary(mosq.aov)
#'
#' # The above is wrong. Below is the correct table.
#'
#' nested.anova(mosq.aov)


#' @export
nested.anova <- function(aov.output){
  anova.output <- anova(aov.output)
  nr <- nrow(anova.output) # number of rows in ANOVA table  
  ms <- anova.output[,3] # mean squares
  df <- anova.output[,1] # degrees of freedom
  F <- ms[-nr] / ms[-1] # new F ratios
  pval <- 1-pf(F, df[-nr], df[-1]) # new p-values
  anova.output[-nr,4] <- F
  anova.output[-nr,5] <- pval
  anova.output
}



