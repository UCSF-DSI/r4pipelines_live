data/processed/scrabble_jeopardy_df.csv data/processed/scrabble_jeopardy_df.rds: data/processed/cleaned_jeopardy_df.rds scripts/02_calculate_scores.R
		Rscript scripts/02_calculate_scores.R

data/processed/cleaned_jeopardy_df.rds: data/processed/filtered_jeopardy_df.rds scripts/01_clean_data.R
		Rscript scripts/01_clean_data.R

data/processed/filtered_jeopardy_df.rds: data/raw/jeopardy.csv scripts/00_filter_data.R
		Rscript scripts/00_filter_data.R
		
		