\name{QQVarcloud.varobj}
\alias{QQVarcloud.varobj}
\title{QQ-Plot of Variogram Cloud Entries}
\description{
Produces a qq-plot
of variogram cloud entries for a variogram object.
}
\usage{
QQVarcloud.varobj(v)
}
\arguments{
  \item{v}{A variogram object}
}
\details{
A plot is created on the current graphics device with
quantiles of the chi-square distribution on the horizontal axis
and ordered values of \eqn{\frac{(Z(s)-Z(s'))^2}{\gamma(s-s')}} on the
vertical axis.

A straight red line marks the expected curve of this plot.
Additionally approximate confidence bounds for 10\% significance
are given.
}
%\value{
%  ~Describe the value returned
%  If it is a LIST, use
%  \item{comp1 }{Description of `comp1'}
%  \item{comp2 }{Description of `comp2'}
%  ...
%}
%\references{ ~put references to the literature/web site here ~ }
\author{Ernst  Glatzer}
%\note{ ~~further notes~~ }

\seealso{\code{\link{PlotDiag.varobj}}}

\references{ E. Glatzer, W.G. Mueller, 2004. Residual diagnostics for
variogram fitting. Computers and Geosciences 30, pp 859-866. }

\examples{
data(tulln)
QQVarcloud.varobj(vs50)
}
\keyword{dynamic}
