## From https://allisonhorst.github.io/palmerpenguins/articles/download.html

# Adelie penguin data from: https://doi.org/10.6073/pasta/abc50eed9138b75f54eaada0841b9b86

uri_adelie <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.219.3&entityid=002f3893385f710df69eeebe893144ff"

# Gentoo penguin data from: https://doi.org/10.6073/pasta/2b1cff60f81640f182433d23e68541ce

uri_gentoo <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.220.3&entityid=e03b43c924f226486f2f0ab6709d2381"

# Chinstrap penguin data from: https://doi.org/10.6073/pasta/409c808f8fc9899d02401bdb04580af7
uri_chinstrap <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.221.2&entityid=fe853aa8f7a59aa84cdd3197619ef462"

# Combining the URIs
uris <- c(uri_adelie, uri_gentoo, uri_chinstrap)

# Downloading and importing data
library(purrr)
library(readr)
penguins_lter <- map_dfr(uris, read_csv)

path_to_save <- here::here("data", "penguins_lter.csv")

write_csv(penguins_lter, path_to_save)

#my_penguins <- read_csv("data/penguins_lter.csv")

#my_penguins2 <- read_csv(path_to_save)
