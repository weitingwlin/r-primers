
## make a directory is it does not exist
if (!file.exists("data1")){
  dir.create("data1")
}

url <-'https://github.com/weitingwlin/r-primers/blob/master/R_files/data/behavior.xlsx'

download.file(url,destfile = "./data1/behavior.xlsx")