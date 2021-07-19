# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
import pandas as pd
import numpy as np


# %%
na_vals = ['NA', 'Missing']


# %%

df = pd.read_csv('data/survey_results_public.csv', index_col='Respondent', na_values=na_vals)
schema_df = pd.read_csv('data/survey_results_schema.csv', index_col='Column')


# %%
df


# %%
df['YearsCode'] = df['YearsCode'].astype(str)


# %%
df['YearsCode'].head(10)


# %%
df.head()


# %%
df.shape


# %%
df.info()


# %%
pd.set_option('display.max_columns', 101)
pd.set_option('display.max_rows', 101)


# %%
schema_df = pd.read_csv('data/survey_results_schema.csv')


# %%
schema_df


# %%
df.shape


# %%
df.columns


# %%
df[['Hobbyist', 'Country']]


# %%
df[['Hobbyist']].value_counts()


# %%
df[['PlatformWorkedWith']].value_counts()


# %%
#df.loc[0:38, 'Hobbyist':'Country']


# %%
df['Country'] == 'Brazil'


# %%
#df.loc[0:38, ['Hobbyist', 'Country']]


# %%
df.set_index('Country')


# %%
df


# %%
#df.loc[0:38, ['Hobbyist', 'Country']]


# %%
schema_df


# %%
schema_df.columns


# %%
df = pd.read_csv('data/survey_results_public.csv', index_col='Respondent')
schema_df = pd.read_csv('data/survey_results_schema.csv', index_col='Column')


# %%
schema_df.sort_index()


# %%
schema_df.loc['Age']


# %%
schema_df.loc['Age', 'QuestionText']


# %%
schema_df.sort_index()


# %%
schema_df.sort_index(ascending=False)


# %%
schema_df.sort_index(inplace=True)


# %%
schema_df


# %%
filtered = (df['Country'] == 'Brazil')


# %%
df[filtered]


# %%
df.loc[filtered]


# %%
filter_sp_br = ((df['Country'] == 'Brazil') & (df['Age1stCode'] == '11'))


# %%
df.loc[filter_sp_br]


# %%
filter_ConvertedComp_br = ((df['Country'] == 'Brazil') & (df['ConvertedComp'] >= 130000))


# %%
df.loc[filter_ConvertedComp_br, ['LanguageWorkedWith', 'ConvertedComp']]


# %%
countries = ['Brazil', 'India', 'Canada']
filter_countries = (df['Country'].isin(countries)) & (df['ConvertedComp'] >= 130000)


# %%
df.loc[filter_countries, ['Country', 'LanguageWorkedWith', 'ConvertedComp']]


# %%
filter_language = df['LanguageWorkedWith'].str.contains('C#', na=False)#na==NaN


# %%
df.loc[filter_language, 'LanguageWorkedWith']


# %%
df.columns = [uc.upper() for uc in df.columns]
df


# %%
df['HOBBYIST'].map({'Yes':True, 'No': False})


# %%
df.columns


# %%
df.sort_values(by=['COUNTRY', 'CONVERTEDCOMP'], ascending=[True, False], inplace=True)
df[['COUNTRY', 'CONVERTEDCOMP']].head(100)


# %%
df['CONVERTEDCOMP'].nlargest(10)


# %%
df.nlargest(10, 'CONVERTEDCOMP')


# %%
#df.dropna()


# %%
#df['YEARSCODE'] = df['YEARSCODE'].astype(float)


# %%
df['YEARSCODE'].unique()


# %%
df['YEARSCODE'].replace('More than 50 years', 51, inplace=True)
df['YEARSCODE'].replace('Less than 1 year', 0, inplace=True)


# %%
df['YEARSCODE'] = df['YEARSCODE'].astype(float)


# %%
df['YEARSCODE'].mean()


# %%
df['YEARSCODE'].median()


