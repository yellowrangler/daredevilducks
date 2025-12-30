#!/usr/bin/env python3

import mysql.connector

# Database connection details
# mysql globals
dbparms = {
    'user': 'tarryc', 
    'password': '',
    'host': 'localhost',
    'database': 'ddd'
}

try:
    # Connect to the MySQL database
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor()

    # Define the multiline SQL query using triple quotes
    sql_query = """
    SELECT id as teaminjuryid 
    FROM  playerinjurytbl 
    WHERE season = %s AND week = %s;
    """

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = ('2025', '16')

    # Execute the query
    cursor.execute(sql_query, params)

    # Fetch and process results
    results = cursor.fetchall()
    number_of_rows = len(results)
    print(f"Number of rows returned: {number_of_rows}")    

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    # Close cursor and connection
    if 'cursor' in locals() and cursor is not None:
        cursor.close()
    if 'cnx' in locals() and cnx is not None and cnx.is_connected():
        cnx.close()
