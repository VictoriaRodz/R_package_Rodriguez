#' Getting rid of NA values 
#' 
#' @param surveys is data
#' @param surveys_1 is data without NA values 
#' @return surveys_1 the product of getting rid of NA values from surveys data


surveys_1 <- surveys %>%
  na.omit(surveys)
surveys_1

is.na(surveys_1) == TRUE) {
  return("Yep you got NA's in this data") 
}
return(surveys_1)




