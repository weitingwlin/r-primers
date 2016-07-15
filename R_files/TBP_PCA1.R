# The first scripts of task-based primers PCA

# A lot of ways to do PCA, but we use

# ref. Wildi, 2013 p76-77
#   install.packages("labdsv")
#   install.packages("dave")

library('labdsv')
library('dave')

raw <- matrix(c(1,2,2.5, 2.5, 1,0.5, 0, 1, 2, 4, 3, 1), nrow = 6)

colnames(raw) <- c("s1","s2")
rownames(raw) <- c("r1","r2","r3","r4","r5","r6")


o.pca <-pca(raw)

##


## percentage of variance explained
E <- o.pca$sdec^2/o.pca$totdev

plot(o.pca$scores[,1], o.pca$scores[,2], type="n", asp=1)