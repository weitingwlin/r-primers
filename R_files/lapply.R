# lapply: apply function on list

    x <- list(a = c(1,2,3,4), b = rnorm (10))
  # x is a list of two component
    xmean <- lapply(x, mean)
    xmean # to display what xmean looks like
  
  # return value is also a list, same number of elements as x
    class(xmean)
  # another example of lapply  
    lapply(x, length)

  # Using anonymous function: the function defined in the lapply command has no name (i.e. anonymous) will not be saved.
    y <- list( A = runif(1,0,1), B = runif(2,0,2), C = runif(3,0,3))
    lapply(y, function(Z) Z[length(Z)]) #return the last element
    # another example
    lapply(y, function(N) max(N)/min(N))
  
  # assign more arguments into the function
    T <- list(1,2,3,4)
    Q <- lapply(T, runif, min = 0, max = 10 )
    # another example
    x$a[3] <- NaN # change our variable x
    # compare the results of the two
    lapply(x, mean) # apply function `mean` useing default at other arguments
    lapply(x, mean, na.rm = TRUE) # assigne na.rm to TRUE, NA (NaN is a kind of NA) will be removed
    
# sapply: simplify the result

sapply(y, function(Z) Z[length(Z)])

sapply(y, function(Z) Z[c(1,length(Z))])

# apply:

M <- matrix(1:24,nrow = 6,ncol = 4)

apply(M,1, mean)
apply(M,2, mean)
# for mean, sum, there are quicker ways
rowMeans(M)

# make a 3D array
A <- array(runif(30),c(2,3,5))

apply(A,c(1,2),mean)

# mapply
mapply(runif, 1:4, 4:1, min=0 )

# tapply : fo the same thing by factor group
V <- runif(30)iris
fv <- gl(5,6)

tapply(V,fv, mean)

# split 
split(V,fv)
m <- matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), 
            nrow=30,
            ncol=3)

round(1/3, digit=2)

lapply(1:3/3,round, digit=3)
### apply: work on matrix
#### The secand argument is the direction
apply(m, 1, mean)
apply(m, 2, mean)

apply(m, 2, is.vector)
# work on a user-defined function
apply(m, 2, function(x) length(x[x<0]))
# count the number of positive number

### sapply vs. lapply
sresult<-sapply(1:3, function(x) x^2)
class(sresult)
# if possible sapply "s"implify the output 
lresult<-lapply(1:3, function(x) x^2)
class(lresult)
unlist(lresult) # you could also do that
