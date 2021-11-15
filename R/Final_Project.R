Final_Project

# First let's install some package that will be used 

install.packages("tidyverse")

# Now load in tidyverse 

library(tidyverse)

# load in data 

download.file(url="https://ndownloader.figshare.com/files/2292169", destfile = "data/surveys.csv")
surveys <- read_csv("data/surveys.csv")
surveys

# If you want to view the data then do

View(surveys)

# Next let's get rid if the NA values in the data set 

surveys_1 <- surveys %>%
na.omit(surveys)
surveys_1

# Now that the NA values are out of the dataset let's graph the data

surveys_1
weight <- surveys_1[9]
weight
genus <- surveys_1[10]
genus
year <- surveys_1[4]
year
ggplot(data = surveys_1, mapping = aes(x = weight, y = year)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20))

# Last thing is to do a statistical test. 
# First I used stat_smooth to see if there was a linear correlation.

ggplot(data = surveys_1, mapping = aes(x = weight, y = year)) + geom_point()+ facet_wrap(vars(genus))+ labs(title = "Observed weight of genera through time", x = "Year of observation", y = "Weight of individuals") + theme_bw() + theme(axis.text.x = element_text(colour = "black", size = 12), axis.text.y = element_text(colour = "black", size = 12), text = element_text(size = 20)) + stat_smooth()

# Then run model_fit to see statistical test 

model_fit <- lm(weight ~ year, data = surveys_1)
summary(model_fit)

# Note that the R^2 value is 0.07337 which is good in since that it's not negative.
# That's it.
