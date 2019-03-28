source("./code.R")

plot_ds <- 
  fb_data %>% 
  mutate(tot_clicks = sum(clicks)) %>% 
  mutate(tot_reactions=clicks+reactions) %>% 
  count(type)

ggplot(plot_ds, aes(x = type, y = n, fill = type)) +
  geom_bar(stat = "identity")
