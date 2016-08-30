# Behavior frequency filter
 This is an example of filtering minute-based behavior counts using function **filter.ma.R**.

## 1. Load and prepare the data 
#### load data from excel file
The mock data is saved  locally in **behavior.xlsx**, in a folder **data**.

	# install.packages("xlsx") 
 	  library(xlsx)
  		data <- read.xlsx("./data/behavior.xlsx",sheetIndex=1,header=TRUE)
                    # this is a fake data  

The first column is the time of observation. This data can be converted to  numeric, unit is minutes from 00:00 of a day. It turn out to be a redundant step but I feel more comfortable working with numeric data.

      time <- data[,1]   # time in the time format
      t_observe <-as.numeric(format(time,"%H"))*60 + as.numeric(format(time,"%M"))  # time in numeric format


  

#### cast a dataframe
The 2nd to 5th columns are behavior counts

    behave <-data.frame(cbind(time, t_observe,data[,2:5]))
           
#### rename the variables
    names(behave)<-c('time','time_num', 'A','B','C','nothing')
  
#### check  

    head(behave)
  
## 2. Plot the original data  
#### using the "quick plot" function in ggplot2
    library('ggplot2')
    qplot(time,B ,data = behave)
#### plot with base system
    plot(behave$time, behave$B)

## 3. Use filter function
#### load the function into working memory
	source("filter.ma.R")

#### Set parameters

    window <- 30 # the window, or size of range used in the smooth function
    sym_range <- (- window/2):(window/2-1) # symmetric, homogeneouse smoothing parameter

#### Using smooth function and save results into the data frame

	 behave$A_smooth <- filter.ma(behave$A>0, range = sym_range)
 	 behave$B_smooth <- filter.ma(behave$B>0, range = sym_range)
                               # if we only consider presence/absence 
## 4. Plot 
#### with base function

    plot(behave$time, behave$A_smooth)
  
#### plot with ggplot2

	  g <- ggplot(behave, aes(time,A_smooth))  

Print the plot out

	  g + geom_line(data = behave, aes(color="A")) + geom_line(aes(y = B_smooth, color ="B")) + labs(color = "behavior") + ylab(paste("frequency in", as.character(window),"min."))


## References
 Chatfield, C. (2003). The Analysis of Time Series: An Introduction, Sixth Edition. Taylor & Francis  
  

  