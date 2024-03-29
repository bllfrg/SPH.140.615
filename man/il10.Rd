% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/il10.r
\docType{data}
\name{il10}
\alias{il10}
\title{IL10 cytokines}
\format{
A data frame with 146 rows and 2 columns. The response (IL10) is numeric, the strain (Strain) is a factor.
}
\source{
\href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
}
\usage{
il10
}
\description{
Data from a an experiment measuring IL10 cytokines in 21 different strains of mice.
}
\examples{
il10
str(il10)
summary(il10)
tapply(il10$IL10,il10$Strain,mean)
}
\keyword{datasets}
