# The Shades of Racism in the Beauty Industry

## Overview
The purpose of this repository is to analyze instances of racism within the beauty industry by taking a closer look at black representation on the covers of Vogue from 2000-2018, as well as shade options available within some of the bestselling foundation lines in some of the major brands in the makeup industry.

## Data and Code Availability Statement
There are three data sets used for this analysis, all of which are data sets behind **The Pudding** articles *Beauty Brawl* and *Colorism in High Fashion*. They can be found on **The Pudding** open data repository linked here: https://github.com/the-pudding/data

## Requirements
For the analysis of the beauty industry, RStudio and Quarto were used, as well as the following packages:
`dplyr`, `tidyverse`, `arrow`,`janitor`, `ggplot2`, `kableExtra`, `knitr`, `readr`, `tibble` and `RColorBrewer`.

## File Structure
The repo is structured as:
-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.
