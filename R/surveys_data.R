#' Load in surveys data
#' 
#' @param surveys is data
#' @return surveys data that is a data frame


download.file(url="https://ndownloader.figshare.com/files/2292169", destfile = "data/surveys.csv")
surveys <- read.csv("data/surveys.csv")
surveys

is.data.frame(surveys) == FALSE ) {
  return("ERROR - object is not a data frame")
return(surveys)
}



