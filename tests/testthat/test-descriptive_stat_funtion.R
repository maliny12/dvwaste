# Load the testthat package
library(testthat)
library(tidyverse)


describe("Testing for descriptive_stats function", {

  it("should return a dataframe with expected columns for character/factor input ", {
    # Arrange
    input <- factor(c("A", "B", "A", "C", "B"))

    # Act
    result <- descriptive_stats(input)

    # Assert
    expect_true("Value" %in% names(result))
    expect_true("Frequency" %in% names(result))
    expect_true("Proportion" %in% names(result))
    expect_true("Cumulative_Freq" %in% names(result))
    expect_true("Cumulative_Prop" %in% names(result))
    expect_identical(result$Value, c("A", "B", "C"))
  })

  it("should return a dataframe with expected columns for numeric input with at least 5 values ", {
    # Arrange
    input <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    # Act
    result <- descriptive_stats(input)

    # Assert
    expect_true("Mean" %in% names(result))
    expect_true("Median" %in% names(result))
    expect_true("SD" %in% names(result))
    expect_true("N_Sample" %in% names(result))
    expect_identical(colnames(result), c("Mean", "Median", "SD", "N_Sample"))
  })

  it("return an error message for non-atomic input should ", {
    # Arrange
    input <- list(1, 2, 3)  # Example of a non-atomic input

    # Act and Assert
    expect_error(descriptive_stats(input), "Input needs to be a vector.")
  })

  it("should return an error message for vector with all NAs ", {
    # Arrange
    input <- c(NA, NA, NA)  # Example of a vector with all NAs

    # Act and Assert
    expect_error(descriptive_stats(input), "Vector should have some value, not all NAs.")
  })

  it("should return an error message for input with less than 5 values ", {
    # Arrange
    input <- c(1, 2, 3)  # Example of a vector with less than 5 values

    # Act and Assert
    expect_error(descriptive_stats(input), "Input should be a numerical vector with more than 5 values.")
  })

})

