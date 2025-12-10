#!/usr/bin/env python3

import logging

# import MySQLdb

import mysql
import mysql.connector
from mysql.connector import errorcode

import glob
import csv
import re
import os 

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 07/31/2025
# Description: Read in sql for financial trans
######################################################################################################

##################################
# global variables
##################################

dbparms = {
    'user': '', 
    'password': '',
    'host': '',
    'database': ''
}

stats = {
    "Input filename" : "",
    "input item errors" : "",
    "Run script errors" : 0,
    "Output filename" : "",
    }

sqlfile = 'run*.sql'

##################################
# functions
##################################

# 
#  get input parm
#  
def getfinancedbpassword():
  answer = ''

  # Ask the user for finace type.
  answer = input("What is the db password?: ")
  
  return (answer)

# 
# write sql results to file
# 
def writefile(contents, filename, sql):
	header = f"SQL request: {sql} "
	divider = "================================================================="

	try:
		with open(filename, 'a') as file:
			file.write(f"{divider}\n")
			file.write(f"{header}\n")
			file.write(f"{divider}\n")
			for t in contents:
				file.write(f"{t}\n")
	except FileExistsError:
		print("{filename} Error.")

# 
# write sql results to file
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
	print(answer)
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
  # get list of cvs files to process
  # 
  file_list = glob.glob(sqlfile)
  lcount = len(file_list)
  idx = 0
  while (idx < lcount):
    fname = file_list[idx]
    answer = input(f"Use  '{fname}' Y/N ?")  
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

		i = 0
		while i < len(sql_request_list):
			cursor.execute(sql_request_list[i])

			sqlresult = cursor.fetchall()

			# output to display
			if outfile == "":
				for x in sqlresult:
					print(x)		
			else:
				ft = output_type(outfile)
				if ft == "txt":
					# output to text file
					writefile(sqlresult, outfile, sql_request_list[i])
				if ft == "csv":
					# text to csv
					writecsvfile(sqlresult, i+1)

			i = i + 1

		# print(sqlresult)
		# conn.commit()
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

# logging
logging.basicConfig(filename='runsql.log', format='%(asctime)s %(message)s', encoding='utf-8', level=logging.INFO)
logging.info('Run SQL started')

print("Run SQL started!\n")

# 
# get finance db password 
# 
dbpasswd = getfinancedbpassword()
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

stats["Input filename"] = ffile  

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

# logging
logging.info('Run SQL Ended for file {}!')

print("Input SQL filename", stats["Input filename"])
print("Output SQL responce", stats["Output filename"])

print("Run SQL ended!\n")
