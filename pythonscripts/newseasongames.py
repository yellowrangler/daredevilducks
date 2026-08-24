#!/usr/bin/env python3

import mysql
import mysql.connector
from mysql.connector import errorcode

import pandas as pd
import numpy as np
import math
import shutil

import csv
import datetime
from datetime import datetime
import sys
import glob
import os

from pprint import pp

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 08/21/2026
# Description: Read in new season games csv file. Script will import csv file, and then save
# to DDD Database
# 
# NOT ACTIVE
######################################################################################################

#-----------------------------------------------------------------
# Notes
# Read all team data into dictionary ? key = team name value = teamid
# SELECT name, id FROM teamstbl ORDER BY name
# 
#----------------------------------------------------------------- 


#-----------------------------------------------------------------
# Globals
#----------------------------------------------------------------- 

# mysql globals
dbparms = {
    'user': 'tarryc', 
    'password': '',
    'host': 'localhost',
    'database': 'ddd'
}

newseasongame_inputfile_template = '*NFL-Schedule.csv'
mysql_date_time_stamp = ''

# numbers > 10 all om. All other numbers are a la carte
# eg if debug in (1, 10): print("Executed SQL Query: {executed_query}")
debug = 0

#----------------------------------------------------------------- 
# Test and Debug Functions
#----------------------------------------------------------------- 


#----------------------------------------------------------------- 
# Functions
#----------------------------------------------------------------- 

# 
# create datetime stamp in mysql format
# 
def create_msql_date_time_stamp():
    # create mysql data time stamp
    current_time = datetime.now()

    # Format it into the string format MySQL expects (YYYY-MM-DD HH:MM:SS)
    # While not always necessary if using placeholders correctly, 
    # it demonstrates the required format.
    formatted_time = current_time.strftime('%Y-%m-%d %H:%M:%S')

    return formatted_time


# 
#  get db password
#  
def getsqldbpassword():
  answer = ''

  # Ask the user for finace type.
  answer = input("What is the db password?: ")
  
  return (answer)

# 
# read csv file into list of dictionaries (each row is dictionary)
# 
def read_csv_to_dict(filename):
  newseasongames_dicts_list = []
  # 1. Read the CSV file into a DataFrame
  df = pd.read_csv(filename)

  # 2. Convert the DataFrame to a dictionary
  newseasongames_dicts_list = df.to_dict(orient="records")

  return newseasongames_dicts_list


#----------------------------------------------------------------- 
# Main
#----------------------------------------------------------------- 

print(f"New Season update started!")

# get mysql fomated date time stamp
# mysql_date_time_stamp = create_msql_date_time_stamp()

# get sql db password 
dbparms['password'] = getsqldbpassword()
if dbparms['password'] == '':
  print("No db password entered!")
  quit()

# get list of cvs files to process
file_list = glob.glob(newseasongame_inputfile_template)
file_list.sort(key=os.path.getmtime,reverse=True)  

lcount = len(file_list)
print ("The file count is:", lcount)

newseasongames_file = ""
idx = 0
while (idx < lcount):
  print ("The current count is:", idx + 1)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for import as New Season games file Y/N ? ")  
  if answer.upper() == "Y":  
    newseasongames_file = fname
    break;  
  
  idx += 1

if newseasongames_file == "":
  print("No file picked!")
  quit()

# read csv file into list of dictionaries 
newseasongames_dicts_list = read_csv_to_dict(newseasongames_file)

try:
  # Connect to the MySQL database
  con = mysql.connector.connect(**dbparms)
  cursor = con.cursor(dictionary=True)

  gamecount = 1
  totalgamecount = len(newseasongames_dicts_list)

  # loop through newseason games
  for row_games in newseasongames_dicts_list:

    if row_games['gametypeid'] == '3': 
      continue

    # 
    # get hometeamid
    # 

    # Create multiline SQL query using triple quotes
    sql_query = "SELECT id as hometeamid FROM teamstbl WHERE name = %s"

    # Define parameters (use %s placeholders to prevent SQL injection)
    parms = (row_games['hometeam'],)

    # Execute the query
    cursor.execute(sql_query, parms)

    # Access the fully rendered SQL statement after execution
    executed_query = cursor.statement
    if debug in (3, 10): print(f"Executed SQL Query: {executed_query}")
   
    # Fetch all rows as list of dictionaries
    sql_result = cursor.fetchall()

    row_count = len(sql_result)
    if row_count == 1:
      hometeamid = sql_result[0]
      print(f'hometeamid: {hometeamid}')
    else:
      print(f"hometeamid issue. row_count = {row_count}")
      quit()


    # 
    # get awayteamid
    #

    # Create multiline SQL query using triple quotes
    sql_query = "SELECT id as awayteamid FROM teamstbl WHERE name = %s"

    # Define parameters (use %s placeholders to prevent SQL injection)
    parms = (row_games['awayteam'],)

    # Execute the query
    cursor.execute(sql_query, parms)

    # Access the fully rendered SQL statement after execution
    executed_query = cursor.statement
    if debug in (3, 10): print(f"Executed SQL Query: {executed_query}")
   
    # Fetch all rows as list of dictionaries
    sql_result = cursor.fetchall()

    row_count = len(sql_result)
    if row_count == 1:
      awayteamid = sql_result[0]
      print(f'awayteamid: {awayteamid}')
    else:
      print(f"awayteamid issue. row_count = {row_count}")
      quit()

    # 
    # get tvid
    #

    # Create multiline SQL query using triple quotes
    sql_query = "SELECT id as networkid FROM gamenetworktbl WHERE network = %s"

    # Define parameters (use %s placeholders to prevent SQL injection)
    parms = (row_games['network'],)

    # Execute the query
    cursor.execute(sql_query, parms)

    # Access the fully rendered SQL statement after execution
    executed_query = cursor.statement
    if debug in (3, 10): print(f"Executed SQL Query: {executed_query}")
   
    # Fetch all rows as list of dictionaries
    sql_result = cursor.fetchall()

    row_count = len(sql_result)
    if row_count == 1:
      networkid = sql_result[0]
      print(f'networkid: {networkid}')
    else:
      print(f"networkid issue. row_count = {row_count}")
      quit()


except mysql.connector.Error as err:
  print(f"Error: {err}")

finally:
  # Close cursor and connection
  if con.is_connected():
      con.close()
      cursor.close() 





# print(type(newseasongames_dicts_list))
# input()
# pp(newseasongames_dicts_list)
quit()












