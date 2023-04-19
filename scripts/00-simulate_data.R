#### Preamble ####
# Purpose: Simulates data about the bias in the industry
# Author: Huda Sahaf
# Date: April 12th 2023
# Contact: huda.sahaf@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)
library(tibble)

#### Simulate data ####

set.seed(250)

simulated_beauty_data <-
  tibble(
    "Model" = c(1:250),
    "Lightness_Value" = sample(
      x = c(1:100) /100,
      size = 250,
      replace = TRUE),
    
    "Vogue Appearances" = sample(
      x = c(1:10),
      size = 250, 
      replace = TRUE)
    
  )
simulated_beauty_data



