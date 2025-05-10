import pandas as pd

def init_tmp_data():
    data = {
        "name": ["Alice", "Bob", "Charlie"],
        "age": [25, 42, 35],
        "city": ["New York", "Los Angeles", "Chicago"]
    }
    return data


def main():
    df = pd.DataFrame(init_tmp_data())
    print("Data: ", df)    

if __name__ == "__main__":
    main()



