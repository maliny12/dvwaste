library(testthat)
library(tidyverse)

# Define tests using describe and it
describe("Testing param_barchart function", {

  it("should returns all countries if country_list argument is left as default", {
    out <- param_barchart()
    expect_s3_class(out, "tbl_df")
    expect_equal(nrow(out), 186)  # Check to see if it return all countries in the dataset
  })

  it("should returns all valid countries from the input country_list", {
    input <- c("Albania", "Anguilla")
    out <- param_barchart(input)
    expect_s3_class(out, "tbl_df")
    expect_equal(nrow(out), 2)  # Only selected countries
  })

})


