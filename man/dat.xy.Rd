% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dat.xy.r
\docType{data}
\name{dat.xy}
\alias{dat.xy}
\title{XY data}
\format{
A data frame with 48 rows and 2 columns, the predictor (X) and the response (Y).
}
\source{
\href{https://biostat.jhsph.edu/~iruczins/teaching/140.615/}{Class page}
}
\usage{
dat.xy
}
\description{
Some measurements to explore a linear relationship between a predictor and a response.
}
\examples{
head(dat.xy)
plot(dat.xy$X,dat.xy$Y)
}
\keyword{datasets}
