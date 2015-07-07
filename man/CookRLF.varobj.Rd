\name{CookRLF.varobj}
\alias{CookRLF.varobj}
\title{Plot of Cook's Distances and Reduction Lack of Fit}
\description{
Produces a plot of
Cook's Distances and Lack of Fit for a variogram object.}
\usage{
CookRLF.varobj(v)
}
\arguments{
  \item{v}{An object of class varobj}
}
\details{
A plot is created on the current graphics device with Reduction in Lack
of Fit on the horizontal axis and Cook's Distances on the vertical axis.

After the plot is created, the cursor changes to a cross and points can
be identified by left mouse clicks. When there are no further points to
be identified, the identification can be ended by a right mouse click.
}

\author{Ernst  Glatzer}

\seealso{\code{\link{PlotDiag.varobj}}}


\references{ E. Glatzer, W.G. Mueller, 2004. Residual diagnostics for
variogram fitting. Computers and Geosciences 30, pp 859-866. }

\examples{
data(tulln)
CookRLF.varobj(vs50)
}
\keyword{dynamic}
