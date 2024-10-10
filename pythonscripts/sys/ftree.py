#!/usr/bin/env python3

import sys
import subprocess
import datetime
import glob
import os

from pathlib import Path
from datetime import date

######################################################################################################
# Module: ftree.py
# Author: Tarrant Cutler Jr
# Date: 11/10/2023
# Description: Find and display string in file. Show line with line number.
######################################################################################################

##################################
# global variables
##################################
file_list = ""
file_search = ""
file_nbr = 0
line_nbr = 0
string_hits = 0
find_str = ""
restrict_extent = 'n'
output_target = 'd'
output_file_template = "ftree-resluts-"
output_file = ""
foutput = ""

# base_path = '../../daredevilducks'
base_path = '../../python'

full_ext = ['.php', '.txt', '.js', '.css', '.html', '.sql', '.py', '.json', '.rb', '.csv']
use_ext = ['.php', '.txt', '.js', '.css', '.html', '.py', '.json', '.rb']


##################################
# functions
##################################

# 
# get file serach criteria
# 
def get_find_string():
  answer = ''

  # Ask the user for fi`le search criteria
  answer = input(f"Enter find string: ")
  
  return (answer)

# 
# get file serach restrictions - text and sql
# 
def get_use_ext():
  answer = 'n'

  answer = input(f"Restrict extent?(Y/N): ")
  if (answer[0] == 'y' or answer[0] == 'Y'):
     answer = 'y'
  
  return answer

# 
#  set output fil name
# 
def set_output_filename():
     global output_file_template

     newdate = date.today().strftime('%m%d%Y')
     file_name = output_file_template + newdate+'.txt'  

     return file_name 

# 
# select output - display or file
# 
def output_target():
  answer = 'd'

  answer = input(f"Send output to File or Display?(F/D): ")
  if (answer[0] == 'f' or answer[0] == 'F'):
     answer = 'f'

  return answer

# 
# display string to file or display
# 
def display_line(str):
    global foutput
    global output_target


    if (output_target == 'f'):
        foutput.write(str)
    else:
        print(str.strip())


# 
# look for search str
# 
def check_file_for_match(fname):
     global string_hits
     global find_str
 
     with open(fname, 'r', errors='ignore') as fp:
          fbasename = os.path.basename(fname)
          line_nbr = 0
          for line in fp:
               line_nbr += 1
               if (line.find(find_str) != -1):
                    string_hits += 1
                    print_string = "file:{} Line nbr:{} Line:{}\n".format(fbasename, line_nbr, line.strip())
                    display_line(print_string)
                    # print(f"Found file:{fbasename} Line nbr:{line_nbr} Line:{line.strip()}")
               

##################################
# Main
################################## 

print("Recursive Find string started!\n")

# 
#  get straing to search for
# 
find_str = get_find_string()

# 
#  get restriction
# 
restrict_extent = get_use_ext()


# 
# set where output gets displayed
# 
output_target = output_target()
if (output_target == 'f'):
     output_file = set_output_filename()
     foutput = open(output_file, "w")

# 
# run the table
# 
full_path = Path(base_path)
for i in full_path.rglob('*'):
    if (i.is_file()):
        file_nbr += 1

        file_name = os.path.splitext(i) 
        file_ext = file_name[1] 

        if (restrict_extent == 'y' and file_ext not in use_ext):
           continue
        else:    
           check_file_for_match(i)

# 
#  print totals
# 
print_string = "\nFiles searched:{}\n".format(file_nbr)
display_line(print_string)
print_string = "Hits:{}\n".format(string_hits)
display_line(print_string)
print_string = "Search:{}\n".format(find_str)
display_line(print_string)
print_string = "Restrict ext:{}\n".format(restrict_extent)
display_line(print_string)

# 
# close file if required
# 
if (output_target == 'f'):     
    foutput.close()

    print("\nSearch file:{}".format(output_file))


print("\nRecursive Find string stopped!\n")


