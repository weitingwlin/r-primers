# Arithmetic operation (calculations)


  	1 + 1
  	2 - 1
    3 * 6
    4 / 2

### Modulus and interger division

    10 %% 3
    10 %/% 3

### Matrix

Note that with `*`, R do multiplication **element by element**:

	 X <-matrix(1:6, nrow = 3)
	 Y <-matrix(6:1, nrow = 2)
     X * Y

To do **matrix multiplication** use `%*%`:

     Z <- matrix(6:1, nrow = 2)
	 X %*% Z