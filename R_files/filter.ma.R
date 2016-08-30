# function to calculate simple smoothed data from a time-series 
# 
filter.ma <- function(datain, range = c(-1, 0), weights = matrix(1, 1, length(range))){

    # make sure sum(weights) = 1
    weights <- weights/sum(weights)

    # prepare a sheet for output data
    dataout<-matrix(NaN, 1, length(datain))
    dataout<-as.vector(dataout)
  
    #
     startout <- 1 - min(range) # the starting point of output
     endout <- length(datain) - max(range) # the end point of output

    # calculate smoothed data for each point  
    for(i in startout : endout){
      dataout[i]  <- sum(datain[(range + i)] * weights)
                    # as weighted average  
    }

  return(dataout)
}