surveys_1
weight <- surveys_1[9]
weight
genus <- surveys_1[10]
genus
year <- surveys_1[4]
year
ggplot(data = surveys_1, mapping = aes(x = year, y = weight)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20))