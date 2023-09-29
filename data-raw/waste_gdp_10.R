## code to prepare `waste_gdp_10` dataset goes here

# Load the Waste_vs_gdp data
# This data is per-capital plastic waste
waste_vs_gdp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-plastic-waste-vs-gdp-per-capita.csv")

waste_gdp_10 <- waste_vs_gdp %>%
  filter(Year == 2010) %>% # Filter for observations in 2010
  select(Entity,`Per capita plastic waste (kilograms per person per day)`) # Keep only the relevant columns

usethis::use_data(waste_gdp_10, overwrite = TRUE)
