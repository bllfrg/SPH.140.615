% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ld50se.r
\name{ld50se}
\alias{ld50se}
\title{A function used in the class Statistics for Laboratory Scientists (140.615/616).}
\usage{
ld50se(glm.out)
}
\arguments{
\item{glm.out}{The output from the logistic regression glm() function.}
}
\value{
The estimated standard error for the LD50 estimate.
}
\description{
This function estimates the standard error for the LD50 estimate based on a logistic regression.
}
\examples{
glm.out <- glm(n.dead/n ~ dose, data=spiders, weights=n, family=binomial(link=logit))
summary(glm.out)$coef
params <- glm.out$coef
params

# LD50 estimate 

ld50 <- -params[1]/params[2]
ld50

# Estimated standard error

se.ld50 <- ld50se(glm.out)
se.ld50
}
\keyword{LD50,}
\keyword{error.}
\keyword{logistic}
\keyword{regression,}
\keyword{standard}
