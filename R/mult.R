#' Multiply together two numbers
#'
#' @param x A number
#' @param y Another Number
#' @return product The product of multiplying x and y

mult <- function(x,y){
  product <- x*y 
  is.numeric(product) == FALSE){
    return("ERROR - non-numeric")
  }
  return(product)
}





