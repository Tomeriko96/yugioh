#' Retrieve all Yugioh Card Data from API
#'
#' This function retrieves all Yugioh card data from the API URL and converts it into a dataframe.
#'
#' @return A dataframe containing the retrieved Yugioh card data.
#' @export
#'
#' @examples
#' df <- get_all_yugioh_cards()
get_all_yugioh_cards <- function() {
  url <- "https://db.ygoprodeck.com/api/v7/cardinfo.php"

  # Make the API request
  response <- httr::GET(url)
  jsonResponseText <- httr::content(response,
    as = "text",
    encoding = "UTF-8"
  )

  # Convert JSON response to a dataframe
  df <- as.data.frame(jsonlite::fromJSON(jsonResponseText)) %>%
    dplyr::rename_with(~ stringr::str_remove(., "data."), dplyr::everything())

  return(df)
}
