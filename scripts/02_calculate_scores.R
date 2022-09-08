# https://quanteda.io/reference/textstat_readability.html
library(quanteda.textstats)
library(tidyverse)

cleaned_jeopardy_df <- readRDS("data/processed/cleaned_jeopardy_df.rds")

scrabble_jeopardy_df <- cleaned_jeopardy_df %>%
  mutate(
    question_scrabble_score = textstat_readability(question, measure = "Scrabble")$Scrabble
  ) %>%
  select(round, value, question_scrabble_score) %>%
  drop_na()

scrabble_jeopardy_df %>%
  saveRDS("data/processed/scrabble_jeopardy_df.rds")

scrabble_jeopardy_df %>%
  write_csv("data/processed/scrabble_jeopardy_df.csv")