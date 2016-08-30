# Behavior frequency filter
# This is an example of using function **filter.ma.R**

## Step 0: Load and prepare the data 
# install.packages("xlsx") 
  library(xlsx)
  data <- read.xlsx("./data/behavior.xlsx",sheetIndex=1,header=TRUE)
                    # this is a fake data  
      time <- data[,1]# time in the time format
      t_observe <-as.numeric(format(time,"%H"))*60 + as.numeric(format(time,"%M"))
            # time of observation, as numeric, unit is minutes from 00:00 of a day.
            # it turn out to be redundant but I'm more comfortable working with numeric data
  ## cast a dataframe
      behave <-data.frame(cbind(time, t_observe,data[,2:5]))
            # behavior count
  ### rename the variables
    names(behave)<-c('time','time_num', 'A','B','C','nothing')
  
  ### check  
    head(behave)
  
## Step 1: plot the original data  
  # using the "quick plot" function in ggplot2
    library('ggplot2')
    qplot(time,B ,data = behave)
  # plot with base system
    plot(behave$time, behave$B)

## Step 2: Use filter function
source("filter.ma.R")
  window <- 30 # the window, or size of range used in the smooth function
  sym_range <- (- window/2):(window/2-1) # symmetric, homogeneouse smoothing parameter
           # current record is marked 0, 
           # each record in this vector will weight by 1 (by default), and average, for the smoothing function

  behave$A_smooth <- filter.ma(behave$A>0, range = sym_range)
  behave$B_smooth <- filter.ma(behave$B>0, range = sym_range)
                               # if we only consider presence/absence 
# plot with base function
    plot(behave$time, behave$A_smooth)
  
# plot with ggplot2
  g <- ggplot(behave, aes(time,A_smooth))  
  # print the plot out
  g + geom_line(data = behave, aes(color="A")) + geom_line(aes(y = B_smooth, color ="B")) + labs(color = "behavior") + ylab(paste("frequency in", as.character(window),"min."))
  
  

  