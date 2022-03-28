
source("plotrandomfunction.R")

## line 2 above tells r to open and run all of the 
## code in the file, plotRandomFunction.R

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)

plotRandom(n=60, mu=70, sigma=2.3)
plotRandom(n=60000, mu=70, sigma=2.3)

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks=30)

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks=300)

set.seed(20220318)
plotRandom(n=20)

## playing around with bin sizes to understand how hist() works

set.seed(1)
x <- rnorm(n=200)

hist(x)
hist(x, breaks=1)
hist(x, breaks=0)
hist(x, breaks=3)
hist(x, breaks=12)
hist(x, breaks=50)

## March 28 we will update our function to prevent user from being stupid

plotRandom(n=-20)
plotRandom(n=43.5234)
plotRandom(n=-43.432)
plotRandom(n="thirty")
## n should be a positive integer "natural numbers"

## to test out what it is doing...
x <- rnorm(n=43.5234)
length(x)
## so it appears to be truncating
##two things
## 1. prevent the user from specifying a negative number
## 2. if the user specifies a positive real number, we should
## tell them what value is actually being used
