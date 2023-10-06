# load the Coast_vs_waste data
# This data is Mismanaged waste in ton, by country
coast_vs_waste <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/coastal-population-vs-mismanaged-plastic.csv")

coast_waste_10 <- coast_vs_waste %>%
  filter(Year == 2010 & Entity != "World") %>% # Filter for observations in 2010
  select(Entity,`Mismanaged plastic waste (tonnes)`) # Keep only the relevant columns


# Load the Waste_vs_gdp data
# This data is per-capital plastic waste
waste_vs_gdp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-plastic-waste-vs-gdp-per-capita.csv")

waste_gdp_10 <- waste_vs_gdp %>%
  filter(Year == 2010) %>% # Filter for observations in 2010
  select(Entity,`Per capita plastic waste (kilograms per person per day)`) # Keep only the relevant columns

# Load the mismanaged_vs_gdp
# This data is per-capital mismanaged wasted
mismanaged_vs_gdp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-21/per-capita-mismanaged-plastic-waste-vs-gdp-per-capita.csv")

mismanaged_gdp_10 <- mismanaged_vs_gdp %>%
  filter(Year == 2010) %>%
  select(Entity, `Per capita mismanaged plastic waste (kilograms per person per day)`)

#Rename Entities to match with WorldData
waste_gdp_10$Entity[waste_gdp_10$Entity == "United States"] <- "USA"
waste_gdp_10$Entity[waste_gdp_10$Entity == "Democratic Republic of Congo"] <- "Democratic Republic of the Congo"
waste_gdp_10$Entity[waste_gdp_10$Entity == "United Kingdom"] <- "UK"
coast_waste_10$Entity[coast_waste_10$Entity == "United States"] <- "USA"
coast_waste_10$Entity[coast_waste_10$Entity == "Democratic Republic of Congo"] <- "Democratic Republic of the Congo"
coast_waste_10$Entity[coast_waste_10$Entity == "United Kingdom"] <- "UK"
mismanaged_gdp_10$Entity[mismanaged_gdp_10$Entity == "United States"] <- "USA"
mismanaged_gdp_10$Entity[mismanaged_gdp_10$Entity == "Democratic Republic of Congo"] <- "Democratic Republic of the Congo"
mismanaged_gdp_10$Entity[mismanaged_gdp_10$Entity == "United Kingdom"] <- "UK"


# Row bind all 3 datasets
global_plastic_waste <- left_join(waste_gdp_10, mismanaged_gdp_10, by='Entity') %>%
  left_join(., coast_waste_10, by='Entity') %>%
  rename("Daily_Plastic_Waste" = `Per capita plastic waste (kilograms per person per day)` ,
         "Daily_Mismanaged_Waste" = `Per capita mismanaged plastic waste (kilograms per person per day)`,
         "Mismanaged_Waste" = `Mismanaged plastic waste (tonnes)`)


usethis::use_data(global_plastic_waste, overwrite = TRUE)
