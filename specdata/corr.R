corr <- function(directory, threshold = 0){
  df_complete_cases <- complete(directory)
  nobs <- df_complete_cases$nobs
  ids <- df_complete_cases$id[nobs > threshold]
  cr_len <- length(ids)
  cr <- rep(0,cr_len)
  
  files <- list.files(directory,full.names = TRUE)
  j <- 1
  for(i in ids)
  {
    curr_file <- read.csv(files[i])
    cr[j] <- cor(curr_file$sulfate,curr_file$nitrate,use = "complete.obs")
    j <- j+1
  }
  cr
}