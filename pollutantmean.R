#pollutantmean for the R coursera course week 2 assignment. specdata folder will
#run with this

pollutantmean <- function(directory, pollutant, id= 1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' us a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; wither "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers 
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: do not round the result
  
  x = read.csv(directory, header = TRUE, sep = ',', quote = "\"")
  v = pollutant
  mean(x$v[id], trim = 0, na.rm = TRUE)
  
}

