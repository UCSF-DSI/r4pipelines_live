library(tm)
library(tidytext)
library(tidyverse)

filtered_jeopardy_df <- readRDS("data/processed/filtered_jeopardy_df.rds")

cleaned_jeopardy_df <- filtered_jeopardy_df %>%
  mutate(
    question = tolower(question)
  )  %>%
  mutate(
    question = gsub("([^a-z ])+", "", question)
  )

cleaned_jeopardy_df %>%
  saveRDS("data/processed/cleaned_jeopardy_df.rds")