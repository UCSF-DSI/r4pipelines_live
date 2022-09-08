# filter to daily double questions

library(tidyverse)

jeopardy_df <- read_csv("data/raw/jeopardy.csv")

standard_values <- c(
  200, 400, 600, 800, 1000,
  1200, 1600, 2000
)

filtered_jeopardy_df <- jeopardy_df %>%
  filter(!(value %in% standard_values),
         value > 0)

filtered_jeopardy_df %>%
  saveRDS("data/processed/filtered_jeopardy_df.rds")