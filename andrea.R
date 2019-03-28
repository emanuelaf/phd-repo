source("./code.R")

plot_ds <- 
  fb_data %>% 
  count(type)

ggplot(plot_ds, aes(x = type, y = n, fill = type)) +
  geom_bar(stat = "identity")
