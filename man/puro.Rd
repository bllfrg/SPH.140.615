% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/puro.r
\docType{data}
\name{puro}
\alias{puro}
\title{An enzyme-catalysed reaction}
\format{
A data frame with 23 rows and 3 columns. The response (vel) and the concentration (conc) are numeric, the type of cell (state) is a factor.
}
\source{
\href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
}
\usage{
puro
}
\description{
Data from a biochemical experiment measuring the velocity (vel) as a function of substrate concentration (conc) for treated and untreated cells (state).
}
\examples{
puro
str(puro)
summary(puro)
plot(vel ~ conc, data=puro, xlab="concentration", ylab="initial velocity", lwd=2, col=ifelse(puro$state=="treated","blue","red"))
}
\keyword{datasets}
