#' get_point_interest function
#'
#' This function allows you return a data point of interest in the dataset for some player given an individual year.
#' @param nba the database of nba players
#' @param year the year you are looking at
#' @param player the player you are looking for
#' @param col_name the data you want
#' @keywords point of interest
#' @export
#' @import tidyverse
#' @examples
#' get_point_interest(nba,1950,"Curly Armstrong",Pos)

get_point_interest <- function(nba, year, player, col_name){
  col_name <- enquo(col_name)
  nba %>%
    filter(Year == year, Player == player) %>%
    select(Year, Player, !!col_name)
}
