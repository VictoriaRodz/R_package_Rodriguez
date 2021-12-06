#' Getting rid of NA values 
#' 
#' @param data is a data frame
#' @return product is the data frame without NA's
#' @export



NO.NA <- function(data){
  product <- na.omit(data)
  if (any(is.na(product)) == TRUE){
    return("TRUE - contains NA's") 
  }
  return(product)
}







