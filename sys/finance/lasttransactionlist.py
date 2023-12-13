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
# Description: Display last records inserted into each institution
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

cvshdr = ['id', 'institutiontype', 'institution', 'transdate', 'amt', 'category', 'payee', 'enterdate'] 

stats = {
    "records read" : 0,
    "records written" : 0,
    "output filename" : "",
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
#  write the cvs file
#  
def writecsvfile(hdr, rows):

  # 
  #  first build output filename
  # 
  current_datetime = date.today().strftime('%m%d%Y')
  str_current_datetime = str(current_datetime)

  # create a file object along with extension
  csvoutfilename = "lasttrans-" + str_current_datetime+".csv"
  stats["output filename"] = csvoutfilename
  

  # 
  #  fNow write out the file
  # 
  recordswritten = 0
  with open(csvoutfilename, 'w') as csvfile:  
      # creating a csv writer object  
      csvwriter = csv.writer(csvfile)  
          
      # writing the hdr  
      csvwriter.writerow(hdr)  
          
      # writing the data rows  
      csvwriter.writerows(rows) 

      recordswritten = len(rows)

  stats["records written"] = recordswritten


    
#
# get last transaction numbers
#
def getdisplaylasttransactioninfo():

  #
  # get list of institutions to process
  #
  result = ""
  csvresult = ""
  firsttime = 1

  try:
    conn = mysql.connector.connect(**dbparms)
    cursor = conn.cursor()

    sql = "SELECT institutiontype, institution FROM institutiontbl"

    cursor.execute(sql)
    
    result = cursor.fetchall()
  except mysql.connector.Error as e:
    print("Error select transaction inst data from institutiontbl table", e)
    print(sql)
    print(row)
  finally:
    if conn.is_connected():
        conn.close()
        cursor.close()  

  recordsread = 0
  for row in result:
    insttype = row[0]
    instname = row[1]

    try:
      conn = mysql.connector.connect(**dbparms)
      cursor = conn.cursor()

      sql = f"""SELECT T.* 
        FROM transactiontbl T
        LEFT JOIN (
          SELECT MAX(transdate) AS "targetdate", institutiontype, institution 
          FROM transactiontbl 
          WHERE institutiontype = '{insttype}' AND institution = '{instname}'
          ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
        WHERE T.institutiontype = '{insttype}' AND T.institution = '{instname}' AND transdate = M.targetdate;"""

      # print("\nsql= ",tmpsql)
      cursor.execute(sql)

      result = cursor.fetchall()

      recordsread = recordsread + cursor.rowcount

      if firsttime == 1:
        csvresult = result 
        firsttime = 0
      else:  
        csvresult.extend(result)

      # print(result)
    except mysql.connector.Error as e:
      print("Error selecting institutiontbl data", e)
      print(sql)
      print(row)
    finally:
      if conn.is_connected():
          conn.close()
          cursor.close()  

  stats["records read"] = recordsread        

  writecsvfile(cvshdr, csvresult)



  # return number_of_rows     

##################################
# Main
################################## 

print("Get last transaction list started!\n")

# 
# get finance db password 
# 
dbpasswd = getfinancedbpassword()
if dbpasswd == '':
  print("No financial db password entered!")
  quit()

dbparms['password'] = dbpasswd

#
# Get transaction data 
#
getdisplaylasttransactioninfo()

print("\nRecords Read", stats["records read"]) 
print("Record Written", stats["records written"]) 
print("Output csv filename:", stats["output filename"])
print("\nGet last transaction list Ended!")