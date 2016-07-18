# The first scripts of task-based primers PCA

# Use hand-input matrix, view simple biplot on PC ordination

# ref. Wildi, 2013 p76-77
#
# Example of using function pca in labdsv package: 
# There are many ways to do PCA, but we use the one from labdsv package here 
# as Wildi did in the book
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Install and load the packages 
#
#   install.packages("labdsv")  

# 0. loading pacakges
  library('labdsv') # for the pca functions
   
# 1. preparing data
  raw <- matrix(c(1,2,2.5, 2.5, 1,0.5, 0, 1, 2, 4, 3, 1), nrow = 6)
  colnames(raw) <- c("s1","s2")
  rownames(raw) <- c("r1","r2","r3","r4","r5","r6")
  
  # view the original data 
  plot(raw[,1], raw[,2])
  
# 2. Do PCA
  o.pca <-pca(raw)
  
##  view results
  o.pca


## 3. Plotting data on PC axes  
   plot(o.pca$scores[,1], o.pca$scores[,2], 
        type="p", 
        asp=1, 
        xlab = 'PC1', 
        ylab = 'PC2')
   
## 4. Percentage of variance explained
   E <- o.pca$sdev^2/o.pca$totdev
   