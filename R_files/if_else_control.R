# This is an example of using if...else control loop

# create variables to be used in control loop 
    X <- 1
    Y <- 2


## simple form

  if( X >= 1 ) message("good!")

## long form
  if( X > 1 & Y >1 ){
  
    message("good!")
    message('X > 1 and Y > 1')
  }

## if ... else

  if( X != 1 ){
    message("X is not unity")
  }else { 
    message('X = 1') 
  } # end if(X...