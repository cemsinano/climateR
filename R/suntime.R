#' suntime: Sunrise and sunset time of a particular city
#'
#' @importFrom httr, lubridate, stringr
#'
#' @param city string value
#'
#' @return list of sunrise and sunset time in the given city
#'
#'
#' @export
#'
#' @examples
#' get_suntime("London")

suntime <- function(city){
  
  #Error handling
  if (!is.character(city))
    stop("The city must be a string.")
  if (length(content(GET(paste0(query_base,"location/search/?query=",city)))) == 0)
    stop("This city does not exist.")
  
  #Base query
  query_base <- "https://www.metaweather.com/api/"
  
  #Retrieve where on earth id  and coordinates of city through API
  search_location <- content(GET(paste0(query_base,"location/search/?query=",city)))
  woeid <- search_location[[1]]$woeid
  
  
  search_values <- content(GET(paste0(query_base,"location/",woeid,"/")))
  
  sunrise <- ymd_hms(search_values$sun_rise)
  sunset <- ymd_hms(search_values$sun_set)
  
  sunrise_clean <- str_split(sunrise, " ")[[1]][2]
  sunset_clean <- str_split(sunset, " ")[[1]][2]
  
  return(list(sunrise = sunrise_clean, sunset = sunset_clean, day_time = sun_time))
}