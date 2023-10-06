# Load the mismanaged_vs_gdp
# This data is per-capital mismanaged wasted
mismanaged_vs_gdp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-mismanaged-plastic-waste-vs-gdp-per-capita.csv")

mismanaged_gdp_10 <- mismanaged_vs_gdp %>%
  filter(Year == 2010) %>%
  select(Entity, `Per capita mismanaged plastic waste (kilograms per person per day)`)


usethis::use_data(mismanaged_gdp_10, overwrite = TRUE)
