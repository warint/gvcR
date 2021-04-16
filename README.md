
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gvcR

<!-- badges: start -->
<!-- badges: end -->

The R package `gvcR` provides data on risks of disruption or passage
restriction at major choke points worldwide. When possible, a list of
examples of disruptions and transit delays that have occurred in these
locations since 2002 is given. A maximum of three incidents are noted
for each risk category.

The choke point risks are classified into three categories: - weather
and climate risk; security and conflict risk; and political and
institutional risk – and further divided these into subcategories, such
as ‘haze and fog,’ ‘trade and transit controls’ etc.

Each risk also has a code defined as follows: first letter of the
category, dash, first of the risk. If the risk letter already exists, it
will be accompanied by a slash and then by the first letter of the
second risk word. (see the table below)

<table class=" lightable-material" style="font-family: &quot;Source Sans Pro&quot;, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Risk
</th>
<th style="text-align:left;">
Risk Category
</th>
<th style="text-align:left;">
Risk Code
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Temperature extremes
</td>
<td style="text-align:left;">
Weather and climate risk
</td>
<td style="text-align:left;">
W-T
</td>
</tr>
<tr>
<td style="text-align:left;">
Flood and drought
</td>
<td style="text-align:left;">
Weather and climate risk
</td>
<td style="text-align:left;">
W-F/D
</td>
</tr>
<tr>
<td style="text-align:left;">
Storms
</td>
<td style="text-align:left;">
Weather and climate risk
</td>
<td style="text-align:left;">
W-S
</td>
</tr>
<tr>
<td style="text-align:left;">
Haze and fog
</td>
<td style="text-align:left;">
Weather and climate risk
</td>
<td style="text-align:left;">
W-H/F
</td>
</tr>
<tr>
<td style="text-align:left;">
Conflict
</td>
<td style="text-align:left;">
Security and conflict risk
</td>
<td style="text-align:left;">
S-C
</td>
</tr>
<tr>
<td style="text-align:left;">
Terrorist attack
</td>
<td style="text-align:left;">
Security and conflict risk
</td>
<td style="text-align:left;">
S-T
</td>
</tr>
<tr>
<td style="text-align:left;">
Piracy
</td>
<td style="text-align:left;">
Security and conflict risk
</td>
<td style="text-align:left;">
S-P
</td>
</tr>
<tr>
<td style="text-align:left;">
Cyberattack
</td>
<td style="text-align:left;">
Security and conflict risk
</td>
<td style="text-align:left;">
S-C/A
</td>
</tr>
<tr>
<td style="text-align:left;">
Trade and transit controls
</td>
<td style="text-align:left;">
Political and institutional risk
</td>
<td style="text-align:left;">
P-T
</td>
</tr>
<tr>
<td style="text-align:left;">
Disrepair
</td>
<td style="text-align:left;">
Political and institutional risk
</td>
<td style="text-align:left;">
P-D
</td>
</tr>
<tr>
<td style="text-align:left;">
Unforced delays
</td>
<td style="text-align:left;">
Political and institutional risk
</td>
<td style="text-align:left;">
P-U
</td>
</tr>
</tbody>
</table>

For a fully explanation of the Chatham House Risks click
[here](https://www.chathamhouse.org/2017/06/chokepoints-and-vulnerabilities-global-food-trade-0/annex-2-examples-chokepoint-disruption).

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
    #>   title = {gvcR: Wrapper for Global Value Chains Risks},
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
