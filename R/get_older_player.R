#' @title get_older_player
#'
#' This function returns the older player for a given year. (for two players with the same age, alphabetical order is used)
#' @param nba the database of nba players
#' @param year the year you are looking at
#' @keywords older player
#' @export
#' @import tidyverse
#' @examples
#' get_older_player(nba,1950)

get_older_player <- function(nba, year){
  player_by_age <- nba %>%
    filter(Year == year) %>%
    select(Player, Age) %>%
    arrange(desc(Age), Player)
  return(player_by_age[1,])
}
