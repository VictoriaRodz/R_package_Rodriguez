#' Point plot using surveys data with out NA values which is surveys_1
#'
#' @param weight a column in surveys_1 data
#' @param genus a column in surveys_1 data
#' @param year a column in surveys_1 data 
#' @param surveys_1 data without NA values 
#' @return surveys_1 


surveys_1
weight <- surveys_1[9]
weight
genus <- surveys_1[10]
genus
year <- surveys_1[4]
year
ggplot(data = surveys_1, mapping = aes(x = year, y = weight)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20))


is.Coord(surveys_1) == FALSE) {
  return("ERROR - object is not a coordinare system") 
}
return(surveys_1)
