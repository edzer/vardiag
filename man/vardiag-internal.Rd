\name{vardiag-internal}
\alias{estvar}
\alias{ficorr}
\alias{ftc}
\alias{ftg}
\alias{fth}
\alias{fts}
\alias{ftsOpt}
\alias{gamsph}
\alias{gamsph1}
\alias{gamsph2}
\alias{gamsph3}
\alias{hyperg}
\alias{print.varobj}

\title{Internal vardiag functions}

\description{
Internal functions for package vardiag.
}

\usage{
estvar(h0, y, iter = 50, tolerance = 2e-04, trace = 1, th0 = rbind(0, 1, 1))
ficorr(r)
ftc(th, y, h1, w1)
ftg(th, y, h1, cv1)
fth(th, y, h1, w1 = 1)
fts(th, y, h1, cv1)
gamsph(h, th = rbind(1, 1, 1))
gamsph1(h, th = rbind(1, 1, 1))
gamsph2(h, th = rbind(1, 1, 1))
gamsph3(h, th = rbind(1, 1, 1))
hyperg(r)
\method{print}{varobj}(x, ...)
}

\arguments{
  \item{...}{}
  \item{cv1}{}
  \item{h}{}
  \item{h0}{}
  \item{h1}{}
  \item{iter}{}
  \item{r}{}
  \item{th}{}
  \item{th0}{}
  \item{tolerance}{}
  \item{trace}{}
  \item{w1}{}
  \item{x}{}
  \item{y}{}
}

\details{
These functions are not intended to be called by the user.
}

\author{Ernst Glatzer}

\keyword{internal}
