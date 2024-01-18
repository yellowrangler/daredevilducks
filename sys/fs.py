#!/usr/bin/env python3

import sys
import subprocess
import datetime
import glob
import os

######################################################################################################
# Module: fs.py
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
find_str = ""
output_target = 'd'
output_file_template = "fs-resluts-"
output_file = ""

base_path = '/home/tarryc/Development/daredevilducks/'
# base_path = '../../python'
from datetime import date


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
# get file serach criteria
# 
def get_file_search_criteria():
  answer = ''

  # Ask the user for fi`le search criteria
  answer = input(f"search file: {base_path}file: ")
  
  return (answer)

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
# ask for key stroke - q = quit program, = next match nything else do nothing
# 
def get_keystroke():
	answer = ''

	# Ask the user for fi`le search criteria
	answer = input("Q to quit. S to skip pausing. Anything else for next match... ")

	return (answer)


##################################
# Main
################################## 

print("Find string started!\n")

# 
# ask for string to search for - eg going my way OR <<<<<<< no imbeded quotes
# 
find_str = get_find_string()

# 
# ask for file(s) to search - eg index.html or in*.html
# 
file_search = base_path + get_file_search_criteria()

# 
# set where output gets displayed
# 
output_target = output_target()
if (output_target == 'f'):
     output_file = set_output_filename()
     foutput = open(output_file, "w")


# 
#  loop through files based on search criteria
#  
file_list = glob.glob(file_search)
file_nbr = len(file_list)

idx = 0
while (idx < file_nbr):
	fname = file_list[idx]

	# 
	#  look for find string 
	# 
	line_nbr = 0
	match_found = 0
	show_match_per_line = 1
	with open(fname, 'r', errors='ignore') as fp:
		fbasename = os.path.basename(fname)
		for line in fp:
			line_nbr += 1
			if (line.find(find_str) != -1):
				match_found += 1
				if (show_match_per_line):
					print_string = "file:{} Line nbr:{} Line:{}\n".format(fbasename, line_nbr, line.strip())
					display_line(print_string)
		    		# answer = get_keystroke()
		    		# if (answer == 'q'):
		    		# 	quit()
		    		# elif (answer == 's'):
		    		# 	show_match_per_line = 0
		    		# else:
		    		# 	continue
		    		
	print_string = "\nSearch:{} file:{} count:{}\n\n".format(find_str, fname, match_found)
	display_line(print_string)
	match_found = 0
	
	idx += 1 

# 
# close file if required
# 
if (output_target == 'f'):     
    foutput.close()

print("\nFind string  Ended!\n")

