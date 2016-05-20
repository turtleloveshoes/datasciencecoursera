#this is for assignment 2 on coursera

complete <-function(directory, id = 1:332){
  ## 'directory' is a chracter vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data from in the form
  ## id nobsisismy
  ## 1 117
  ## 2 1041
  files <- list.files(directory)
  files <- paste0(directory,"/",files)
  final <- data.frame()
  lapply(files, function(x){
    l <-read.csv(x, sep = ',')
    s <-sum(complete.cases(l), na.rm= TRUE)
    final <- rbind(final, cbind(x,s))
    })
}
