library(ferriswheels)
library(dplyr)

wheels |> 
  count(country, sort = TRUE)

wheels |>
  summarise(max = max(height, na.rm = TRUE),
            .by = country) |>
  arrange(desc(max))

wheels %>%
  filter(!is.na(diameter)) %>%
  summarise(mean(diameter),
            var(diameter),
            n())

