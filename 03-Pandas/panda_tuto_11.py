# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
import pandas as pd


# %%

df = pd.read_csv('data/survey_results_public.csv', index_col='Respondent')
schema_df = pd.read_csv('data/survey_results_schema.csv', index_col='Column')


# %%
#pd.set_option('display.max_columns', 85)
#pd.set_option('display.max_rows', 85)


# %%
df.head()


# %%
brazil_filt = (df['Country'] == 'Brazil')
brazil_df = df.loc[india_filt]
brazil_df.head()


# %%
brazil_df.to_csv('data/modified.csv')


# %%
brazil_df.to_csv('data/modified.tsv', sep='\t')


# %%
brazil_df.to_excel('data/modified.xlsx')


# %%
test = pd.read_excel('data/modified.xlsx', index_col='Respondent')


# %%
test.head()


# %%
brazil_df.to_json('data/modified.json', orient='records', lines=True)


# %%
test = pd.read_json('data/modified.json', orient='records', lines=True)


# %%
test.head()


# %%
from sqlalchemy import create_engine
import psycopg2


# %%
engine = create_engine('postgresql://dbuser:dbpassword@localhost:5432/bd_local')


# %%
#brazil_df.to_sql('bd_local', engine)


# %%
#brazil_df.to_sql('bd_local', engine, if_exists='replace')


# %%
#sql_df = pd.read_sql('bd_local', engine, index_col='Respondent')


# %%
#test = pd.read_sql('data/bd_local.sql', index_col='Respondent')


# %%
#test = pd.read_sql_query('SELECT * FROM bd_local.sql', index_col='Respondent')


# %%
#post = pd.read_json('https://raw.githubusercontent.com/JefersonMelo/22-BTG/master/03-Pandas/data/modified.json')


# %%
#post.head()


# %%



