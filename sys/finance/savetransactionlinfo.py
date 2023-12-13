#!/usr/bin/env python3

import logging

# import MySQLdb

import mysql
import mysql.connector
from mysql.connector import errorcode

import glob
import csv
import re

from datetime import date
from decimal import Decimal

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 12/09/2023
# Description: Read in bank or creditcard csv information
######################################################################################################

##################################
# global variables
##################################

dbparms = {
    'user': 'tandt', 
    'password': '',
    'host': 'localhost',
    'database': 'finance'
}

required_csv_items = [0, 1, 2, 3, 5]
csv_nbr_item = 6

transactionfile = 'Transactions*.csv'

trantable = 'transactiontbl'

stats = {
    "finance scope" : "",
    "input filename" : "",
    "input item errors" : "",
    "output filename" : "",
    "records read" : 0,
    "records written" : 0
    }

##################################
# functions
##################################

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
def getfinancescope():
  answer = ''

  # Ask the user for finace scope.
  answer = input("Financial scope defaults to append (append or overwrite ?): ")
  if answer != "append" and answer != "overwrite" :  
    answer = 'append'

  return (answer)

def getfilename():
  answer = ''

  # 
  # get list of cvs files to process
  # 

  file_list = glob.glob(transactionfile)
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
# validate required items
# 
def valid_list(list, size, required):

  #
  # csv list must have size number of elements
  #
  list_nbr = len(list)
  if list_nbr != size:
    logging.info('invalid size:  %s', str(list_nbr))
    logging.info('error row:  %s', list)

    return 0

  #
  # csv list must have required elements. Required is list of index positions
  #
  i = 0
  while i < len(required):  
    x = required[i]
    if len(list[x]) == 0:
      logging.info('invalid item size: %s', list[x])
      logging.info('error row:  %s', list)

      return 0

    i = i + 1  

  #
  # amt must be not be 0
  #
  amtstr = list[5]
  # print("amtstr: ",list)
  amt = Decimal(amtstr)
  if amt.is_zero():
    logging.info('invalid decimal is 0')
    logging.info('error row:  %s', list)

    return 0   

# 
# get financial data into list
# 
def readfinancialdataintolist(filename):
  isvalid_list = 1
  input_item_errors = 0

  formatted_date = date.today().strftime('%Y-%m-%d %H:%M:%S')
  
  financialfile = open(filename, mode='r')
  financiallist = list(csv.reader(financialfile, delimiter=","))
  financialfile.close()

  # add season and week to front of list
  i = 0
  while i < len(financiallist):
    if i == 0:
      del financiallist[i]

    isvalid_list = valid_list(financiallist[i], csv_nbr_item, required_csv_items)
    if isvalid_list == 0:
      del financiallist[i]
      input_item_errors = input_item_errors + 1

      # i = i + 1
      continue
  
    financiallist[i].append(formatted_date)
    tmpstr = financiallist[i][3]
    financiallist[i][3] = re.sub("'","",tmpstr)
    tmpstr = financiallist[i][5]
    financiallist[i][5] = Decimal(tmpstr)

    i = i + 1
     
  stats["input item errors"] = input_item_errors   

  return financiallist

#
# delete same season week injury numbers
#
def deletefinancialtblinfo():

  financialtable = trantable

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
def insertfinancialinfo(data):
  number_of_rows = 0
  financialtable = trantable

  print("\nInserting Financial transactions!")
  for row in data:
    try:
      conn = mysql.connector.connect(**dbparms)
      cursor = conn.cursor()

      tmpsql = "INSERT INTO " + financialtable + "(institutiontype, institution, transdate, payee, category, amt, enterdate)" 
      sql = tmpsql + " VALUES (%s, %s, STR_TO_DATE(%s,'%m/%d/%Y'), %s, %s, %s, %s)"

      # MySQLdb.escape_string(row)

      cursor.execute(sql, row)
      
      conn.commit()

      number_of_rows = number_of_rows + 1
    except mysql.connector.Error as e:
      print("Error inserting financial data for financial table", e)
      print(sql)
      print(row)
    finally:
      if conn.is_connected():
          conn.close()
          cursor.close()   


  return number_of_rows     

##################################
# Main
################################## 

# logging
logging.basicConfig(filename='financial.log', format='%(asctime)s %(message)s', encoding='utf-8', level=logging.INFO)
logging.info('Finance Update started')

print("Finance Update started!\n")

# 
# get finance db password 
# 
dbpasswd = getfinancedbpassword()
if dbpasswd == '':
  print("No financial db password entered!")
  quit()

dbparms['password'] = dbpasswd

# 
# get finance scope 
# 
fscope = getfinancescope()
if fscope == '':
  print("No financial scope entered!")
  quit()

stats['finance scope'] = fscope


# 
# get financial file 
# 
ffile = getfilename()
if ffile == '':
  print("No financial file entered!")
  quit()  

stats["input filename"] = ffile  

#
# get financial data into list
#
financialdatalist = readfinancialdataintolist(ffile)
# print(financialdatalist)

stats['records read'] = len(financialdatalist)

#
# Delete existing finacial data if full update
#
if fscope == "overwrite":
  deletefinancialtblinfo()

# insert finacial data
stats['records written'] = insertfinancialinfo(financialdatalist)

# logging
logging.info('Stats scope: %s' '  read: %s' '  errors: %s' '  written: %s', stats["finance scope"], stats["records read"], stats["input item errors"], stats["records written"])
logging.info('Financial Update Ended!')


print("\nFinancial records Read", stats["records read"]) 
print("Financial record Errors", stats["input item errors"]) 
print("Financial records Written", stats["records written"]) 

print("\nFinancial Update Ended!")