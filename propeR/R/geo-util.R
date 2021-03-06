##' A simple postcode to latitude and longitude converter.
##'
##' Generates a latitude and longitude (in decimal degrees) based on the postcode.
##'
##' @param postcode UK postcode
##' @return The latitude and longitude in decimal degrees.
##' @author Michael Hodge
##' @examples postcodeToDecimalDegrees('NP10 8XG')
##' @export
postcodeToDecimalDegrees <- function(postcode) {
  r <-
    jsonlite::fromJSON(paste0("http://api.getthedata.com/postcode/", postcode))
}

##' A backup postcode to latitude and longitude converter.
##'
##' Generates a latitude and longitude (in decimal degrees) based on the postcode.
##'
##' @param postcode UK postcode
##' @return The latitude and longitude in decimal degrees.
##' @author Michael Hodge
##' @examples postcodeToDecimalDegrees_backup('NP10 8XG')
##' @export
postcodeToDecimalDegrees_backup <- function(postcode) {
  r <-
    httr::GET(paste0("http://api.postcodes.io/postcodes/", postcode))
  httr::warn_for_status(r)
  httr::content(r)
}