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

#-----------------------------------------------------------------
# Notes
# Read al team data into dictionary ? key = team name value = teamid
# SELECT name, id FROM teamstbl ORDER BY name
# 
# 
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

team_stats_inputfile_template = 'TeamWeekRank*.csv'
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
# create_team_convert_dict from team table 
# 
def create_team_convert_dict():

    try:
        # Connect to the MySQL database
        con = mysql.connector.connect(**dbparms)
        cursor = con.cursor(dictionary=True)

        # Create multiline SQL query using triple quotes
        sql_query = "SELECT name, id FROM teamstbl ORDER BY name"

        # Execute the query
        cursor.execute(sql_query)

        # Fetch all rows as list of dictionaries
        team_convert_dict_list = cursor.fetchall()

        records_read = cursor.rowcount
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        # Close cursor and connection
        if con.is_connected():
            con.close()
            cursor.close() 
  
    return team_convert_dict_list, records_read

# 
# read csv file into list of dictionaries (each row is dictionary)
# 
def read_csv_to_list_of_dict(filename):
  
    team_stats_dicts_list = []
    with open(filename, mode='r', newline='', encoding='utf-8') as csv_file:
        csv_reader = csv.DictReader(csv_file)

        # The list() constructor converts the DictReader iterator to a list
        team_stats_dicts_list = list(csv_reader)

    return team_stats_dicts_list


# 
# add teamid to team_stats_dicts_list from team_convert_dict_list
# 
def add_teamid_to_teamstats(team_stats_dicts_list, team_convert_dict_list):
  
    for row_stats in team_stats_dicts_list:
        team_stat_item = row_stats['Team']
        for row_conv in team_convert_dict_list:
            if team_stat_item == row_conv['name']:
                team_conv_item_id = row_conv['id']
                break

        # Add the new key-value pair to the current dictionary        
        row_stats['teamid'] = team_conv_item_id    

    return team_stats_dicts_list

# 
# add or update team_stats to mqsql
# 
def add_update_team_stats(team_stats_dicts_list):
    row_stat_inserts = 0
    row_stat_updates = 0

    for row_stats in team_stats_dicts_list:
        if team_stats_exist(row_stats): 
            update_teamstats_row(row_stats)
            row_stat_updates += 1
        else:
            insert_teamstats_row(row_stats)  
            row_stat_inserts += 1

    return row_stat_inserts, row_stat_updates

# 
# check if team_stats row exists
# 
def team_stats_exist(team_stats_row):
    try:
        # Connect to the MySQL database
        con = mysql.connector.connect(**dbparms)
        cursor = con.cursor(dictionary=True)

        # Create multiline SQL query using triple quotes
        sql_query = "SELECT id FROM teamweekranktbl WHERE season = %s and week = %s and teamid = %s LIMIT 1"

        # Define parameters (use %s placeholders to prevent SQL injection)
        params = (team_stats_row['Season'], team_stats_row['Week'], team_stats_row['teamid'])

        # Execute the query
        cursor.execute(sql_query, params)

        # Access the fully rendered SQL statement after execution
        executed_query = cursor.statement
        if debug in (3, 10): print(f"Executed SQL Query: {executed_query}")
       
        # Fetch all rows as list of dictionaries
        team_stat_read = cursor.fetchall()

        records_read = cursor.rowcount
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        # Close cursor and connection
        if con.is_connected():
            con.close()
            cursor.close() 
  
    return records_read

# 
# insert team_stats row 
# 
def insert_teamstats_row(team_stats_row):
    number_of_inserts = 0

    try:
        # Connect to the MySQL database Create a buffered cursor
        con = mysql.connector.connect(**dbparms)
        cursor = con.cursor(buffered=True)

        # Create multiline SQL query using triple quotes
        sql_query = """
        INSERT INTO teamweekranktbl
        (season, week, teamid, powerranking, offencetotal, offencepassing, 
        offencerushing, offencescoring, defencetotal, defencepassing, defencerushing, 
        defencescoring, enterdate) 
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
        """

        # Define parameters (use %s placeholders to prevent SQL injection)
        params = (
            team_stats_row['Season'], 
            team_stats_row['Week'], 
            team_stats_row['teamid'],
            team_stats_row['PowerRank'], 
            team_stats_row['OffenseScoringRank'], 
            team_stats_row['OffensePassingRank'], 
            team_stats_row['OffenseRushingRank'], 
            team_stats_row['OffenseTotalRank'], 
            team_stats_row['DefenseScoringRank'], 
            team_stats_row['DefensePassingRank'], 
            team_stats_row['DefenseRushingRank'], 
            team_stats_row['DefenseTotalRank'],
            mysql_date_time_stamp 
            )

        # Execute the query
        # mycursor.executemany(sql, val)
        cursor.execute(sql_query, params)

        # Fetch and process results
        con.commit()
        # results = cursor.fetchall()

        number_of_inserts = cursor.rowcount  
    except mysql.connector.Error as err:
      print(f"Error: {err}")

    finally:
        # Close cursor and connection
        if con.is_connected():
            con.close()
            cursor.close() 


    return number_of_inserts

# 
# update if team_stats row exists
# 
def update_teamstats_row(team_stats_row):
    number_of_updates = 0

    try:
        # Connect to the MySQL database Create a buffered cursor
        con = mysql.connector.connect(**dbparms)
        cursor = con.cursor(buffered=True)

        # Create multiline SQL query using triple quotes
        sql_query = """
        UPDATE teamweekranktbl 
        SET season=%s,week=%s,teamid=%s, powerranking=%s, offencescoring=%s,
        offencepassing=%s, offencerushing=%s, offencetotal=%s, defencescoring=%s,
        defencepassing=%s,defencerushing=%s, defencetotal=%s, enterdate=%s
        WHERE season = %s AND week = %s and teamid = %s;
        """

        # Define parameters (use %s placeholders to prevent SQL injection)
        params = (
            team_stats_row['Season'], 
            team_stats_row['Week'], 
            team_stats_row['teamid'],
            team_stats_row['PowerRank'], 
            team_stats_row['OffenseScoringRank'], 
            team_stats_row['OffensePassingRank'], 
            team_stats_row['OffenseRushingRank'], 
            team_stats_row['OffenseTotalRank'], 
            team_stats_row['DefenseScoringRank'], 
            team_stats_row['DefensePassingRank'], 
            team_stats_row['DefenseRushingRank'], 
            team_stats_row['DefenseTotalRank'], 
            mysql_date_time_stamp,
            team_stats_row['Season'], 
            team_stats_row['Week'],
            team_stats_row['teamid']
            )

        # Execute the query
        # mycursor.executemany(sql, val)
        cursor.execute(sql_query, params)

        # Access the fully rendered SQL statement after execution
        executed_query = cursor.statement
        if debug in (1, 10): print(f"Executed SQL Query: {executed_query}")

        # Fetch and process results
        con.commit()
        # results = cursor.fetchall()

        number_of_updates = cursor.rowcount  
    except mysql.connector.Error as err:
      print(f"Error: {err}")

    finally:
        # Close cursor and connection
        if con.is_connected():
            con.close()
            cursor.close() 


    return number_of_updates

#----------------------------------------------------------------- 
# Main
#----------------------------------------------------------------- 

print(f"Teams stats update started!")

# get mysql fomated date time stamp
mysql_date_time_stamp = create_msql_date_time_stamp()

# get sql db password 
dbparms['password'] = getsqldbpassword()
if dbparms['password'] == '':
  print("No db password entered!")
  quit()
 
# get list of cvs files to process
file_list = glob.glob(team_stats_inputfile_template)
file_list.sort(key=os.path.getmtime,reverse=True)  

lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
while (idx < lcount):
  print ("The current count is:", idx + 1)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for import as Team stats file Y/N ? ")  
  if answer.upper() == "Y":  
    team_stats_file = fname
    break;  
  
  idx += 1

if team_stats_file == "":
  print("No file picked!")
  quit()

# get team_convertion_dict from teamtbl and records read
team_convert_dict_list, records_read = create_team_convert_dict()

# read csv file into list of dictionaries 
team_stats_dicts_list = read_csv_to_list_of_dict(team_stats_file)

# add teamid to team_stats from team convert
team_stats_dicts_list = add_teamid_to_teamstats(team_stats_dicts_list, team_convert_dict_list)

# add/update team_stats to ablet
row_stat_inserts, row_stat_updates = add_update_team_stats(team_stats_dicts_list)

print(f"row_stat_inserts {row_stat_inserts} row_stat_updates {row_stat_updates}")

print(f"Teams stats update Finnished!")

quit()