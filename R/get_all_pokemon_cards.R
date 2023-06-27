#' Retrieve all Pokémon TCG Card Data from API
#'
#' This function retrieves all Pokémon TCG card data from the API URL and converts it into a dataframe.
#'
#' @return A dataframe containing the retrieved Pokémon TCG card data.
#'
#' @examples
#' df <- get_all_pokemon_cards()
#'
#' @export
get_all_pokemon_cards <- function() {
  url <- "https://api.pokemontcg.io/v2/cards"
  
  # Make the API request
  response <- httr::GET(url)
  jsonResponseText <- httr::content(response,
                                    as = "text",
                                    encoding = "UTF-8"
  )
  
  # Convert JSON response to a dataframe
  df <- as.data.frame(jsonlite::fromJSON(jsonResponseText)) %>%
    dplyr::rename_with(~ stringr::str_remove(., "data."), dplyr::everything()) %>%
    type.convert(as.is = TRUE)
  
  return(df)
}
