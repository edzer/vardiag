\name{interact.varobj}
\alias{interact.varobj}
\title{Interactive Identification of Points in a Variogram Diagnostics
Plot}
\description{
Initiates selection of points in a Variogram Diagnostics Plot.
}
\usage{
interact.varobj(v, region = NULL, g = "s", pchi = 0.05, zmv = 0)
}
\arguments{
  \item{v}{A variogram object}
  \item{region}{a n by 2 matrix of vertices of a polygon,
    which represents the region of interest.}
  \item{g}{the type of interaction with the following options:
  \describe{
  \item{l}{selection of a point in the leave-one-out plot.}
  \item{m}{selection of one or two points in the map view. After selection of one point the
            selection process can be stopped by a right mouse click.}
  \item{n}{selection of a polygon region in the map view. This can
            be done by left clicking on the vertices of the polygon and
            stopping by a right mouse click.}
  \item{s}{selection of a point in the studentized square root
            cloud.}
  \item{t}{selection of a polygon region in the studentized square root
            cloud. This can
            be done by left clicking on the vertices of the polygon and
            stopping by a right mouse click.}
  \item{x}{selection of all points in the studentized square root
            cloud outside an approximate confidence bound with significance level given by \code{pchi}.}
}
}
  \item{pchi}{the significance level of the confidence bounds, if option
\code{g="x"} is given.}
  \item{zmv}{the value of \code{zmv} determines which values will be
ploted as third dimension (via circles with radius corresponding
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
  Before the call of this function a diagnostic plot must be
created by a call to the function \code{PlotDiag.varobj}.

If one point in the map view is selected, this point is marked
blue and the index of this observation is printed near the point.
All corresponding points in the square root cloud and the
leave-one-out plot are marked blue.

If two points in the map view (or one point in the square root
cloud or in the leave-one-out plot) are selected, this pair of
points is joined by a magenta line and the corresponding point in
the square root cloud is marked magenta. One of the selected
points in the map view and all corresponding points in the square
root cloud and the leave-one-out plot are marked blue. The other
selected point in the map view and all corresponding points in the
square root cloud and the leave-one-out plot are marked red.

If a region is selected in the map view, all possible pairs of
points within the region are joined by magenta lines and for each
pair the corresponding point in the square root cloud is marked
magenta.

If a region in the square root cloud is selected, all points
within that region are marked magenta and all corresponding pairs
of points in the map view are joined by magenta lines.

If option \code{g="x"} is selected, all points in the square root
cloud outside the chosen confidence bound are marked magenta and
all corresponding pairs of points in the map view are joined by
magenta lines.
}
\value{
 the index of the selected pair of observations.
}
%\references{ ~put references to the literature/web site here ~ }
\author{Ernst  Glatzer}
%\note{ ~~further notes~~ }

\seealso{\code{\link{PlotDiag.varobj}}}

\references{ E. Glatzer, W.G. Mueller, 2004. Residual diagnostics for
variogram fitting. Computers and Geosciences 30, pp 859-866. }

\examples{
data(tulln)
PlotDiag.varobj(vs50,region=tu1)
% interact.varobj(vs50,region=tu1,g='s')
}
\keyword{dynamic}
