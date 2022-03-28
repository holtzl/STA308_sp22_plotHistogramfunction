##############################
##
## plotrandomfunction.R
##
## Zach Holt
##March 18, 2022
##
##  amended on march 28th 2022
##  to do some error checking
##
##
##
## A function that generates a sequence of random
## normal variables and makes a histogram
##
##Friday, March 11, 2022
##
## The function expects the following inputs
## n- sample size (default with n=1)
## mu- mean of normal distribution (default, mu=0)
## signma- sd of normal distribution (default, sigma=1)
## hist_breaks- number of break points in histogram (default 6)
##
# plotRandom <- function(n=1) {
#   hist(rnorm(n=n, mean=0, sd=1))
# }

## today we will add to it
## help(is.integer)
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) {
    abs(x - round(x)) < tol
}


plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  if( !is.wholenumber(n) ) {
    stop(paste("Sample size n should be a whole number\n   R is using n=floor(n)=",
                  floor(n) ) )
  }
  if(n < 0) {
    warning("Sample size n must be positive integer")
  } 
  
  hist(rnorm(n=n, mean=mu, sd=sigma),
         breaks=hist_breaks)
  
}

