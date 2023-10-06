---
title: "Shiny App: Global Plastic Waste"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Shiny App: Global Plastic Waste}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---




```
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.3     ✔ readr     2.1.4
#> ✔ forcats   1.0.0     ✔ stringr   1.5.0
#> ✔ lubridate 1.9.2     ✔ tibble    3.2.1
#> ✔ purrr     1.0.2     ✔ tidyr     1.3.0
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
#> 
#> Attaching package: 'plotly'
#> 
#> 
#> The following object is masked from 'package:ggplot2':
#> 
#>     last_plot
#> 
#> 
#> The following object is masked from 'package:stats':
#> 
#>     filter
#> 
#> 
#> The following object is masked from 'package:graphics':
#> 
#>     layout
#> 
#> 
#> The legacy packages maptools, rgdal, and rgeos, underpinning the sp package,
#> which was just loaded, will retire in October 2023.
#> Please refer to R-spatial evolution reports for details, especially
#> https://r-spatial.org/r/2023/05/15/evolution4.html.
#> It may be desirable to make the sf package available;
#> package maintainers should consider adding sf to Suggests:.
#> The sp package is now running under evolution status 2
#>      (status 2 uses the sf package in place of rgdal)
#> 
#> Please note that 'maptools' will be retired during October 2023,
#> plan transition at your earliest convenience (see
#> https://r-spatial.org/r/2023/05/15/evolution4.html and earlier blogs
#> for guidance);some functionality will be moved to 'sp'.
#>  Checking rgeos availability: FALSE
#> 
#> Loading required package: maps
#> 
#> 
#> Attaching package: 'maps'
#> 
#> 
#> The following object is masked from 'package:purrr':
#> 
#>     map
```

## About The App

The "Global Plastic Pollution" R Shiny app is created with the goal of increasing awareness about the issue of plastic pollution on a global scale. This interactive app allows users to explore data related to plastic waste generation and mismanagement in an informative way. 

To begin, the app loads data from the `dvwaste` package, containing information about plastic waste, mismanaged plastic waste, and GDP per capita for different countries. 

The app features an interactive heatmap function that allows users to visualize different aspects of plastic waste data. Users can choose from three data types, which include per capita plastic waste, per capita mismanaged plastic waste, and mismanaged waste in ton by country. They can also select a specific region or view global data. 

Additionally, the app provides a bar chart function that allows users to select specific countries and see their contributions to mismanaged plastic waste in tons. They can select one or more countries to visualize their data. Users can also explore a top 5 bar chart function displaying the top 5 contributors to mismanaged plastic waste in tons, based on their selection of data type and region. 

The app's user interface includes navigation tabs for different sections, interactive controls to select data type, region, and countries, and a visually appealing display of heatmaps and charts. The "Data Explorer" page provides information about the app's purpose, a description of the data sources used, and a link to a blog post for further reading on plastic pollution. 

Overall, the app is designed to raise awareness about the global plastic pollution problem, encourage discussions about this issue, and provide insights into which countries contribute the most to this environmental challenge. By interacting with the app, users can gain a better understanding of the magnitude of plastic waste generation and mismanagement worldwide. 

## Usage

To launch the Shiny App, user can... 


```r
# Command to launch the R-Shiny app
library(dvwaste)
dvwaste::run_app()
```

## Shiny App: User Manual 

### Interactive Map

In the app's Interactive Map section, you can see plastic waste data in an interactive map format. Here's how to use it:

- Map Display: The map is at the center of the screen. You can interact with it to explore data.
Data Type Selection: Use the `Select Data Type` dropdown to pick the data type you want to see. You can choose from **Per capita plastic waste**, **Per capita mismanaged plastic waste**, or **Mismanaged waste in tons by country**.

- Region Selection: Choose a region from the `Select Region` dropdown menu to focus on specific geographic areas. Options include **World**, **North America**, **Europe**, **Oceania**, **Asia**, **South America**, and **Africa**.

- Country Selection: If you want to view data for specific countries, use the `Select countries` dropdown to choose one or more countries from the list. This lets you compare data for multiple countries.

- Bar Chart: On the right side of the screen, the bar chart displays the top 5 contributors based on the selected data type and region.



```r
include_graphics("../man/figures/interactive_map.png")
```

<img src="../man/figures/interactive_map.png" width="2980" />




