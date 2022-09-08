import pandas as pd
from datasets import load_dataset

if __name__ == '__main__':
    jeopardy_df = load_dataset('jeopardy')
    jeopardy_df['train'].to_csv('data/raw/jeopardy.csv', index = False)

