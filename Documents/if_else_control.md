# if...else control loop

Example of using if...else control loop, scrips in **if\_else\_control.R**([GitHub link](https://github.com/weitingwlin/r-primers/blob/master/R_files/if_else_control.R))

### 0. create variables to be used in control loop 
    X <- 1
    Y <- 2


### 1. simple form

  	if( X >= 1 ) message("good!")

`X >= 1` is a [logical operation](logical_operation.md), if it is TRUE, the expression after `	if( X >= 1 )` will be executed.

### 2. long form
  	if( X > 1 & Y >1 ){  
    	message("good!")
    	message('X > 1 and Y > 1')
  	}

`X > 1 && Y >1` is a (slightly more complex) [logical operation](logical_operation.md), if it is TRUE, the expression in `	{}` will be executed.
### 3. if ... else

  	if( X != 1 ){
    	message("X is not unity")
  	}else { 
    	message('X = 1') 
  	} # end if(X...