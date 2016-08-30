# lapply: apply function to a list
R features a group of **apply** functions, with which we can apply a function to each element of a list. 

`lapply` is the first function we see in this family. lapply takes at least two arguments: 

**`lapply(x, fun, ...)`**

where **`x`** is a list, **`fun`** is the function name, `lapply` aply function **`fun`** to each element in **`x`**.

### Example
	x <- list(a = c(1,2,3,4), b = rnorm (10))

 x is a list of two components,
  
    xmean <- lapply(x, mean)
    xmean # to display what xmean looks like
  
 Return value is also a list, same number of components as x, use `class(xmean)` to check.
  
##### Another example   
  
    lapply(x, length)

### Using anonymous function: 
The function defined in the lapply command has no name (i.e. anonymous) will not be saved in work space.

    y <- list( A = runif(1,0,1), B = runif(2,0,2), C = runif(3,0,3))
    y # see what y looks like 

Now we apply a function that returns the last element in the input argument. If input is `Z`, return value is `Z[length(Z)`:
   
    lapply(y, function(Z) Z[length(Z)]) #return the last element

##### Another example:

    lapply(y, function(N) max(N)/min(N))
  
### Assign more arguments into the function
Sometimes a function has more than one arguments. With `lapply` we use the elements in the list as the first argument to put into the function. But we can define other arguments later, and those arguments will be passed into the function.

    T <- list(1,2,3,4)

As we apply function `runif` to each element of `T`, we want to also defind other argument (`min` and `max`) in the function `runif`. 
    
    Q <- lapply(T, runif, min = 0, max = 10 )
    Q
 
So `Q[1]` will be `runif(T[1], min = 0, max = 10 )` and so on.    
    
##### Another example

    x$a[3] <- NaN # change our variable x

Compare the results of the two commands below:

    lapply(x, mean) # apply function `mean` useing default at other arguments
    lapply(x, mean, na.rm = TRUE) # assigne na.rm to TRUE, NA (NaN is a kind of NA) will be removed

## Sapply: simplify the results
As `lapply` always return a list, it can looks dumb sometimes; for example:

  	lapply(1:3, function(x) x^2)
  
What we really want is 3 numbers, which would be better displayed or later hadeled better in a form of a vector. `sapply` is a function that (try it's best) simplify the results.

	sapply(1:3, function(x) x^2)
	
`sapply` can return a matrix:

	sapply(1:3, function(x) c(x^2, x^3))
	
If a list seems to be the best way to present the results, `sapply` will return a list:
	
	 sapply(1:3, function(x) seq(1, x, by = 0.5))



## More functions in the lapply family

## Note
something about [for loop]    

