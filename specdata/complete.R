complete <- function(directory, id = 1:332){
  filelist <- list.files(directory,full.names = TRUE)[id]
  filesdata <- lapply(filelist,function(x) sum(complete.cases(read.csv(x))))
  nobs <- unlist(filesdata)
  df <-data.frame(id,nobs)
  df
}