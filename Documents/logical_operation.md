# Logical operation

Using **logical operators**, we can make R judges whether a statement is **TRUE** or **FALSE**. Or, a logical operation returns a logical variable (**TRUE** or **FALSE**, **T** or **F**).

For example, this logical operation returns **FALSE**:

	1 >= 2 # FALSE

Note **TRUE** or **FALSE** are all capital.
The returned logical variable can be further used in [control loops](if_else_control.md) or another logical operation, wrapped in`()`: 
	
	(1>=2) == F 

(Note: **TRUE/FALSE** and **T/F** are interchangeable.)
### Not!
In R, "not" is expressed by `!`

	!(1>=2) # TRUE

"Not equal to" is `!=`  
  
    1 != 2  # TRUE
     
### AND, OR

AND:

	(1>=2)&T # FALSE

OR: 

	(1>=2)|T # TRUE

## Vectors, matrices
Logical operation also works on vectors:

	 X <- seq(1,10)
     X >= 5

and matrix:
    
     Y <- matrix(seq(1,6),nrow = 3)
     Y >= 3

### all, any (functions)
In vectors or matrix, we can check if all elements are TRUE, or any elements are TRUE.

     all(X>0) # TRUE
     any(X>0) # TRUE
     all(X>3) # FALSE
     any(X>3) # TRUE

## List of logical operators
* >    
* <
* >=
* <=
* ==
* !=
* !
* &
* |
