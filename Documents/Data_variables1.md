# Data: Variable types
Data in R stored in a object, an object can contain one or more elements. The nature of each element is what we called **variable type**. The structural feature of an object dictate how the elements are arranged, and we call this structural feature [**object type**](Data_variables2.md). 

[Learn more about working with variables/object](Working_with_Rstudio.md#variables)

## Variable types (elements)
#### typeof
You can check the type of a variable or a value:

	typeof(1)   # "double"


### Number ("double")
A variable can be a number (called "double" for some reason). `X <- 1` would be an example.

	typeof(X)   # "double"

Note when you use the variable in function as argument, you use it without quotation mark. And the function `typeof` judges the type of the **value** of X (i.e. 1).

Otherwise:
	
	typeof("X") # "character"


### String, character
A variabel can be a string (or called "chracter"); you give a string within " " or ''.

	Y <- "Paria"
	typeof(Y)    # "character"

### Logical
Often you see logical variable as the result of [logical operations](logical_operation.md).
   
   	Z <- X == 1   # TRUE
   	typeof(Z)     # "logical"
   	
A logical variable have value **TRUE** or **FALSE**, **T** or **F**.

(Note: **TRUE/FALSE** and **T/F** are interchangeable.)  	
### Others: 
#### Factors
  	A <- factor(c("big", "big","small","big"))
    	print(A)
    	table(A)
    	unclass(A)
  	B <- factor(c("big", "big","small","big"),
  				  levels = c("small","mediem","big"))
    	print(B)
    	table(B)
    	unclass(B)

#### Date/Time 
  	x <- as.Date("1986-02-21")
  	y <- as.Date("1970-01-02")
    	print(x)
    	print(y)
      	print(unclass(x))
      	print(unclass(y))
      	class(x)

   	weekdays(x)
   	months(x)
   	quarters(x)

  	z <- Sys.time()
   	zlt <- as.POSIXlt(z)
    names(unclass(zlt))
    
  	zlt$yday
  		help(strptime)
  	k <- strptime("December ",)
  
  
  
#### Missing values Na, NaN
There are two kinds of missing values: **NaN** for "Not a Number", **Na** for "Not available":
  
	  x <- c(1,3,NA, NaN,4)

 Check **Na** with function `is.na` (hint: NaN is a kind of Na)
   
    is.na(x)
    
 Check **NaN** with function `is.nan` (hint: Na is not NaN)
    
    is.nan(x)



