
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wrswoR

<!-- badges: start -->

<!-- badges: end -->

The goal of wrswoR is to provide faster implementations of weighted
random sampling without replacement in R.

## Installation

You can install the released version of wrswoR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("wrswoR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("krlmlr/wrswoR")
```

## Example

The functions in this package are a drop-in replacement to
`sample.int(n, size, replace = FALSE, prob = prob)`. With large `n`,
`sample.int()` becomes too slow to be practical, unlike the functions in
this package.

``` r
library(wrswoR)
set.seed(20200726)

sample_int_crank(20, 10, 1:20)
#>  [1]  8 18 14 17 11 15 10  4 13  5
```
