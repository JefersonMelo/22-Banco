# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
import pandas as pd
import numpy as np


# %%
person = {
    "first": "Jef",
    "last": "Jon",
    "email": "jefjon@com.com"
}


# %%
people = {
    'first': ['Jef'],
    'last': ['Jon'],
    'email': ['jefjon@com.com']
}


# %%
people = {
    'first': ['Jef', 'Jon', 'Car', np.nan, None, 'NA'],
    'last': ['Jon', 'Car', 'Jef', np.nan, np.nan, 'Missing'],
    'email': ['jef@com.com', 'jon@com.com', 'car@com.com', None, np.nan, None],
    'age': ['33', '55', '63', None, None, 'Missing']
}


# %%
people['email']


# %%
person['first']


# %%
df = pd.DataFrame(people)

df.replace('NA', np.nan, inplace=True)
df.replace('Missing', np.nan, inplace=True)


# %%
df


# %%
df['email']


# %%
type(df['email'])


# %%
df.email


# %%
df.count


# %%
df[['last', 'email']]


# %%
df.columns


# %%
df.iloc[[0]]


# %%
df.iloc[[0, 1]]


# %%
df.loc[[0, 1], 'email']


# %%
df.loc[[0, 1], ['email', 'last']]


# %%
df.index


# %%
df.set_index('email', inplace=True)


# %%
df


# %%
df.index


# %%
df.iloc[0]


# %%
df.reset_index(inplace=True)


# %%
df


# %%
filt = (df['last'] == 'Car')


# %%
df[filt]


# %%
df = pd.DataFrame(people)


# %%
df.columns


# %%
#df.columns = ['first_name', 'last_name', 'email']


# %%
df.columns


# %%
df.columns = [up.upper() for up in df.columns]
df


# %%
df.columns = df.columns.str.replace(' ', '-')
df


# %%
df.columns = [up.lower() for up in df.columns]
df


# %%
df.rename(columns={'first-name':'firstname', 'last-name':'lastname'})#,inplace=True


# %%
#df.loc[2] = ['Jef', 'Car', 'jefcar@com.com']
df


# %%
df.loc[2, ['last_name', 'email']] = ['Mel', 'jefmel@com.com']
df


# %%
df.loc[2, 'last_name'] = 'Car'
df


# %%
df.at[2, 'last_name'] = 'Mel'
df


# %%
df['email'].str.lower()


# %%
df['email'] = df['email'].str.lower()
df


# %%
#df['email'].apply(len)


# %%
def upper_case_email(email):
    return email.upper()


# %%
#df['email'].apply(upper_case_email)


# %%
#df['email'] = df['email'].apply(upper_case_email)
df


# %%
#df['email'] = df['email'].apply(lambda dc: dc.lower())
df


# %%
df.columns


# %%
df.apply(len)#The amount members values in columns


# %%
#df.apply(lambda x: x.min())


# %%
#df.applymap(len)


# %%
#df.applymap(str.lower)


# %%
#df['fullname'] = df['first_name'] + ' ' + df['last_name']
df


# %%
#df.drop(columns=['first_name', 'last_name'], inplace=True)


# %%
#df['fullname'].str.split(' ', expand=True)


# %%
#df[['firstname', 'lastname']] = df['fullname'].str.split(' ', expand=True)


# %%
df


# %%
#df.drop(columns=['fullname'])


# %%
#df.append({'firstname':'Ana'}, ignore_index=True)


# %%
people = {
    "firstname": ["Jeferson", "Jonatas"],
    "lastname": ["Melo", "Carneiro"],
    "email": ["jeferson@com.com", "jonatas@com.com"]
}
df_2 = pd.DataFrame(people)


# %%
df_2


# %%
df.append(df_2)


# %%
df.append(df_2, ignore_index=True, sort=False)


# %%
#filter_lastname = df['lastname']=='Car'
#df.drop(index=df[filter_lastname].index)


# %%
#df.sort_values(by='firstname')


# %%
#df.sort_values(by='firstname', ascending=False)


# %%
#df.sort_values(by=['firstname', 'lastname'], ascending=False)


# %%
#df.sort_values(by=['firstname', 'lastname'], ascending=[False, True], inplace=True)
df


# %%
df.sort_index()


# %%
#df['fullname'].sort_values()


# %%
df.columns


# %%
df.dropna()


# %%
df.dropna(axis='index', how='all', subset=['last', 'email'])


# %%
df.isna()


# %%
df.fillna(0)


# %%
df.dtypes


# %%
df['age'] = df['age'].astype(float)


# %%
df.dtypes
