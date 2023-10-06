library(tidyverse)

# load the Coast_vs_waste data
# This data is Mismanaged waste in ton, by country
coast_vs_waste <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/coastal-population-vs-mismanaged-plastic.csv")

coast_waste_10 <- coast_vs_waste %>%
  filter(Year == 2010 & Entity != "World") %>% # Filter for observations in 2010
  select(Entity,`Mismanaged plastic waste (tonnes)`) %>% # Keep only the relevant columns
  na.omit()


usethis::use_data(coast_waste_10, overwrite = TRUE)
