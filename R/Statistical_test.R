#' Statistical test using data with out NA values 
#'
#' @param data is the data frame without NA's  
#' @param weight is a column in the data frame
#' @param year is a column in the data frame
#' @return product is a summary of model_fit 



ST <- function(data, weight, year){
 model_fit <- lm(weight ~ year, data = data)
 product <- summary(model_fit) 
 if (is.list(product) == FALSE ) {
 return("ERROR - Not a list")
}
  return(product)
}

