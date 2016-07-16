# Set up machin-specific pathway

# This is very useful when you have multiple machine and synching through dropbox.
#  
# Every time you start working on a project, open this file first and run the codes.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 1. save computer info in a variable
  computer <- Sys.info()["nodename"]

# 2. use control loop to set working directory 
  
  if(grepl(computer, "weitingdeAir")){
    
    setwd("/Users/weitinglin/Dropbox/DataCoding/R_primers")
    
  }else { 
      if(grepl(computer, "WLIN_PC")){
          setwd("C:/Users/Wei-Ting/Dropbox/DataCoding/R_primers/R_files")

              } else {
          warning("Check computer information")
          
      } # end if (x...
  } # end if(grep...

  rm(computer) # this variable will not be used anymore
  
# 3. to verify the current working directory is correctly set, run the code below 
  
#    getwd()
  
