require(dplyr)
require(readr)
require(ggplot2)
require(lubridate)

# import data
fb_data <-read_csv("data/freeCodeCamp-facebook-page-activity.csv") 

# some initial data manipulation
fb_data <- fb_data %>%
  filter(clicks < 75000) %>%
  mutate(reactions = as.numeric(reactions)) %>%
  filter(!is.na(reactions))


table(fb_data$type)
boxplot(clicks~type, data=fb_data)
