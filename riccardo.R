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

ggplot(fb_data, aes(clicks)) + 
  geom_histogram(bins = 40, alpha = 0.5, col = 1, fill = 2) + 
  theme_bw()
