# connect.py
import mysql.connector
from color import *

def database_connect():
    try:
        db = mysql.connector.connect(
            host="127.0.0.1",
            port=3306,
            user="root",
            password="my_own_sql_database2912",
            database="hello_world"
        )
        print(f"{green}database connection successful !{reset}")
        return db
    except mysql.connector.Error as err:
        print(f"{red}error in connecting the database .. : {err}{reset}")
        return None  
    except Exception as general_error:
        print(f"{red}general error : {general_error}{reset}")
        return None  

# Initialize the shared database connection instance here
db = database_connect()
if db is None:
    print(f"{red}error in connection : connect.py{reset}")
    exit(0)