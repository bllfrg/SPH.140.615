% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cholesterol.r
\docType{data}
\name{cholesterol}
\alias{cholesterol}
\title{Cholesterol data}
\format{
A data frame with 383 rows and 3 columns. The response (chol) is numeric, the predictors (APOE and rs174548) are factors.
}
\source{
\href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
}
\usage{
cholesterol
}
\description{
Do certain genotypes affect cholesterol levels? The cholestrol dataset is available here, and contains the following variables: chol is the serum total cholesterol (mg/dl), APOE are the most common apolipoprotein E genotypes (2=e2/e3, 4=e3/e3, 5=e3/e4), rs174548 is a candidate SNP near 61.3Mb on chromosome 11, reported in dominant coding (0 is C/C, 1 is C/G or G/G).
}
\examples{
str(cholesterol)
summary(cholesterol)
tapply(cholesterol$chol,list(cholesterol$APOE,cholesterol$rs174548),mean)
}
\keyword{datasets}
