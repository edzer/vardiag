\name{PlotDiag.varobj}
\alias{PlotDiag.varobj}
\title{Diagnostic Plots for Variograms}
\description{ Produces diagnostic plots for a variogram object. }
\usage{ PlotDiag.varobj(v, region = NULL, xyi = 0, zmv = 0) }
\arguments{
  \item{v}{A variogram object}
  \item{region}{a n by 2 matrix of vertices of a polygon,
    which represents the region of interest.}
  \item{xyi}{the index of the pair of observations, which shall be
    marked in the plots.}
  \item{zmv}{the value of \code{zmv}= determines which values will be
plotted as third dimension (via circles with radius corresponding
to the value) in the map view. The following values are possible:
\describe{
  \item{0}{no third dimension,}
  \item{1}{values of the original observations,}
  \item{2}{Cook's distances,}
  \item{3}{reduction in lack of fit.}
}
}
}
\details{
Four plots are created on the current graphics device.

These plots are a map
    view, a square root cloud with the fitted model, a leave-one-out plot and a plot of decorrelated residuals.
    If the argument \code{region} is given, this region is plotted as a polygon in the map view. If the argument
    \code{xyi} is given, the corresponding pair of observations is marked as a blue and a red point in the map view and
    connected by a magenta line. Furthermore all the points in the square root cloud, which contain the first (second)
    observation in the pair are marked blue (red). The one point that contains both observations of the selected pair
    is marked magenta. The points in the leave-one-out plot are marked analogously.
}
\value{
  No value is returned. The function is called for its side
  effects, i.e. creating plots.
}
%\references{ ~put references to the literature/web site here ~ }
\author{Ernst  Glatzer}
%\note{ ~~further notes~~ }

\seealso{\code{\link{interact.varobj}}}

\references{ E. Glatzer, W.G. Mueller, 2004. Residual diagnostics for
variogram fitting. Computers and Geosciences 30, pp 859-866. }

\examples{
data(tulln)
PlotDiag.varobj(vs50,region=tu1)
PlotDiag.varobj(vs50,region=tu1,xyi=144)
}
\keyword{dynamic}
