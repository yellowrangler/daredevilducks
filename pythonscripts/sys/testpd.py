#!/usr/bin/env python3

import pandas as pd
import numpy as np

# Sample DataFrame
df = pd.DataFrame({'A': [1, 2, 3], 'B': [4, 5, 6]})
print("Original DataFrame:")
print(df)

# Insert a new column 'C' at index position 1 (the second column)
df.insert(loc=1, column='C', value=[7, 8, 9])
print("\nDataFrame after insert():")
print(df)
