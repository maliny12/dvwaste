#' @title Summary_Statistics_Function
#' @description
#' This function summarizes either character/factor or numeric data, providing
#' frequency, proportion, cumulative frequency, and other statistics based on the
#' input type.
#'
#' @usage descriptive_stats(x)
#'
#' @param x : A numeric, character, or factor vector.
#'
#'
#' @return A data frame with statistics such as frequency, proportion,
#' cumulative frequency, and other summary measures, depending on the input type.
#'
#' @examples
#' # Example with a factor
#' factor_input <- factor(c("A", "B", "A", "C", "B"))
#' descriptive_stats(factor_input)
#'
#' # Example with a character vector
#' character_input <- c("A", "B", "A", "C", "B")
#' descriptive_stats(character_input)
#'
#' # Example with a numeric vector
#' numeric_input <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
#' descriptive_stats(numeric_input)
#'
#' @export
#' @name descriptive_stats


library(tidyverse)

descriptive_stats <- function(x) {

  # If the argument is a character
  # The function will calculate the frequency, proportion
  # and cumulative proportion of the arguments
  if (is.character(x) || is.factor(x)) {
    value_counts <- table(x)
    total <- sum(value_counts)
    proportions <- value_counts/total
    cumulative_freq <- cumsum(value_counts)
    cumulative_prop <- cumsum(proportions)



    stats <- data.frame(
      Value = as.character(names(value_counts)),
      Frequency = as.integer(value_counts),
      Cumulative_Freq = as.integer(cumulative_freq),
      Proportion = proportions,
      Cumulative_Prop = cumulative_prop,
      row.names = NULL
    ) %>%
      select(-Proportion.x) %>%
      rename("Proportion" = "Proportion.Freq")

    # Sort the data frame by Frequency
    stats <- stats[order(-stats$Frequency), ]


  } else if (is.numeric(x) && length(x) >= 5) {
    mean <- mean(x)
    median <- median(x)
    sd <- sd(x)
    n_sample <- length(x)

    stats <- data.frame(
      Mean = as.numeric(mean),
      Median = as.numeric(median),
      SD =  as.numeric(sd),
      N_Sample =  as.numeric(n_sample)
    )
  }

  else if (!is.atomic(x)) stop("Input needs to be a vector.")

  else if (all(is.na(x))) stop("Vector should have some value, not all NAs.")

  else stop("Input should be a numerical vector with more than 5 values.")

  return(stats)
}

