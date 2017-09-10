# pollutantmean <- function(directory, pollutant, id = 1:332){
#   filelist<-list.files(path = directory,full.names = TRUE)[id]
#   filesdata <- lapply(filelist,function(x) read.csv(x)[[pollutant]])
#   theMean <- unlist(lapply(filesdata,FUN = mean,na.rm=TRUE))
#   theSum <- unlist(lapply(filesdata,function(x) sum(!is.na(x))))
#   sum(theMean*theSum)/sum(theSum)
# }
pollutantmean <- function(directory, pollutant, id = 1:332){
  filelist <- list.files(path = directory,full.names = TRUE)[id]
  dat <- data.frame()
  
  for(i in id)
  {
    dat <- rbind(dat,read.csv(filelist[i]))
  }
  mean_data <-mean(dat[,pollutant],na.rm = TRUE)
  mean_data
}