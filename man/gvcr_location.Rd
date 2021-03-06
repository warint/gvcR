% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gvcR.R
\name{gvcr_location}
\alias{gvcr_location}
\title{gvcr_location}
\usage{
gvcr_location(location)
}
\arguments{
\item{location}{The name of the location.}
}
\value{
Location list
}
\description{
gvcr_location
}
\examples{
mycountry <- gvcr_location()
mycountry <- gvcr_location(location = "Panama Canal")
mycountry <- gvcr_location("Panama Canal")
}
\seealso{
\code{\link{gvcr_risk}} for the risk code and \code{\link{gvcr_data}} to collect data.
}
