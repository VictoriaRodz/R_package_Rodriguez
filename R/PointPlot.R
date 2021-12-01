#' Point plot using data with out NA values 
#'
#' @param data is the data frame without NA's
#' @return product is a point plot with x as year and y as weight 




Pointplot <- function(data){
 product <- ggplot(data = data, mapping = aes(x = year, y = weight)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20))
 if (is.ggplot(product) == FALSE) {
 return("ERROR - x is not a ggplot object") 
}
return(product)
}