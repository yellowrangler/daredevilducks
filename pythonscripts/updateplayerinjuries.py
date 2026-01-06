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
# Date: 12/24/2025
# Description: Read in NFL Injury CSV file from RottoWire. Convert Team abbreviation to TeamID on 
#              DDD Database - rewritten from buildinjurycvsfile.py
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
input_conversion_file = "conversionfile.csv"
input_injury_file = ""

# meta data globals
injury_week = ""
injury_season = ""

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
# get team conversion file
#
def getconversionfile(): 
  tc_dict = dict();
  
  with open(input_conversion_file, mode='r', encoding='utf-8-sig') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    tc_dict = [row for row in csv_reader]

  csv_file.close()

  return tc_dict


#
# get injury  file
#
def getinjuryfile(filename): 
  # read the cvs injury file into a dataframe
  df = pd.read_csv(filename)

  return df

#
# convert conversion for team abbreviation to team id
#
def cvtinjury(teamabbrev, conversion_dict): 
  for row in conversion_dict:
    if teamabbrev == row['TA']:
      teamid = row['TI']

  return teamid

# 
#  get injury season 
#  
def get_injury_season_input():
  injury_season = input("Enter injury season (number): ")

  if (len(injury_season) == 0):
    print("Must pass in valid injury season!")
    quit()

  return injury_season  

# 
#  get injury week 
#  
def get_injury_week_input():
  injury_week = input("Enter injury week (number): ")

  if (len(injury_week) == 0):
    print("Must pass in valid injury week!")
    quit()

  return injury_week  

# 
#  check if injury data exits
#  
def does_injury_data_exist(injury_season, injury_week):
  try:
    # Connect to the MySQL database Create a buffered cursor
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    SELECT id as teaminjuryid 
    FROM  playerinjurytbl 
    WHERE season = %s AND week = %s;
    """

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = (injury_season, injury_week)

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

def delete_season_week_instance(injury_season, injury_week):
  try:
    # Connect to the MySQL database
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    DELETE  
    FROM  playerinjurytbl 
    WHERE season = %s AND week = %s
    """

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = (injury_season, injury_week)

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
# insert injury stats
#
def insert_injury_stats(injury_df, injury_season, injury_week):
  number_of_inserts = 0

  try:
    # Connect to the MySQL database Create a buffered cursor
    cnx = mysql.connector.connect(**dbparms)
    cursor = cnx.cursor(buffered=True)

    # Create multiline SQL query using triple quotes
    sql_query = """
    INSERT INTO playerinjurytbl 
    (season, week, playername, teamid, position, injury, status) 
    VALUES (%s, %s, %s, %s, %s, %s, %s)
    """

    # print(sql_query)

    # Define parameters (use %s placeholders to prevent SQL injection)
    params = injury_df.values.tolist()


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

##################################
# Main
################################## 

print("Injury conversion started!\n")

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
file_list = glob.glob("nfl-injury*.csv")
file_list.sort(key=os.path.getmtime,reverse=True)  

lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
while (idx < lcount):
  print ("The current count is:", idx + 1)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for import as injury file for ddd Y/N ? ")  
  if answer.upper() == "Y":  
    input_injury_file = fname
    break;  
  
  idx += 1

if input_injury_file == "":
  print("No file picked!")
  quit()

#
# get injury season
#
injury_season = get_injury_season_input()

#
# get injury week
#
injury_week = get_injury_week_input()

# 
# get the conversion file. read into data frame
# 
conv_dict = getconversionfile()

# 
# get the injury file. read into data frame
# 
injury_df = getinjuryfile(input_injury_file)

# 
# remove superfluous columns from data frame
# 
injury_df = injury_df[['Player','Team','Pos','Injury','Status']]

# 
# drop indices where Team = FA
# 
indices_to_drop = injury_df.loc[injury_df['Team'] == 'FA'].index
injury_df.drop(indices_to_drop, inplace=True)

# 
# convert team name ti db id
# 
for index, row in injury_df.iterrows():
  row['Team'] = cvtinjury(row['Team'], conv_dict)

print(f"Input injury filename: {input_injury_file} ")
print(f"Input conversion filename: {input_conversion_file} ")
print("Conversion data frame ready!")


answer = input(f"\nWould you like the Injury conversion data frame to be applied to database ?: (y/n) ")
if (answer[0] == 'y' or answer[0] == 'Y'):
  pass
else:
  print("Injury conversion cancled!\n")
  quit()

# 
# check if injuries already present foro season & week
# 
answer = does_injury_data_exist(injury_season, injury_week)
if (answer > 0):
  delete_count = delete_season_week_instance(injury_season, injury_week)
  print(f"Records deleted for season {injury_season} week {injury_week}: {delete_count}")

# 
# add season and week columns to data frame, also set integer fields type int
# 
injury_df.insert(0, 'season', injury_season)
injury_df.insert(1, 'week', injury_week)

# didnt need the folllowing but keep as help for mabey something els
# injury_df['Team'] = pd.to_numeric(injury_df['Team'], errors='coerce')
# injury_df = injury_df.reset_index(drop=True)
# print(injury_df.head(50))
# quit()

# 
# insert injury stats from data frame
# 
insert_count = insert_injury_stats(injury_df, injury_season, injury_week)
print(f"Records inserted for season {injury_season} week {injury_week}: {insert_count}")

# might want to re-read and display records nnumber for year season

print(f"Injury conversion process Finished and database updated! \n")