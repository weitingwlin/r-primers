# Set up machin-specific pathway

# very useful when you have multiple machine and synching through dropbox
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# save computer info in a variable
  computer <- Sys.info()["nodename"]

# use control loop to set working directory 
  
  if(grepl(computer, "weitindeAir")){
    
    setwd("/Users/weitinglin/Dropbox/DataCoding/my_R/R_primers")
    
    } else{ 
      if(grepl(computer, "another_computer")){
      message("add the path in another computer")
      } else {
      warning("Check computer information")
      } # end if (x...
  } # end if(grep...
  
# to verify the current working directory is correctly set
  
  getwd()
  
