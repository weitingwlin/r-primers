# read excel


# install.packages("xlsx")
library(xlsx)
data <- read.xlsx("./data/behavior.xlsx",sheetIndex=1,header=TRUE)
