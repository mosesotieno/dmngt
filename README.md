
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dmngt

<!-- badges: start -->
<!-- badges: end -->

The goal of dmngt is to make the commonly used data management functions
more available. These are a set of functions that you will almost always
use in your data wrangling process. Making them easily available makes
your work easier and frees your hand to do other things. By doing this,
you have more time cracking your head in other tasks.

## Installation

You can install the development version of dmngt from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mosesotieno/dmngt")
```

## Usage

A fairly common example is on dealing with **multiselct** variables. One
may want to create a variable that utilizes all the responses given by
this set of variables. An example may presence of a condition where a
list of conditions is given one has to pick from that list. One may have
multiple conditions and one may have none. Suppose the data manager
wants to create a variable that checks for any condition regardless of
quantity then the `dmngt::anymatch()` function will come in very hand.
This exactly what it does.

``` r
library(dmngt)
df <- data.frame (id = 1:10,
                  var1 = sample(c(1:2,NA), 10, replace=T),
                  var2 = sample(c(1:2,NA), 10, replace=T),
                  var3 = sample(c(1:2, NA), 10, replace=T))

df |> dplyr::mutate(v4 = anymatch("var"))
#>    id var1 var2 var3  v4
#> 1   1   NA   NA   NA  No
#> 2   2    1    2   NA Yes
#> 3   3    1    1   NA Yes
#> 4   4    2    2    1 Yes
#> 5   5    1    2    1 Yes
#> 6   6    2   NA   NA Yes
#> 7   7    2    2   NA Yes
#> 8   8    2    1    2 Yes
#> 9   9   NA    1   NA Yes
#> 10 10    1   NA    2 Yes
```

Most of the time, the multiselect variables have give given pattern.
Give the pattern that matches the variables that you are interested in.
