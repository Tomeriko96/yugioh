#' Get Yugioh Database Version
#'
#' This function retrieves the current version of the Yugioh database.
#'
#' @return A list containing the database version and last update information.
#' @export
#' @examples
#' get_yugioh_database_version()
get_yugioh_database_version <- function() {
  url <- "https://db.ygoprodeck.com/api/v7/checkDBVer.php"

  # Make the API request
  response <- httr::GET(url)

  # Extract the response content
  jsonResponse <- httr::content(response, "text", encoding = "UTF-8")

  # Parse the JSON response
  database <- jsonlite::fromJSON(jsonResponse)

  # Extract the database version and last update information
  database_version <- database$database_version
  last_updated <- database$last_update

  # Print the database version
  message(paste(
    "Yugioh Database Version:", database_version, "\n",
    "Last updated on:", last_updated
  ))

  # Return the database version and last update information
  return(list(database_version = database_version, last_updated = last_updated))
}
