
# Making histograms using base plot system and ggplot2 

## 1. data
  ## simulated data
  X <- rep(c(1,2,3,4), each =50 )
      set.seed(12345)
  Y <- rnorm(200)
  ## built-in data in ggplot2: 
  str(mpg) # see the strcture of this data frame
  
  
# 2. Using base plotting system :
  # plot histogram in a line
    hist(Y)
  # or save it in a new variable
    Yhist <- hist(Y)
    Yhist # see what it looks like
  # and get some more control  
    Yhist$xname <- 'simulation'
    plot(Yhist) # plot again, see what's changed
    
    
# 3. using ggplot2: gplot
    
    # If haven't:
    # 
    #      install.packages("ggplot2")
    library(ggplot2)
    
  # gplot
    # gplot decide this would be a historgram
    qplot(Y)
    # control bin width
    qplot(Y,  binwidth = 0.5)
    # more comtrol
    qplot(Y,
          geom="histogram",
          binwidth = 0.5,  
          main = "Histogram with gplot", 
          xlab = "Simulated data", 
          fill=I("cornflowerblue"), 
          col=I("red"), 
          alpha=I(.2))

  # histogram with data.frame
    # use str to see what mpg is
      str(mpg) # mgp is a built in data set of ggplot2 package
    
    # color-coding with another variable
      qplot(hwy, data = mpg, fill = drv)

    # facet (or, subplots)    
      qplot(hwy,	data	=	mpg,	facets	=	drv	~	.,	binwidth	=	2) 	
    
      qplot(hwy,	data	=	mpg,	facets	=	. ~ drv,	binwidth	=	2)
    
    