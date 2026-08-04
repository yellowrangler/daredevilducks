#!/usr/bin/env python3

import csv
import datetime
import sys
import glob, os
from datetime import date

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 08/03/2026
# Description: Read in NFL teams and 2026 teams games file from 
# https://www.pro-football-reference.com/years/2026/games.htm. fix csv file for later import to 
# DDD Database
######################################################################################################


##################################
# global variables
##################################

input_teamname_file = "teamname.csv"
input_nfltv_file = "NFLTV2026.csv"
input_nflseasongamesfile_wc = "*NFL-Schedule.csv"
input_nflseasongamesfile = ""
output_nflseasongamesfile = "NFL-Schedule"
teamname_dict = {}
networkgames_dict = {}

team_dict = dict()
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
# get team name file
#
def getteamnamefile(): 
  tc_dict = dict();
  
  with open(input_teamname_file, mode='r', encoding='utf-8-sig') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    tn_dict = [row for row in csv_reader]

  csv_file.close()

  return tn_dict

#
# get network game file
#
def getnetworkgamefile(): 
  ng_dict = dict();
  
  with open(input_nfltv_file, mode='r', encoding='utf-8-sig') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    ng_dict = [row for row in csv_reader]

  csv_file.close()

  return ng_dict

#
# fix long team name to short team name
#
def fix_team_name(longteamname):
    shortname = ""

    for tn in teamname_dict:
        for key, value in tn.items():
            if value in longteamname:
                shortname = value

    return shortname

#
# get network name for game
#
def get_network_name(week, awayteam):
    networkname = ""
    
    for ng in networkgames_dict:
        for key in ng:
            if ng['week'] == week and ng['awayteam'] == awayteam:
                    networkname = ng['network']

    return networkname.rstrip()

##################################
# Main
################################## 

print("Fix Season games started!\n")

# 
# get list of cvs files to process
# 

file_list = glob.glob(input_nflseasongamesfile_wc)

lcount = len(file_list)
idx = 0
while (idx < lcount):
  print ("The count is:", lcount)
  fname = file_list[idx]
  answer = input(f"Do you want to use '{fname}' for NFL Game fix Y/N ?")  
  if answer.upper() == "Y":  
    input_nflseasongamesfile = fname
    break;  
  
  idx += 1

  if input_nflseasongamesfile == "":
    print("No file picked!")
    quit()

# 
# build output file name
# 
current_datetime = date.today().strftime('%m%d%Y')
str_current_datetime = str(current_datetime)

# create a file object along with extension
output_nflseasongamesfile = output_nflseasongamesfile + str_current_datetime+".csv"

# 
# get the conversion file. read into dict
# 
teamname_dict = getteamnamefile()
 
# 
# get the network names file. read into dict
# 
networkgames_dict = getnetworkgamefile()

# 
# start output file. Then read in teamname file - make changes to rows and write output
# 

# open output file
with open(output_nflseasongamesfile, 'w', newline='') as csv_file_out:
  fieldnames = ['season','gametypeid','week','date','awayteam','hometeam','network','time']
  csv_writer_out = csv.DictWriter(csv_file_out, fieldnames=fieldnames)

  # write header for output csv
  csv_writer_out.writeheader()

  # cycle through input file making changes then write to output file
  with open(input_nflseasongamesfile, mode='r', encoding='utf-8-sig') as csv_nflgamefile_in:
      csv_reader_in = csv.DictReader(csv_nflgamefile_in)
      network_name = ""

      for row in csv_reader_in:
        counters['Read'] += 1

        # fix hometeam
        shortname = fix_team_name(row['hometeam'])
        if shortname == "":
            print(f"Error: No match for teamname {row['hometeam']}")
        else:
            row['hometeam'] = shortname

        # fix awayteam
        shortname = fix_team_name(row['awayteam'])
        if shortname == "":
            print(f"Error: No match for teamname {row['awayteam']}")
        else:
            row['awayteam'] = shortname


        # add network from NFLTV206.csv
        network_name = get_network_name(row['week'], row['awayteam'])
        if network_name == "":
            print(f"Error: No match for nfl network {row['awayteam']} {row['week']}")
        else:
            row['network'] = network_name

        csv_writer_out.writerow(row) 

        counters['Written'] += 1 

      csv_file_out.close() 
      csv_nflgamefile_in.close()

print(f"\nRecords read: {counters['Read']} ")
print(f"Records passed: {counters['Passed']} ")
print(f"Records written: {counters['Written']} \n")
print(f"Input NFL games file: {input_nflseasongamesfile} ")
print(f"Input teamname file: {input_teamname_file} ")
print(f"Output NFL games file: {output_nflseasongamesfile} \n")
print("Fix Season games  finished!")