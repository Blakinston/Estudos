import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sn 
import os 


os.chdir(r'C:\Users\Familia\Documents\Projetos\Src')


df = pd.read_csv('compras.txt',sep="\t",names=['id_client','value_buy','date'])
df.head()