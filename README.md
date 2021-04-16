
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

### Cite ‘gvcR’

If you use the `gvcR` package for research, education, policy making or
other related purposes, please cite the package as well as Wellesley et
al. (2017). Consider making them a
[donation](https://www.chathamhouse.org/support-us) to help them pursue
their work.

To cite the ‘gvcR’ package in your work:

Warin, Thierry. 2021. Warint/gvcR. <https://github.com/warint/gvcR>.

    #> @Manual{,
    #>   title = {gvcR: Extract Data About Global Value Chains Risk},
    #>   author = {Thierry Warin},
    #>   note = {R package version 0.1.0},
    #>   url = {https://warint.github.io/gvcR/},
    #> }

### Acknowledgements

The author would like to thank the Center for Interuniversity Research
and Analysis of Organizations (CIRANO, Montreal) for its support, as
well as Marine Leroi and Martin Paquette. The usual caveats apply.

### References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-wellesley_chokepoints_2017" class="csl-entry">

Wellesley, Laura, Felix Preston, Johanna Lehne, and Rob Bailey. 2017.
“Chokepoints in Global Food Trade: Assessing the Risk.” *Research in
Transportation Business & Management*, New developments in the global
transport of commodity products, 25 (December): 15–28.
<https://doi.org/10.1016/j.rtbm.2017.07.007>.

</div>

</div>
