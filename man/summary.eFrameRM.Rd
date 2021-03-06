% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eFrame.R
\name{summary.eFrameRM}
\alias{summary.eFrameRM}
\title{summary.eFrameRM}
\usage{
\method{summary}{eFrameRM}(object, ...)
}
\arguments{
\item{object}{An \code{eFrameRM} object.}
}
\value{
a \code{list} containing various summaries of the data
}
\description{
\code{summary} method for eFrameRM objects.
}
\examples{
 ## uses san_nic_rem
 emf <- eFrameRM(y=rem, y1=y1, cells=cells, Z=nights)
 summary(emf)

}
