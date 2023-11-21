
## About `dvwaste`

Plastic pollution is a global crisis rapidly spiralling out of control, leaving a detrimental mark on our environment, oceans, and future generations. While plastic is a versatile material that has transformed various industries, its disposal and mismanagement have resulted in dire consequences. The aim of this R package is to explore the global plastic pollution problem through a **Shiny App** and relevant functions, by examining how much each country produces, how much mismanaged waste is produced, and the urgent need for effective waste management systems.

### Installation

```
devtools::install_github("maliny12/dvwaste")
```

## Overview

### Shiny App

The app is designed to increase awareness about the global plastic pollution issue, facilitate discussions on the topic, and offer insights into the countries that contribute the most to this environmental challenge. Through the app, users can interact with data and gain a deeper understanding of the scale of plastic waste generation and mismanagement worldwide. The app has a sleek interface that encourages exploration and learning.


```
# launch the R-Shiny app from dvwaste package
library(dvwaste)
dvwaste::run_app()
```

### Data 

The package includes 3 datasets related to plastic waste. They provide information on waste generation, mismanagement, and its relationship with GDP per capita in various countries. 

##### Annual Mismanaged Plastic Waste

```
# Load coast_waste_10
dvwaste::coast_waste_10

```
`coast_waste_10` dataset provides an annual estimate of plastic discharge in the year 2010. It is worth noting that this figure for each nation does not encompass waste exported abroad, which could have a higher likelihood of ending up in the ocean.

##### Daily Per-Capita Plastic Waste

```
# Load waste_gdp_10
dvwaste::waste_gdp_10

```
`waste_gdp_10` dataset contains information on the daily amount of plastic waste generated per individual, measured in kilograms per person per day. This measurement reflects the general per capita rate of plastic waste production before accounting for waste management, recycling, or incineration. Therefore, it does not directly indicate the potential risk of polluting waterways or marine environments.

##### Daily Per-Capita Mismanaged Plastic Waste

```
# Load mismanaged_gdp_10
dvwaste::mismanaged_gdp_10

```
In `mismanaged_gdp_10` dataset, mismanaged plastic waste refers to plastic that is either littered or improperly disposed of. The total for each country does not include waste shipped overseas, where it may also need to be appropriately managed.

##### Global Plastic Waste

```
# Load global_plastic_waste
dvwaste::global_plastic_waste

```

A dataset combining coast_waste_10 (Annual Mismanaged Plastic Waste), mismanaged_gdp_10 (Daily Per Capita Mismanaged Plastic Waste), and waste_gdp_10 (Daily Per Capita Plastic Waste).


### Functions 

##### Summary_Statistics_Function

This function summarizes either character/factor or numeric data, providing frequency, proportion, cumulative frequency, and other statistics based on the input type. It retruns a data frame with statistics such as frequency, proportion, cumulative frequency, and other summary measures, depending on the input type.

```
# Example with a factor
factor_input <- factor(c("A", "B", "A", "C", "B"))
descriptive_stats(factor_input)

# Example with a character vector
character_input <- c("A", "B", "A", "C", "B")
descriptive_stats(character_input)

# Example with a numeric vector
numeric_input <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
descriptive_stats(numeric_input)

```

##### Parameterised Bar Chart Function

This function This feature filters and processes data from the `coast_waste_10` dataset for selected countries to generate a tibble suitable for constructing a bar chart. It returns a table containing two columns: "Entity" (country names), and "Value" (Mismanaged plastic waste in tonnes). 

```
# select multiple countries
input_countries <- c("Bahamas", "Australia", "United States")
param_barchart(input_countries)

# Use default country_list value, return a table with all countries
param_barchart()

```


### License 


This package is available by [MIT](https://creativecommons.org/public-domain/cc0/) + file license. 


### Citation


```
Po M (2023). dvwaste: Global Plastic Waste Data Analysis and Visualisation. R package version 0.0.0.9000.

@Manual{,
  title = {dvwaste: Global Plastic Waste Data Analysis and Visualisation},
  author = {Maliny Po},
  year = {2023},
  note = {R package version 0.0.0.9000},
}
```


## References


**Literature citations:**

1. OECD, [Global plastic waste set to almost triple by 2060, says OECD](https://www.oecd.org/newsroom/global-plastic-waste-set-to-almost-triple-by-2060.htm)

2. A. V. Trotsenburge and L. J. Hoi (2022) [Turning the tide on plastic pollution through regional collaboration in Southeast Asia](https://blogs.worldbank.org/eastasiapacific/turning-tide-plastic-pollution-through-regional-collaboration-southeast-asia)

3. H. Ritchie, M. Roser, E. Mathieu, and B. Herre (2022), [Ocean plastics: How much do rich countries contribute by shipping their waste oversea. ](https://ourworldindata.org/plastic-waste-trade)

## Data Sources

*Coast_vs_waste* is available on: [TidyTuesday](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-05-21#coast_vs_wastecsv)

*Waste_vs_gdp* is available on: [TidyTuesday](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-05-21#coast_vs_wastecsv)

*Mismanaged_vs_gdp* is available on: [TidyTuesday](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-05-21#coast_vs_wastecsv)






