library(readr)
library(rio)
penguins_lter <- read_csv("data/penguins_lter.csv")
View(penguins_lter)

penguins_lter_rio <- import("data/penguins_lter.csv")

penguins_lter
penguins_lter_rio 

wheels <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-08-09/wheels.csv", 
                   col_types = cols(...1 = col_skip()))
View(wheels)
