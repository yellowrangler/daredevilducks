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

sqlfile = '*.sql'

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
def writecsvfile(data, nbr):
  file_path = f"runsql{nbr}.csv"
  # print(data)
  # print(file_path)
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

  if answer == "3":   
      idx = filename.find('.')
      if idx != -1: 
        substr = filename[:idx]
        outfile = substr + ".csv"
  return (outfile)

# 
# get filename to process
# 
def getfilename():
  answer = ''
  
  # 
  # get list of sql files to process
  # 
  file_list = glob.glob(sqlfile)
  file_list.sort(key=os.path.getmtime,reverse=True)  
  
  lcount = len(file_list)
  idx = 0
  while (idx < lcount):
    fname = file_list[idx]
    answer = input(f"Use  '{fname}' Y/N ? ")  
    if answer.upper() == "Y":  
      answer = fname
      break;  
    
    idx += 1

  return answer

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
          writecsvfile(sqlresult, i+1)

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
ffile = getfilename()
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
