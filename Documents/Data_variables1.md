# Data: 
Data in R stored in a object, an object can contain one or more elements, and the structural feature of an object dictate how the elements are arranged. 

### [Variable](https://github.com/weitingwlin/r-primers/blob/master/Documents/Working_with_Rstudio.md#variables)

Example:

		X <- 1
		
With this command you declare a variable X, and give X a value 1.

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
### Others: factor, date/time


## Object types (structure)

### Vectors , c(...)
We can combine the same type of variable into a vector, using the function `c`.

 	y <- c(T,F,F,T)
   	z <- 1:6

More example of makeing sequence can be found in [script_ex_sequence.R](https://github.com/weitingwlin/r-primers/blob/master/R_files/script_ex_sequence.R)

You can check whether an object is a vector:

	is.vector(y)
	
For a vector, you can check its length:
	
	length(z)

##### indexing in vector
You can reach variables in a vector using indices, in `[]`.
		
	z[2]
	z[3:5]
	y[c(1,3)]

### Matrix
Create a matrix using function `matrix`:

  	M <- matrix(1:6, ncol=2, nrow =3)
  	is.matrix(M)   # TRUE

Check the dimensions of M

 	dim(M)
  	aM <- attributes(M) # this is a list
  	
Add column names, row names:
	
	 colnames(M) <- c('C1', 'C2')
	 rownames(M) <- c('A', 'B','C')
	 
Check `M` again (or `attributes(M)`).
	 
##### indexing in a matrix



### Dataframe
### List

