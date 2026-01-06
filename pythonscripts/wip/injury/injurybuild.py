#!/usr/bin/env python3


import pandas as pd
import math

import csv
import datetime
import sys
import glob
import os
from datetime import date
import shutil

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 09/12/2025
# Description: Read in NFL Injury CSV file from RottoWire. Convert Team abbreviation to TemID on 
#              DDD Database - rewritten from buildinjurycvsfile.py
# 
######################################################################################################


##################################
# global variables
##################################

input_conversion_file = "conversionfile.csv"
input_injury_file = ""
output_injury = "injury"
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
# convert team abbreviation to team id
#
def cvtinjury(teamabbrev, conversion_dict): 
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
# get the conversion file. read into data frame
# 
conv_dict = getconversionfile()

# 
# get the injury file. read into data frame
# 
injury_df = getinjuryfile(input_injury_file)

# remove superfluous columns
injury_df = injury_df[['Player','Team','Pos','Injury','Status']]

# drop indices where Team = FA
indices_to_drop = injury_df.loc[injury_df['Team'] == 'FA'].index
injury_df.drop(indices_to_drop, inplace=True)

# convert team name ti db id
for index, row in injury_df.iterrows():
  row['Team'] = cvtinjury(row['Team'], conv_dict)
  
# 
# build output file name
# 
current_datetime = date.today().strftime('%m%d%Y')
str_current_datetime = str(current_datetime)

# create a file object along with extension
output_injury_file = output_injury + "-season" + output_injury_season + "-week" + output_injury_week + "-" + str_current_datetime + ".csv"

injury_df.to_csv(output_injury_file, index=False) 

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