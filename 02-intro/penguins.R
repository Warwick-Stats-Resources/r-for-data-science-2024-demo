### load packages
library(palmerpenguins)
library(tidyverse)

### Exploratory data analysis
# How many of each species?
count(penguins, species)

# How many of each species on each island
count(penguins, species, island, .drop = FALSE)

# Show me the bill dimensions of the five heaviest female Gentoo penguins
penguins |>
  filter(sex == "female",
         species == "Gentoo") |>
  slice_max(body_mass_g, n = 5) |>
  select(contains("bill"))