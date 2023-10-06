#' @title Paramised Bar Chart Funtion
#'
#' @description
#' This function This feature filters and processes data from the 'coast_waste_10'
#' dataset for selected countries to generate a tibble suitable for constructing a bar chart.
#'
#' @usage param_barchart(country_list = character(0))
#'
#' @param country_list : A list/ vector of selected country. Country element must exist as an entry in
#' `coast_waste_10`' **Entity** column. If left empty (default), data for all valid countries will be included.
#'
#' # List of available `Entity` in coast_waste_10
#' available_countries <- coast_waste_10$Entity
#' available_countries
#'
#' @return A table A tibble containing two columns: "Entity" (country names)
#'  and "Value" (Mismanaged plastic waste in tonnes)
#'
#' @examples
#' # select multiple countries
#' input_countries <- c("Bahamas", "Australia", "United States")
#' param_barchart(input_countries)
#'
#' # Use default country_list value, return a table with all countries
#' param_barchart()
#'
#'
#' @export
#' @name param_barchart

library(tidyverse)
param_barchart <- function(country_list = character(0)) {

  # Cross check with
  valid_elem <- unique(coast_waste_10$Entity)
  invalid_elem <- setdiff(country_list, valid_elem)
  if (length(invalid_elem) > 0 ) {
    return(paste("Invalid countries: ", paste(invalid_elem, collapse = ", ")))
  }

  if (length(country_list) == 0) {

    # Make a new dataset containing all the countries
    tibble <- coast_waste_10 %>%
      select(Entity, `Mismanaged plastic waste (tonnes)`) %>%
      as_tibble()
    return(tibble)
  }

  if (length(country_list) > 0) {
    # Make a new dataset containing only the countries users want to see
    tibble <- coast_waste_10 %>%
      filter(coast_waste_10$Entity %in% country_list)  %>%
      select(Entity, `Mismanaged plastic waste (tonnes)`) %>%
      as_tibble()
    return(tibble)
  }
}




