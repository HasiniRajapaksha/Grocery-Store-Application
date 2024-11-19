import mysql.connector  # pip tha we install to connect sql with pyt
__cnx = None

def get_sql_connection():  
    global __cnx 
    __cnx = mysql.connector.connect(user='root',
                                    password = '1234',
                                    host='127.0.0.1',
                                    database='grocery_store')

    return __cnx