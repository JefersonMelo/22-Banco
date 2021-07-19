# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
from IPython import get_ipython

# %%
import pandas as pd
import matplotlib as plt


# %%
#d_parser = lambda x: pd.datetime.strptime(x, '%Y-%m-%d %I-%p')
#df = pd.read_excel('data/case.xlsx', parse_dates=['data nota fiscal'], date_parser=d_parser)
df = pd.read_excel('data/case.xlsx')


# %%
df.head()


# %%
df.shape


# %%
df.loc[0, 'data nota fiscal']


# %%
df.loc[0, 'data nota fiscal'].day_name()


# %%
df['data nota fiscal'] = pd.to_datetime(df['data nota fiscal'], format='%Y-%m-%d %I-%p')


# %%
df['data nota fiscal']


# %%
df['data nota fiscal'].dt.day_name()


# %%
df['Day Of Week'] = df['data nota fiscal'].dt.day_name()
df


# %%
df['data nota fiscal'].min()


# %%
df['data nota fiscal'].max()


# %%
df['data nota fiscal'].max() - df['data nota fiscal'].min()


# %%
filt = (df['data nota fiscal'] > '2021-02-03')
df.loc[filt]


# %%
filt = (df['data nota fiscal'] > pd.to_datetime('2021-02-03')) & (df['data nota fiscal'] < pd.to_datetime('2021-02-05'))
df.loc[filt]


# %%
df.set_index('data nota fiscal', inplace=True)


# %%
df['2021-02-02':'2021-02-05']['faturamento'].mean()


# %%
h = df['faturamento'].resample('D').max()
h['2021']


# %%
get_ipython().run_line_magic('matplotlib', 'inline')


# %%
h.plot()


# %%
df.resample('D').mean()


# %%
fatMax = df['faturamento'].max()
fatmin = df['faturamento'].min()
df.resample('D').agg({'preço unitário':'mean', 'qtd. unidades vendidas':'sum', 'faturamento':'max', 'comissão parceiro':'sum'}).plot()


