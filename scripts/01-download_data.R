#### Preamble ####
# Purpose: Downloads and saves the data from https://github.com/the-pudding/data
# Author: Huda Sahaf 
# Data: 31 March 2023 
# Contact: huda.sahaf@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(readr)
library(tidyverse)
library(here)
library(dplyr)

#There are three data sets used for this analysis. All three are data sets used
# the Puddings Publications, specifically, Beauty Brawl and Colorism in High Fashion.
#### Download data ####
fashion_tones <-
  read.csv(
    file = "https://raw.githubusercontent.com/the-pudding/data/master/vogue/faces.csv", 
    skip = 0 
  )

fashion_frequency <-
  read.csv(
    file = "https://raw.githubusercontent.com/the-pudding/data/master/vogue/models.csv", 
    skip = 0 
  )

makeup_shades <-
  read.csv(
    file = "https://raw.githubusercontent.com/the-pudding/data/master/makeup-shades/shades.csv", 
    skip = 0 
  )

#### Save data ####

write_csv(fashion_tones, here::here("inputs/data/fashion_tones.csv")) 

write_csv(fashion_frequency, here::here("inputs/data/fashion_frequency.csv")) 

write_csv(makeup_shades, here::here("inputs/data/makeup_shades.csv")) 
         