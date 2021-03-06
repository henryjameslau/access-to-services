% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point-to-point-loop.R
\name{pointToPointLoop}
\alias{pointToPointLoop}
\title{Calculates the journey for a number of origins and/or destinations.}
\usage{
pointToPointLoop(output.dir, otpcon, originPoints, originPointsRow = 1,
  destinationPoints, destinationPointsRow = 1, journeyLoop = 0,
  journeyReturn = F, startDateAndTime = "2018-08-13 09:00:00",
  modes = "WALK, TRANSIT", maxWalkDistance = 1000,
  walkReluctance = 2, walkSpeed = 1.5, bikeSpeed = 5,
  minTransferTime = 1, maxTransfers = 5, wheelchair = F,
  arriveBy = F, preWaitTime = 15, distThreshold = F, distMax = 20)
}
\arguments{
\item{output.dir}{The directory for the output files}

\item{otpcon}{The OTP router URL, see ?otpcon for details}

\item{originPoints}{The variable containing origin(s), see ?importLocationData for details}

\item{originPointsRow}{The row of originPoints to be used, defaults to 1}

\item{destinationPoints}{The variable containing destination(s) see ?importLocationData for details}

\item{destinationPointsRow}{The row of destinationPoints to be used, defaults to 1}

\item{journeyLoop}{Specifies the type of loop, only origins (1), only destinations (2), or both (0, default)}

\item{journeyReturn}{Specifies whether the journey should be calculated as a return or not (default is TRUE)}

\item{startDateAndTime}{The start time and date, in 'YYYY-MM-DD HH:MM:SS' format}

\item{modes}{The mode of the journey, defaults to 'TRANSIT, WALK'}

\item{maxWalkDistance}{The maximum walking distance, in meters, defaults to 1000 m}

\item{walkReluctance}{The reluctance of walking-based routes, defaults to 2 (range 0 (lowest) - 20 (highest))}

\item{walkSpeed}{The walking soeed, in meters per second, defaults to 1.4 m/s}

\item{bikeSpeed}{The cycling speed, in meters per second, defaults to 4.3 m/s}

\item{minTransferTime}{The maximum transfer time, in minutes, defaults to 0 mins (no time specified)}

\item{maxTransfers}{The maximum number of transfers, defaults to 10}

\item{wheelchair}{If TRUE, uses on wheeelchair friendly stops, defaults to FALSE}

\item{arriveBy}{Selects whether journey starts at startDateandTime (FALSE) or finishes (TRUE), defaults to FALSE}

\item{preWaitTime}{The maximum waiting time before a journey cannot be found, in minutes, defaults to 15 mins}

\item{distThreshold}{Specify whether points have to be within a certain distance of each other to calculate, useful for big datasets (default is FALSE)}

\item{distMax}{Specify the maximum distance if distThreshold is TRUE (default is 20 km)}
}
\value{
Saves journey details as comma separated value file to output directory
}
\description{
Calculates the journey time and details between multiple origins and/or destinations. 
A comma separated value file of journey details is saved in the output folder.
}
\examples{
  pointToPointLoop(
    output.dir = 'C:\\Users\\User\\Documents',
    otpcon,
    originPoints,
    destinationPoints,
    journeyLoop = 0,
    journeyReturn = TRUE,
    startDateAndTime = "2018-08-18 12:00:00"
  )
}
\author{
Michael Hodge
}
