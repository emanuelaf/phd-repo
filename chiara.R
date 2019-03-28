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


p1 <- ggplot(data = fb_data, aes(x=type, y = clicks)) +
  geom_boxplot()

p1