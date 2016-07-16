
# making plots using package ggplot2

# If haven't:
# 
#      install.packages("ggplot2")

library(ggplot2)

## data
  ## simulated data
    X <- 1:20
    set.seed(12345)  # so every time we get the same Y
    Y <-rnorm(20)
  ## built-in data in ggplot2: 
    str(mpg) # see the strcture of this data frame

    