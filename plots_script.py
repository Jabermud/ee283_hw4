#!/usr/bin/env python3

import pandas as pd
import sqlite3
import seaborn as sns
import matplotlib.pyplot as plt
import os

os.chdir("/Users/jabermud/Documents/ee283_hw4")

con = sqlite3.connect(snakemake.input[0])

df = pd.read_sql("select * from mtcars", con)

g = sns.FacetGrid(df, col="cyl")
g.map(sns.scatterplot,"wt","mpg")
plt.savefig(snakemake.output[0])

