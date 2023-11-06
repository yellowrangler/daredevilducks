#!/usr/bin/env python3

import mysql
import mysql.connector
from mysql.connector import errorcode
import glob
from datetime import date
import csv
import re
from decimal import Decimal


######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 11/04/2023
# Description:  
######################################################################################################


##################################
# global variables
##################################

dbparms = {
    'user': 'root', 
    'password': '',
    'host': 'localhost',
    'database': 'finance'
}

fchoosefile = {
    'creditcard': 'CreditCards*.csv',
    'bank': 'Banks*.csv'
}

ftables = {
    'creditcard': 'creditcardtbl',
    'bank': 'banktbl'
}

stats = {
    "finance type" : "",
    "input filename" : "",
    "output filename" : "",
    "records read" : 0,
    "records written" : 0
    }

# inputtemplatefilestring = '*-transactions.csv'

##################################
# functions
##################################

#
# delete same season week injury numbers
#
def deletefinancialinfo(financialtype):

  financialtable = ftables[financialtype]

  try:
    conn = mysql.connector.connect(**dbparms)
    cursor = conn.cursor()

    tmpsql = "DELETE FROM " + financialtable
    sql = tmpsql
    # print(sql)

    cursor.execute(sql) 

    conn.commit()
  except mysql.connector.Error as e:
    print("Error deleting financial data from financial table", e)
  finally:
    if conn.is_connected():
        conn.close()
        cursor.close()

#
# insert financial numbers
#
def insertfinancialinfo(financialtype, data):
  number_of_rows = 0
  financialtable = ftables[financialtype]

  try:
    conn = mysql.connector.connect(**dbparms)
    cursor = conn.cursor()

    tmpsql = "INSERT INTO " + financialtable + "(institution, transdate, description, category, amt, enterdate)" 

    sql = tmpsql + "VALUES (%s, STR_TO_DATE(%s,'%m/%d/%Y'), %s, %s, %s, %s)"
    # number_of_rows = cursor.executemany(sql, data)
    cursor.executemany(sql, data)
    # print(sql)
    # print(data)

    number_of_rows = cursor.rowcount

    conn.commit()
  except mysql.connector.Error as e:
    print("Error inserting financial data for financial table", e)
  finally:
    if conn.is_connected():
        conn.close()
        cursor.close()   

  return number_of_rows     

# 
#  get input parm
#  
def getfinancedbpassword():
  answer = ''

  # Ask the user for finace type.
  answer = input("What is the finance db password?: ")
  
  return (answer)
  

 # 
#  get input parm
#  
def getfinancetype():
  answer = ''

  # Ask the user for finace type.
  answer = input("What financial type (creditcard or bank?): ")
  
  return (answer)
   

def getfile(financialfiletype):
  answer = ''

  if (financialfiletype == 'creditcard'):
    # 
    # get list of cvs files to process
    # 

    file_list = glob.glob(fchoosefile['creditcard'])
    lcount = len(file_list)
    idx = 0
    while (idx < lcount):
      fname = file_list[idx]
      answer = input(f"Use  '{fname}' Y/N ?")  
      if answer.upper() == "Y":  
        answer = fname
        break;  
      
      idx += 1
  elif (financialfiletype == 'bank'):
    file_list = glob.glob(fchoosefile['bank'])
    lcount = len(file_list)
    idx = 0
    while (idx < lcount):
      fname = file_list[idx]
      answer = input(f"Use  '{fname}' Y/N ?")  
      if answer.upper() == "Y":  
        answer = fname
        break;  
      
      idx += 1
  else:
    print("Bad financial file type!")  
    quit()
  
  return answer

# 
# get financial data into list
# 
def getfinancialdataintolist(filetype, filename):
  formatted_date = date.today().strftime('%Y-%m-%d %H:%M:%S')
  
  financialfile = open(filename, mode='r')
  financiallist = list(csv.reader(financialfile, delimiter=","))
  financialfile.close()

  # add season and week to front of list
  i = 0
  while i < len(financiallist):
    if i == 0:
      del financiallist[i]
  
    financiallist[i].append(formatted_date)
    tmpstr = financiallist[i][2]
    financiallist[i][2] = re.sub("'","",tmpstr)
    tmpstr = financiallist[i][4]
    financiallist[i][4] = Decimal(tmpstr)

    # print(injurylist[i])
    i = i + 1
     
  return financiallist

  
##################################
# Main
################################## 

print("Finance Update started!\n")

# 
# get finance db password 
# 
dbparms['password'] = getfinancedbpassword()

# 
# get type of financial info to update 
# 
ftype = getfinancetype()
if ftype == '':
  print("No financial type entered!")
  quit()

stats["finance type"] = ftype

# 
# get financial file 
# 
ffile = getfile(ftype)
if ffile == '':
  print("No financial file entered!")
  quit()  

stats["input filename"] = ffile  

#
# get financial data into list
#
financialdatalist = getfinancialdataintolist(ftype, ffile)
# print(financialdatalist)

stats['records read'] = len(financialdatalist)

#
# Delete existing finacial data
#
deletefinancialinfo(ftype)


# insert finacial data
stats['records written'] = insertfinancialinfo(ftype, financialdatalist)

print("\nFinancial type", stats["finance type"]) 
print("Financial records Read", stats["records read"]) 
print("Financial records Written", stats["records written"]) 

print("\nInjury Update Ended!")