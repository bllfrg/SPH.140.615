#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function calculates the Bonferroni corrected confidence intervals for all pairwise group comparisons, based on a pooled estimate of the within-group standard deviation from a one-way ANOVA.

#' @param response A numeric outcome.
#' @param group A factor specifying the treatment assignment.
#' @param alpha The significance level.

#' @keywords Multiple comparisons, Bonferroni.

#' @examples
#' summary(sugar)
#' ci.bonf(sugar$rsp, sugar$trt)

#' @export

ci.bonf <- function(response, group, alpha=0.05)
{
  # calculate anova table
  anova.out <- anova(aov(response~group))

  # within-group mean square
  ms <- anova.out[2,3]

  # number of individuals per group 
  n <- tapply(response, group, length)

  # se's: different for each pair if the sample sizes are different
  se <- sqrt(ms * outer(n,n, function(a,b) 1/a + 1/b))
  # pick out lower triangle
  se <- se[lower.tri(se)]

  # multipier from t distribution
  df <- anova.out[2,1]  # degrees of freedom 
  k <- length(n)
  ntests <- choose(k, 2) # number of pairs 
  tmult <- qt(1 - alpha/(2*ntests), df) 

  # calculate the pairwise differences between the sample means
  me <- tapply(response, group, mean)
  diffs <- outer(me,me,"-")
  # pick out the negative of the lower triangle
  d <- -diffs[lower.tri(diffs)]
  # assign names to these
  rn <- rownames(diffs)[row(diffs)[lower.tri(row(diffs))]]
  cn <- colnames(diffs)[col(diffs)[lower.tri(col(diffs))]]
  names(d) <- paste(cn,rn,sep=" - ")

  cbind(est=d, lower=d-tmult*se, upper=d+tmult*se)
}
