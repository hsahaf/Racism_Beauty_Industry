#### Preamble ####
# Purpose: Tests the simulated_beauty_data
# Author: Huda Sahaf
# Data: Apr 12 2023
# Contact: huda.sahaf@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)


#### Test data ####

simulated_beauty_data$Lightness_Value|>
  min()== "0.01"

simulated_beauty_data$`Vogue Appearances`|>
  min()== 1

simulated_beauty_data$`Vogue Appearances`|>
  max() == 10

simulated_beauty_data$Lightness_Value|>
  max() == 1
