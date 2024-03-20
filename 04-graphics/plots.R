plot(1:10, 1:10)
plot(1:10, 1:10, type = "b", pch = 6)
plot(1:10, 1:10, type = "l", pch = 6)

lines(1:10, 1:10)
lines(1:10, 1:10, type = "b", pch = 6)

library(ggplot2)
library(palmerpenguins)

# basic plot
ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point()

# fancy plot
ggplot(data = penguins,
       aes(x = bill_length_mm,
           y = bill_depth_mm,
           group = species)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,
             alpha = 0.8) +
  geom_smooth(method = "lm", aes(color = species)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin bill dimensions",
       x = "bill length (mm)",
       y = "bill depth (mm)") +
  theme_minimal() + 
  theme(plot.title.position = "plot")

# Run a couple of times to 
# demo how the plot changes depending on the Plot window
ggsave(here::here("R", "fancy-plot.pdf"))

# Demo of Export from plot window