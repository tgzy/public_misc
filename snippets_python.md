---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# Python

## Handling NA or NaN in data frames

```python
with open("example.csv", "w") as outfile:
    outfile.write(
        "first_name,last_name,age,country\n"
        "John,Smith,10,USA\n"
        "Billy,Joe,,USA\n"
    )

import csv
with open("example.csv") as infile:
    reader = csv.reader(infile)
    for line in reader:
        print(line)
```
```python
import pandas as pd

df_import = pd.read_csv('example.csv')
print(df_import)

df_import = pd.read_csv('example.csv')
df_import.fillna(pd.NA)
print(df_import)

df_import = pd.read_csv('example.csv')
df_import.fillna('')
print(df_import)

df_import = pd.read_csv('example.csv',
                        dtype = {'first_name': str, 'last_name': str, 'age': pd.Int64Dtype(), 'country': str}
                        )
#df_import.fillna('')
print(df_import)
```
