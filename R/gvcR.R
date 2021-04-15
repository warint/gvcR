
# Loading data
url <- paste0("https://warin.ca/datalake/gvcR/GVC_data.csv")
path <- file.path(tempdir(), "temp.csv")
curl::curl_download(url, path)
csv_file <- file.path(paste0(tempdir(), "/temp.csv"))
gvc_data <- readr::read_csv(csv_file)


# Creating the default values for the function query
# IF an entry is missing, all the observations of this variable will be displayed

gvc_location <- base::unique(gvc_data$location)
gvc_risk <- base::unique(gvc_data$risk)
gvc_level <- base::unique(gvc_data$level)
gvc_category <- base::unique(gvc_data$risk_category)


# Function 1: Data collection

#' gvcr_data
#'
#' @description This function allows you to find and display the Global Value Chains Risks data according to the selected parameters.
#' If no arguments are filled, all data will be displayed.
#'
#' @param locations Location of the risk.
#' @param risks Global value chain risk.
#' @param levels Level of the risk.
#' @param category Category of the risk.
#'
#' @import readr
#' @import dplyr
#'
#' @return Data for the location, risk, level and risk category requested.
#' @export
#'
#' @seealso \code{\link{gvcr_location}} for the locations list and \code{\link{gvcr_risk}} for the code of a risk.
#'
#' @examples
#'
#' myData<- gvcr_data(location = "Panama Canal", risks = "S-T")
#' myData<- gvcr_data(location = c("Panama Canal", "Suez Canal"), risks = c("S-T", "S-C"))
#' myData<- gvcr_data(category = "Weather and climate risk")
#' myData<- gvcr_data(levels = "High risk")
#' myData<- gvcr_data("Panama Canal", "S-T")
#' myData<- gvcr_data()

gvcr_data <- function(locations = gvc_location,
                      risks = gvc_risk,
                      levels = gvc_level,
                      category = gvc_category) {
  location <- risk_code <- level <- risk_category <- NULL
  out <- dplyr::filter(gvc_data,
                       location %in% locations,
                       risk_code %in% risks,
                       level %in% levels,
                       risk_category %in% category)
  return(out)
}


# Function 2: Risks' symbols query
# If the user does not know the code of a risk, s.he has access to the answer in natural language through this query

#' gvcr_risk
#'
#' @description This function allows you to find and search the right indicator code from the Social Progress Index you want to use.
#' If no argument is filed, all indicators will be displayed.
#'
#' @param risk The global value chains risk.
#'
#' @return The code of the global value chains risk.
#' @export
#'
#' @seealso \code{\link{gvcr_location}} for the locations list and \code{\link{gvcr_data}} to collect data.
#'
#' @examples
#'myIndicator <- gvcr_risk()
#'myIndicator <- gvcr_risk(risk = "storm")
#'myIndicator <- gvcr_risk("storm")

gvcr_risk <- function(risk) {
  gvc_risk_natural_language <- unique(gvc_data[, c(3,5,6)])
  if (missing(risk)) {
    gvc_risk_natural_language
  } else {
    gvc_risk_natural_language[grep(risk, gvc_risk_natural_language$risk, ignore.case = TRUE), ]
  }
}


# Function 3: Locations' code reconciliation
# If the user does not know the locations list, s.he has access to the answer in natural language through this query

#' gvcr_location
#'
#' @param location The name of the location.
#'
#' @return Location list
#' @export
#'
#' @seealso \code{\link{gvcr_risk}} for the risk code and \code{\link{gvcr_data}} to collect data.
#'
#' @examples
#'mycountry <- gvcr_location()
#'mycountry <- gvcr_location(location = "Panama Canal")
#'mycountry <- gvcr_location("Panama Canal")


gvcr_location <- function(location) {
  gvc_location_natural_language <- unique(gvc_data[, 1])
  if (missing(location)) {
    gvc_location_natural_language
  } else {
    gvc_location_natural_language[grep(location, gvc_location_natural_language$location, ignore.case = TRUE), ]
  }
}















