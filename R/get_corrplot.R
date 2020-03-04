#' get_corrplot
#'
#' This function plots the correlogram of numeric continuous variables only for a given year.
#' @param nba the database of nba players
#' @param year the year you are looking at
#' @param method the type of correlogram to display
#' @keywords correlogram
#' @export
#' @import tidyverse
#' @import corrplot
#' @examples
#' get_corrplot(nba,1950)

get_corrplot <- function(nba, year, method = 'number'){
  sub_data_year <- filter(keep(nba, is.numeric), Year == year)
  mat_sub_data <- round(cor(sub_data_year), 2)
  corrplot(mat_sub_data, method=method)
}
