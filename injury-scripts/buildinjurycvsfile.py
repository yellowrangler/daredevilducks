#!/usr/bin/env python3

import csv
import datetime
from datetime import date

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 10/19/2023
# Description: Read in NFL Injury CSV file from RottoWire. Convert Team abbreviation to TemID on 
#              DDD Database
######################################################################################################


##################################
# global variables
##################################

input_conversion_file = "conversionfile.csv"
input_injury_file = "nflinjuryreport.csv"
output_injury = "injuryimportfile-"
output_injury_file = ""

conversion_dict = dict()
injury_dict = dict()
convertedinjury_dict = dict()

counters = {
    "Read" : 0,
    "Passed" : 0,
    "Written" : 0
    }


##################################
# functions
##################################

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
# convert team abbreviation to team id
#
def cvtinjury(teamabbrev): 
  for row in conversion_dict:
    if teamabbrev == row['TA']:
      teamid = row['TI']

  return teamid

##################################
# Main
################################## 

print("Conversion started!\n")

# 
# build output file name
# 
current_datetime = date.today().strftime('%m%d%Y')
str_current_datetime = str(current_datetime)

# create a file object along with extension
output_injury_file = output_injury + str_current_datetime+".csv"

# 
# get the conversion file. read into dict
# 
conversion_dict = getconversionfile()

# 
# get the injuryfile file. read into dict
# 
with open(output_injury_file, 'w', newline='') as csv_file_out:
  fieldnames = ['Player','Team','Pos','Injury','Status']
  csv_writer_out = csv.DictWriter(csv_file_out, fieldnames=fieldnames)

  csv_writer_out.writeheader()

  with open(input_injury_file, mode='r', encoding='utf-8-sig') as csv_file_in:
      csv_reader_in = csv.DictReader(csv_file_in)
      for row in csv_reader_in:
        counters['Read'] += 1

        if row['Team'] == 'FA':
          counters['Passed'] += 1
          continue
        else:
          teamid = cvtinjury(row['Team'])
          row['Team'] = teamid

          counters['Written'] += 1

          csv_writer_out.writerow(row)  

      csv_file_out.close() 
      csv_file_in.close()

print(f"Records read: {counters['Read']} ")
print(f"Records passed: {counters['Passed']} ")
print(f"Records written: {counters['Written']} \n")
print(f"Input injury filename: {input_injury_file} ")
print(f"Input conversion filename: {input_conversion_file} ")
print(f"Import filename: {output_injury_file} \n")
print("Conversion finished!")