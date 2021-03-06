% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimates.R
\name{calcN}
\alias{calcN}
\alias{calcN.efit}
\alias{calcN.efitM}
\alias{calcN.efitR}
\title{calcN}
\usage{
calcN(obj, ...)

\method{calcN}{efit}(obj, newdata, off.set = NULL, CI.level = 0.95, ...)

\method{calcN}{efitM}(obj, newdata, off.set = NULL, CI.level = 0.95, ...)

\method{calcN}{efitR}(obj, off.set = NULL, CI.level = 0.95, ...)
}
\arguments{
\item{obj}{A fitted model object.}

\item{newdata}{An (optional) \code{data.frame} of covariates for spatial units of interest.
There must by covariate values for every parameter in \code{obj}.}

\item{off.set}{Either a scalar offset value to apply to each spatial unit
for prediction (e.g. cell area) or a vector of the same length as \code{nrow(newdata)}.}
}
\value{
a \code{data.frame} giving the predictions for each spatial unit
 as well as the overall abundance estimate for the region with associated
 SE and confidence intervals.
}
\description{
\code{calcN} estimates abundance for a defined region from a fitted model.  The default is for the population defined by the sampling units.  The user can optionally supply a data.frame
of covariate values for any spatial unit of interest.
}
\examples{
 counts<- san_nic_pre$counts
 emf <- eFrame(y=counts)
 mod <- nmix(~1, ~1, data=emf)
 Nhat<- calcN(mod)

}
