import pandas as pd
import numpy as np


data = {"name": ["Alice", "Bob", "Charlie"],
        "age": [25, 30, 35],
        "city": ["New York", "Los Angeles", "Chicago"]}

a = np.array([[1, 2, 3],
              [4, 5, 6]])

df = pd.DataFrame(data)
print(df)

print(a.shape)
