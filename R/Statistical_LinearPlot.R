#' Point plot and statistical test using surveys data with out NA values which is surveys_1
#'
#' @param weight a column in surveys_1 data
#' @param genus a column in surveys_1 data
#' @param year a column in surveys_1 data 
#' @param surveys_1 data without NA values 
#' @return surveys_1 



ggplot(data = surveys_1, mapping = aes(x = year, y = weight)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20)) + stat_smooth()

model_fit <- lm(weight ~ year, data = surveys_1)
summary(model_fit)



is_scalar_atomic(surveys_1) == FALSE) {
  return("ERROR - the vector is not scalar") 
}
return(surveys_1)

