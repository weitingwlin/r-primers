
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
    
## 
    plot(X, Y)    
    
    plot(X, Y, 
         type = "b", 
         main = "My Plot", 
         xlab = "X", 
         ylab ="simulation data")
    
    abline(0,0, col="darkblue", lty=5)
    text(5, 1, 'my text here')

        
    
## 2. using ggplot2 
    qplot(X,Y)
    
    
## 3. working with dataset    
    str(mpg) # see the strcture of this data frame
    
    qplot(displ,	hwy,	data	=	mpg,	color	=	drv)	
    qplot(displ,	hwy,	data	=	mpg,	facets	=	.	~	drv)

## 4. working with object
    
    g <- ggplot(mpg, aes(displ,hwy ))
    summary(g)
    print(g)# not plot yet!
    # First Plot with Point Layer
    g + geom_point()
    g + geom_point() + facet_grid(. ~ drv)
    
    
## 5. lines: smooth, lm
    g + geom_smooth()

    g + geom_point() + geom_smooth(method = "lm")

    
## 6. style, design    
    g + geom_point(color = "skyblue", size = 4, alpha = 3/4)# alpha is transparency
  
    g + geom_point(aes(color = drv), size = 4, alpha = 1/2)
    
    