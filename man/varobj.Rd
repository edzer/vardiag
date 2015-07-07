\name{varobj}
\alias{varobj}
\title{Function for variogram fitting}
\description{
This function fits a variogram model to spatial data and calculates some statistics.
}
\usage{
varobj(m, iter = 50, tolerance = 2e-04, trace = 1, loo = FALSE)
}
\arguments{
  \item{m}{n by 3 matrix with spatial data}
  \item{iter}{this argument is put forward to the optimization routine}
  \item{tolerance}{this argument is put forward to the optimization routine}
  \item{trace}{if set to values higher than 1 some debug messages are given}
  \item{loo}{if set to TRUE, leave-one-out residuals are clculated}
}
\details{
  Only spherical variogram models are fitted.
}
\value{
  a variogram object
}
%\references{ ~put references to the literature/web site here ~ }
\author{Ernst  Glatzer}
%\note{ ~~further notes~~ }

\seealso{\code{\link{PlotDiag.varobj}}}

\references{ E. Glatzer, W.G. Mueller, 2004. Residual diagnostics for
variogram fitting. Computers and Geosciences 30, pp 859-866. }

\examples{
data(tulln)
}
\keyword{spatial}
