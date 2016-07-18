## TBP_PCA1: examples in the _Wildi, 2013_ book

This example is from p. 76~77 of the Wildi book.

All scripts are also in **TBP_PCA1.R**([GitHub link](https://github.com/weitingwlin/r-primers/blob/master/R_files/TBP_PCA1.R))

Note this is only one of many ways to do PCA

### 0. loading pacakges
In this example, Wildi used the pca function in the [_labdsv_](https://cran.r-project.org/web/packages/labdsv/index.html) package. Install the package if you have not ([un-comment](https://github.com/weitingwlin/r-primers/blob/master/Documents/Working_with_scripts.md#comments-un-comment) the following script).

	#  install.packages("labdsv")  

You only have to do this once. Everytime after just load th e package using `library` function.

	library('labdsv') # for the pca functions

[Learn more about packages]()

### 1. Prepare hand-input matrix data

### 2. Do PCA with function `pca` in the _labdsv_ package
### 3. View simple biplot on PC ordination using base plotting function `plot`
