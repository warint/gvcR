
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gvcR

<!-- badges: start -->
<!-- badges: end -->

The goal of gvcR is to …

## Installation

The released version of `gvcR` package is accessible through devtools.

``` r
install.packages("devtools")
devtools::install_github('warint/gvcR')
```

## How-To

### Step 1: Getting the location’s list

A user needs to enter the location of the risk. To have access to this
location, the following function provides this information.

``` r
gvcr_location() # A list of all locations will be produced

gvcr_location(location = "Canal") # A list of locations that contain the word 'Canal' will be produced

gvcr_location("Canal") # A list of locations that contain the word 'Canal' will be produced
```

### Step 2: Getting the indicator’s code

A user needs to enter the code of the desired risk. To do so, the
following function provides access to all the risks of interest.

``` r
gvcr_risk() # A list of all risks code will be produced

gvcr_risk(indicators = "attack") # The risk code will be produced for risks that contain the word 'attack'

gvcr_risk("attack") # The risk code will be produced for risks that contain the word 'attack'
```

### Step 3: Getting the data

Once the user knows the location and the risk’s code, s.he can collect
the data in a very easy way through this function:

``` r
gvcr_data(location = "Panama Canal", risks = "S-T") # It generates a data frame for 'Terrorist attack' (S-T) risk in the location 'Panama Canal'

gvcr_data("Panama Canal", "S-T") # It generates a data frame for 'Terrorist attack' (S-T) risk in the location 'Panama Canal'

gvcr_data(location = c("Panama Canal", "Suez Canal"), risks = c("S-T", "S-C")) # It generates a data frame for 'Terrorist attack' (S-T) and 'Conflict' (S-C) risks in the location 'Panama Canal'

gvcr_data(category = "Weather and climate risk") # It generates a data frame for all locations and risks in the category 'Weather and climate risk'

gvcr_data(levels = "High risk") # It generates a data frame for all locations and risks with a 'High risk'

gvcr_data() # It generates a data frame of the complete dataset
```
