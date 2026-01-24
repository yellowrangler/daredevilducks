#!/usr/bin/env python3

# import MySQLdb

import mysql
import mysql.connector
from mysql.connector import errorcode
from datetime import datetime

import glob
import csv
import re
import os 

from simple_term_menu import TerminalMenu

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 12/10/2025
# Description: Read in sql for execution
######################################################################################################

##################################
# global variables
##################################

dbparms = {
    'user': 'tarryc', 
    'password': '',
    'host': 'localhost',
    'database': 'ddd'
}

stats = {
    "Input filename" : "",
    "input item errors" : "",
    "Run script errors" : 0,
    "Output filename" : "",
    "Items processed" : 0,
    }

sqlfile_template = 'sql/*.sql'

input_location = 'sql/'
output_location = 'results/'

##################################
# functions
##################################

# 
#  get input parm
#  
def getsqldbpassword():
  answer = ''

  # Ask the user for finace type.
  answer = input("What is the db password?: ")
  
  return (answer)

###################################################################################################### 
# Prompts the user for input until a valid number (integer or float) is entered.
# 
# Args:
#     prompt_message: The message to display to the user.
# 
# Returns:
#     The user's input as a number (int).
######################################################################################################
def get_number_input(prompt_message):

  while True:
    user_input = input(prompt_message)
    try:
      # Try converting to an integer
      return int(user_input)
    except ValueError:
      # If both fail, print an error and continue the loop
      print(f"'{user_input}' is not a number. Please enter a valid number.")


# 
# write sql results to terminal 
# 
def writeterm(contents, sql):
  header_request = f"SQL request: {sql} "
  header_responce = f"SQL responce follows "
  divider = "====================================================================================================="
  
  print(f"{divider}")
  print(f"{header_request}")
  print(f"{divider}")

  print(f"{header_responce}")
  print(f"{divider}")
  for t in contents:
    print(f"{t}")
  
# 
# write sql results to text file
# 
def writetxtfile(contents, filename, sql):
  header_request = f"SQL request: {sql} "
  header_responce = f"SQL responce follows "
  divider = "====================================================================================================="

  try:
    with open(filename, 'a') as file:
      file.write(f"{divider}\n")
      file.write(f"{header_request}\n")
      file.write(f"{divider}\n")
      file.write(f"{header_responce}\n")
      file.write(f"{divider}\n")
      for t in contents:
        file.write(f"{t}\n")
  except FileExistsError:
    print("{filename} Error.")

# 
# write sql results to csv file
# 
def writecsvfile(data, filename, nbr):

  file_path = filename.replace(".csv", str(nbr) + ".csv")
  try:
    with open(file_path, 'w', newline='') as csvfile:
      writer = csv.writer(csvfile)
      writer.writerows(data)
      print(f"CSV file '{file_path}' created successfully.")
  except IOError as e:
    print(f"Error writing to file: {e}")

# 
# delete sql results file
# 
def deletefile(filename):
  if os.path.exists(filename):
    try:
      os.remove(filename)
      # print(f"File '{file_path}' has been deleted successfully.")
    except PermissionError:
      print(f"Permission denied to delete the file '{file_path}'.")
    except Exception as e:
      print(f"An error occurred while deleting the file: {e}")
  
# 
#  get output to file or terminal
#  
def getsqloutput(filename):
  # Ask the user if output to file
  outfile = ""
  answer = input("Where send output? 1=terminal 2=text 3=csv ")
  # print(answer)
  if answer == "2": 
    idx = filename.find('.')
    if idx != -1: 
      substr = filename[:idx]
      outfile = substr + ".txt"
      outfile = outfile.replace(input_location, output_location)

  if answer == "3":   
    idx = filename.find('.')
    if idx != -1: 
      substr = filename[:idx]
      outfile = substr + ".csv"
      outfile = outfile.replace(input_location, output_location)

  return (outfile)

# 
# get filename to process
# 
def getSQLfilename():
  answer = ''
  selected_file_name = ''
  
  # 
  # get list of sql files to process
  # 
  file_list = glob.glob(sqlfile_template)
  file_list.sort(key=os.path.getmtime,reverse=True)  


  lcount = len(file_list)
  print ("The file count is:", lcount)

  idx = 0
  selected_file_idx = 0

  while (idx < lcount):
    selected_file_number = idx + 1
    print (f"File: {file_list[idx]:>40} File Nbr: { selected_file_number }")
    idx += 1

  # 
  # prompt for file number from list
  # 
  selected_file_number = get_number_input("Chose the file number to proces: ") 

  # adjust number to idx
  selected_file_idx = selected_file_number - 1

  # check that index is valid for list 
  if 0 <= selected_file_idx < len(file_list):
    selected_file_name = file_list[selected_file_idx]
    print(f"You selected {selected_file_name}")
    answer = input(f"Do you want to continue Y/N ? ")  
    if answer.upper() == "N":
      print("Selection canceled by user")  
      quit()
  else:
    print(f"Invalid file number {selected_file_number}!") 
    quit()

  
  return selected_file_name 

# 
# find type to output to
# 
def output_type(filename):
  pos = filename.find(".csv")
  if pos == -1:
    return "txt"
  else:
    return "csv"
# 
# Read sql into runsql variable
# 
def readsqlfile(filename):
  try:
      with open(filename, "r") as file:
          runsql = file.read()
      # print("Entire runsql content:")
      # print(runsql)
  except FileNotFoundError:
      print(f"Error: The file '{filename}' was not found.")
  except Exception as e:
      print(f"An error occurred: {e}") 

  return runsql     
 
#
# runsql
#
def runsqlcode(sql, outfile):

  print("\nRunning SQL script!")

  # 
  #  delete file output before run sql
  # 
  ft = output_type(outfile)
  if ft == "txt":
    deletefile(outfile)

  try:
    conn = mysql.connector.connect(**dbparms)
    cursor = conn.cursor()

    sql_request_list = sql.split(";")

    counter = len(sql_request_list)
    # print (counter)
    # print(dbparms)
    # quit()

    i = 0
    while i < len(sql_request_list):
      cursor.execute(sql_request_list[i])

      sqlresult = cursor.fetchall()
      # print(sqlresult)
      if not sqlresult:
            sqlresult = ["No Output"]

      # output to display
      if outfile == "":
        writeterm(sqlresult, sql_request_list[i])
        # for x in sqlresult:
        #   print(x)    
      else:
        ft = output_type(outfile)
        if ft == "txt":
          # output to text file
          writetxtfile(sqlresult, outfile, sql_request_list[i])
        if ft == "csv":
          # text to csv
          writecsvfile(sqlresult, outfile, i+1)

      i = i + 1

    # print(sqlresult)
    conn.commit()

    stats["Items processed"] = cursor.rowcount
  except mysql.connector.Error as e:
    print("Error running sql code", e)
    stats["Script run errors"] = stats["Run script errors"] + 1
  finally:
    if conn.is_connected():
      conn.close()
      cursor.close()    

  return  

##################################
# Main
################################## 

print("Run SQL started!\n")

# 
# get sql db password 
# 
dbpasswd = getsqldbpassword()
if dbpasswd == '':
  print("No db password entered!")
  quit()

dbparms['password'] = dbpasswd

# 
# get sql file 
# 
ffile = getSQLfilename()
if ffile == '':
  print("No SQL file entered!")
  quit()  

stats["Input sqlfile"] = ffile  

# 
# get sql file output type
# 
output = getsqloutput(ffile)
stats["Output filename"] = output  

# 
# read sql file into runsql
# 
runsql = readsqlfile(ffile)

# 
# run sql code
# 
runsqlcode(runsql, output)

print("\nInput SQL filename", stats["Input filename"])
print("Items processed", stats["Items processed"])
print("Output SQL responce", stats["Output filename"])

print("Run SQL ended!\n")
