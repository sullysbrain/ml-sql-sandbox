
# ---------- imports ----------
# import pyodbc
from sqlalchemy import create_engine
import pandas as pd
import os, urllib.parse as up

# ---------- 1.  Build an ODBC/ADBC URI ----------
# -- Best practice: keep creds in env‑vars for security
host   = "10.211.55.6"  # e.g. "myserver.database.windows.net:1433"
port = "1433"
database = "Library"
user     = "sa"      # e.g. svc_reader
password  = "VeryStr0ngP@ssw0rd"       # e.g. My$tr0ngP@ssw0rd


def get_connection():
    return create_engine(
        url="mysql+pyodbc://{0}:{1}@{2}:{3}/{4}".format(
            user, password, host, port, database
        )
    )
if __name__ == '__main__':
 
    try:
       
        # GET THE CONNECTION OBJECT (ENGINE) FOR THE DATABASE
        engine = get_connection()
        print(
            f"Connection to the {host} for user {user} created successfully.")
    except Exception as ex:
        print("Connection could not be made due to the following error: \n", ex)


    # query = ("""
    #     SELECT TOP 5 first_name, last_name
    #     FROM dbo.Athors
    #     ORDER BY last_name DESC
    # """)

    # df = pd.read_sql(query, engine)
    # print(df.head())        # or just df.head() in a notebook cell
