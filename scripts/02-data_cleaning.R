#### Preamble ####
# Purpose: Cleans all three data sets about inclusivity in the fashion industry
# Author: Huda Sahaf
# Data: Apr 12 2023
# Contact: huda.sahaf@mail.utoronto.ca
# License: MIT
# Pre-requisites:-
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(ggplot2)
library(kableExtra)
library(knitr)
library(readr)
library(RColorBrewer)
library(here)
library(scales)

#### Clean data ####
fashion_tones <- read_csv("inputs/data/fashion_tones.csv")
fashion_frequency <- read_csv("inputs/data/fashion_frequency.csv")
makeup_shades <- read_csv("inputs/data/makeup_shades.csv")

### Clean Fashion Tones Data Set: 
cleaned_fashion_tones <-
  clean_names(fashion_tones)

cleaned_fashion_tones <-
  cleaned_fashion_tones |>
  rename(
    skintone = tone,
    lightness_value = l
  )
head(cleaned_fashion_tones)

### Simplifying Dates: Fashion Tones Dataset:
cleaned_fashion_tones<-
  cleaned_fashion_tones |>
  separate(
    col = date,
    into = c("Month", "Day", "Year"),
    sep = "/"
  ) |>
  mutate(cleaned_fashion_tones, clean_date = paste(Year, Month, Day, sep = "-"))
str(cleaned_fashion_tones$clean_date)

### Clean Fashion Frequency Data Set: 
cleaned_fashion_frequency<-
  clean_names(fashion_frequency)

cleaned_fashion_frequency <-
  cleaned_fashion_frequency |>
  rename(
    skintone = tone,
    lightness_value = l,
    num_covers = n_covers
  )

### Clean Makeup Shades Data Set:
cleaned_makeup_shades <-
  clean_names(makeup_shades)

cleaned_makeup_shades<-
  cleaned_makeup_shades |>
  rename(
    hue = h,
    lightness = l,
    saturation = s,
    value = v,
    hex_code = hex
  )|>
  mutate(lightness_value = lightness/100)

cleaned_makeup_shades<-
  cleaned_makeup_shades |>
  filter(group == 0|group == 1|group == 2|group == 3|group == 4)

#### Save data ####
# change cleaned_data to whatever name you end up with at the end of cleaning

write_csv(cleaned_fashion_tones, "outputs/o_data/cleaned_fashion_tones.csv")

write_csv(cleaned_fashion_frequency, "outputs/o_data/cleaned_fashion_frequency.csv")

write_csv(cleaned_makeup_shades, "outputs/o_data/cleaned_makeup_shades.csv")