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
from datetime import date
import sys
import glob
import os

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 12/28/2025
# Description: Read in NFL preplayoff status CSV file. Convert Team abbreviation to TeamID on 
#              from DDD Database. Delete then insert
# 
######################################################################################################


##################################
# global variables
##################################

# mysql globals
dbparms = {
    'user': 'tarryc', 
    'password': '',
    'host': 'localhost',
    'database': 'ddd'
}

# csv globals
input_preplayoffstatus_file = ""

# meta data globals
preplayoffstatus_season = ""

conversion_dict = dict()
file_list = []

counters = {
    "Read" : 0,
    "Passed" : 0,
    "Written" : 0
    }

##################################
# functions
##################################

# 
#  get db password
#  
def getsqldbpassword():
  answer = ''

  # Ask the user for finace type.
  answer = input("What is the db password?: ")
  
  return (answer)

#
# get preplayoffstatus file
#
def getpreplayoffstatusfile(filename): 
  # read the cvs preplayoffstatus file into a dataframe
  df = pd.read_csv(filename, index_col=False, engine='python')
  # print(df.head(50))
 
  df = df.loc[:, ~df.columns.str.startswith('Unnamed')]
  # print(df.head(50))
  
  return df

# 
#  get preplayoffstatus season 
#  
def get_preplayoffstatus_season_input():
  preplayoffstatus_season = input("Enter preplayoffstatus season (number): ")

  if (len(preplayoffstatus_season) == 0):
    print("Must pass in valid preplayoffstatus season!")
    quit()

  return preplayoffstatus_season  

# 
#  check if preplayoffstatus data exits
#  
def does_preplayoffstatus_data_exist(preplayoffstatus_season):
  try:
    # Connect to the MySQL database Create a buffered cursor
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    SELECT id as preplayoffstatusid 
    FROM  preplayofftbl 
    WHERE season = %s;
    """

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = (preplayoffstatus_season)

    # Execute the query
    cursor.execute(sql_query, params)

    # Fetch and process results
    # results = cursor.fetchall()
    
    number_of_rows = cursor.rowcount  

  except mysql.connector.Error as err:
      print(f"Error: {err}")

  finally:
      # Close cursor and connection
      if cnx.is_connected():
        cnx.close()
        cursor.close() 

  return number_of_rows   

def delete_season_preplayoffstatus_instance(preplayoffstatus_season):
  try:
    # Connect to the MySQL database
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    DELETE  
    FROM  preplayofftbl 
    WHERE season = %s
    """

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = (preplayoffstatus_season)

    # Execute the query
    cursor.execute(sql_query, params)

    # Fetch and process results
    cnx.commit()

    records_deleted = cursor.rowcount

  except mysql.connector.Error as err:
    print(f"Error: {err}")

  finally:
    # Close cursor and connection
    if cnx.is_connected():
      cnx.close()
      cursor.close() 
  
  return records_deleted
 
#
# insert preplayoffstatus stats
#
def insert_preplayoffstatus_stats(preplayoffstatus_df, preplayoffstatus_season):
  number_of_inserts = 0

  try:
    # Connect to the MySQL database Create a buffered cursor
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    INSERT INTO playerpreplayoffstatustbl 
    (season, week, playername, teamid, position, preplayoffstatus, status) 
    VALUES (%s, %s, %s, %s, %s, %s, %s)
    """

    # print(sql_query)

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = preplayoffstatus_df.values.tolist()


    # Execute the query
    # mycursor.executemany(sql, val)
    cursor.executemany(sql_query, params)

    # Fetch and process results
    cnx.commit()
    # results = cursor.fetchall()
    
    number_of_inserts = cursor.rowcount  
  except mysql.connector.Error as err:
      print(f"Error: {err}")

  finally:
      # Close cursor and connection
      if cnx.is_connected():
        cnx.close()
        cursor.close() 

  return number_of_inserts  

def get_team_info():
  try:
    # Connect to the MySQL database Create a buffered cursor
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(dictionary=True)

    sql_query = "SELECT name as teamname, teamiconname  FROM teamstbl"
    
    # Execute the query
    cursor.execute(sql_query)

    # Fetch and process results
    fetched_results = cursor.fetchall()

    column_names = [desc[0] for desc in cursor.description]
    
    # Create the pandas DataFrame
    teaminfo_df = pd.DataFrame(fetched_results, columns=column_names)

    # print(teaminfo_df.head(60))

    # Search for rows where the teamname column is 'Patriots'
    # search_value = 'Patriots'
    # filtered_df = teaminfo_df[teaminfo_df['teamname'] == search_value]

    number_of_rows = cursor.rowcount  

  except mysql.connector.Error as err:
      print(f"Error: {err}")

  finally:
      # Close cursor and connection
      if cnx.is_connected():
        cnx.close()
        cursor.close() 

  return teaminfo_df 

def get_team_img(teaminfo_df, teamname):
  team_img = 'notyet'
  result = teaminfo_df.loc[teaminfo_df['teamname'] == teamname]
  print(result)
  teamindex = teaminfo_df.loc[teamname, teamname].index
  age_bob = teaminfo_df.loc[teamname, teamname].index

  quit()
  return team_img

def update_preplayoffstatus_df(teaminfo_df, preplayoffstatus_df):
  print(preplayoffstatus_df.head(50))
  # print(preplayoffstatus_df)
  
  print(teaminfo_df.head(25))
  # quit()

  records_count = len(preplayoffstatus_df)
  for i in range(records_count):
    afcname = preplayoffstatus_df['afcname']
    print(afcname)

    team_img = get_team_img(teaminfo_df, afcname)
    team_img = 'chi.png'
    preplayoffstatus_df.loc[i, 'nfcteamicon'] = 'chi.png'
    # afcteamicon = preplayoffstatus_df['afcteamicon']
    # print(afcteamicon)

  quit()

  # print(len(preplayoffstatus_df))
  # afcname = preplayoffstatus_df['afcname'][0]
  # print(afcname)
  # preplayoffstatus_df.at[0, 'afcteamicon'] = 'den.png'
  # print(preplayoffstatus_df.at[0, 'afcteamicon']) 
  # afcteamid = preplayoffstatus_df['afcteamicon'][0]
  # nfcname = preplayoffstatus_df['nfcname'][0]
  # nfcteamid = preplayoffstatus_df['nfcteamicon'][0]
  
  # print(f"afcname: {afcname} afcteamid: {afcteamid} nfcname: {nfcname}  nfcteamid: {nfcteamid} ")
  # preplayoffstatus_df.loc[0, 'afcteamicon'] = 'den.png'
  # preplayoffstatus_df.loc[0, 'nfcteamicon'] = 'chi.png'
  # afcname = preplayoffstatus_df['afcname'][0]
  # afcteamid = preplayoffstatus_df['afcteamicon'][0]
  # nfcname = preplayoffstatus_df['nfcname'][0]
  # nfcteamid = preplayoffstatus_df['nfcteamicon'][0]
  
  # print(f"afcname: {afcname} afcteamid: {afcteamid} nfcname: {nfcname}  nfcteamid: {nfcteamid} ")

  # print(preplayoffstatus_df['playoffstatus'][2])
  # print(preplayoffstatus_df['playoffstatus'][3])
  # df['playoffstatus'][5] = "Changed"
  # print(df['playoffstatus'][5])
  # preplayoffstatus_df.loc[5, 'playoffstatus'] = 25
  # print(preplayoffstatus_df['playoffstatus'][5])
  # quit()


  # for index, row in preplayoffstatus_df.items():
  #   print(f"{index}")
  #   print(f"{row}")

  # for row in preplayoffstatus_df.items():
  #   print(row[3])
  #   print(row[5])

    # print(row['afcname'])
    # Access specific values using attribute access:
    # print(row.column_name) 

    
    # print(f"{col_data.values}")
    # print(f"{col_data.values[0]}")

    # print(f"{col_data.values[0]}")
    # print(f"{col_data.values[3]}")
    # for row in col_data.values:
    #   print(f"values={row}")

  quit()
  return preplayoffstatus_df 


##################################
# Main
################################## 

print("Preplayoffstatus update started!\n")

# 
# get sql db password 
# 
dbpasswd = getsqldbpassword()
if dbpasswd == '':
  print("No db password entered!")
  quit()

dbparms['password'] = dbpasswd

# 
# get list of cvs files to process
# 
file_list = glob.glob("preplayoffstatus*.csv")
file_list.sort(key=os.path.getmtime,reverse=True)  

lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
while (idx < lcount):
  print ("The current count is:", idx + 1)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for import as preplayoffstatus file for ddd Y/N ? ")  
  if answer.upper() == "Y":  
    input_preplayoffstatus_file = fname
    break;  
  
  idx += 1

if input_preplayoffstatus_file == "":
  print("No file picked!")
  quit()

#
# get preplayoffstatus season
#
preplayoffstatus_season = get_preplayoffstatus_season_input()

# 
# get the preplayoffstatus file for season. read into data frame
# 
preplayoffstatus_df = getpreplayoffstatusfile(input_preplayoffstatus_file)

# 
# add columns for afcteamicon and nfcteamicon columns to data frame
# 
preplayoffstatus_df.insert(3, 'afcteamicon', 'team.png')
preplayoffstatus_df.insert(6, 'nfcteamicon', 'team.png')

# 
# get team info 
# 
teaminfo_df = get_team_info()

# 
# update  preplayoffstatus data frame
# 
preplayoffstatus_df = update_preplayoffstatus_df(teaminfo_df, preplayoffstatus_df)


print(teaminfo_df.head(16))

print(f"Input preplayoffstatus filename: {input_preplayoffstatus_file} ")
print("Preplayoffstatus data frame ready!")

quit()

# 
# check if preplayoffstatus already present for season
# 
answer = does_preplayoffstatus_data_exist(preplayoffstatus_season)
if (answer > 0):
  delete_count = delete_season_preplayoffstatus_instance(preplayoffstatus_season)
  print(f"Records deleted for season {preplayoffstatus_season}: {delete_count}")

# 
# insert preplayoffstatus stats from data frame
# 
insert_count = insert_preplayoffstatus_stats(preplayoffstatus_df, preplayoffstatus_season, preplayoffstatus_week)
print(f"Records inserted for season {preplayoffstatus_season} week {preplayoffstatus_week}: {insert_count}")

# might want to re-read and display records nnumber for year season

print(f"preplayoffstatus conversion process Finished and database updated! \n")