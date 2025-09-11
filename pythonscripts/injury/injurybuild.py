#!/usr/bin/env python3


import pandas as pd
import math

import csv
import datetime
import sys
import glob
from datetime import date
import shutil

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 10/19/2023
# Updated: 10/10/2024 - add copy to data/importfiles. Add request for week now added to filename!
# Description: Read in NFL Injury CSV file from RottoWire. Convert Team abbreviation to TemID on 
#              DDD Database
# Updated: 09/01/2025 - csv fileno longer has est return column. dont delete
# 
######################################################################################################


##################################
# global variables
##################################

input_conversion_file = "conversionfile.csv"
input_injury_file = ""
output_injury = "injuryimportfile"
output_injury_file = ""
output_injury_week = ""
output_injury_season = ""
# detstination_directory = "testdir"
detstination_directory = "../../data/importfiles"

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
# get team conversion file
#
def getconversionfile(): 
  # read the cvs injury file into a datframe
  df = pd.read_csv('data/fb_price.csv')

  return df

#
# convert team abbreviation to team id
#
def cvtinjury(teamabbrev): 
  for row in conversion_dict:
    if teamabbrev == row['TA']:
      teamid = row['TI']

  return teamid

# 
#  get injury season parm
#  
def get_injury_season_input():
  output_injury_season = input("Enter injury season (number): ")

  if (len(output_injury_season) == 0):
    print("Must pass in valid injury season!")
    quit()

  return output_injury_season  

# 
#  get injury week parm
#  
def get_injury_week_input():
  output_injury_week = input("Enter injury week (number): ")

  if (len(output_injury_week) == 0):
    print("Must pass in valid injury week!")
    quit()

  return output_injury_week  

##################################
# Main
################################## 

print("Conversion started!\n")

# 
# get list of cvs files to process
# 

file_list = glob.glob("nfl-injury*.csv")
lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
while (idx < lcount):
  print ("The current count is:", idx + 1)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for import as injury file for ddd Y/N ?")  
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
output_injury_season = get_injury_season_input()

#
# get injury week
#
output_injury_week = get_injury_week_input()

# 
# build output file name
# 
current_datetime = date.today().strftime('%m%d%Y')
str_current_datetime = str(current_datetime)

# create a file object along with extension
output_injury_file = output_injury + "-season" + output_injury_season + "-week" + output_injury_week + "-" + str_current_datetime + ".csv"

# 
# get the conversion file. read into dict
# 
conversion_dict = getconversionfile()

# 
# start output file. Then read in injury file - make changes to rows and write output
# 



brake the car



# open output file
with open(output_injury_file, 'w', newline='') as csv_file_out:
  fieldnames = ['Player','Team','Pos','Injury','Status']
  csv_writer_out = csv.DictWriter(csv_file_out, fieldnames=fieldnames)

  # write header for output csv
  csv_writer_out.writeheader()

  # cycle through input file making changes then write to output file
  with open(input_injury_file, mode='r', encoding='utf-8-sig') as csv_file_in:
      csv_reader_in = csv.DictReader(csv_file_in)

      for row in csv_reader_in:
        counters['Read'] += 1

        if row['Team'] == 'FA':
          counters['Passed'] += 1
          continue
        else:
          # convert team abb to team id
          teamid = cvtinjury(row['Team'])
          row['Team'] = teamid

          # drop the estimated return column then write out new row
          del row['Est. Return']
 
          csv_writer_out.writerow(row) 

          counters['Written'] += 1 

      csv_file_out.close() 
      csv_file_in.close()

print(f"\nRecords read: {counters['Read']} ")
print(f"Records passed: {counters['Passed']} ")
print(f"Records written: {counters['Written']} \n")
print(f"Input injury filename: {input_injury_file} ")
print(f"Input conversion filename: {input_conversion_file} ")
print(f"Output Injury filename for Import: {output_injury_file} \n")
print("Conversion finished!")

answer = input(f"\nWould you like the file {output_injury_file} copied to {detstination_directory}?: (y/n) ")
if (answer[0] == 'y' or answer[0] == 'Y'):
  print(f'Copying file!')
  shutil.copy(output_injury_file, detstination_directory)
  print(f"Conversion file {output_injury_file} copied! \n")
else:
  quit()
