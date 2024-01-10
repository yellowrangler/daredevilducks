#!/usr/bin/env python3

import sys
import subprocess
import datetime
import glob

######################################################################################################
# Module: fs.y
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
  answer = input(f"Enter file serach criteria: ")
  
  return (answer)

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
file_search = get_file_search_criteria()



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
	with open(fname) as fp:
	    for line in fp:
	    	line_nbr += 1
	    	if (line.find(find_str) != -1):
	    		match_found += 1
	    		if (show_match_per_line):
		    		print(f"Search:{find_str} file:{fname} Line nbr:{line_nbr} Line:{line}")
		    		answer = get_keystroke()
		    		if (answer == 'q'):
		    			quit()
		    		elif (answer == 's'):
		    			show_match_per_line = 0
		    		else:
		    			continue

	print(f"Search:{find_str} file:{fname} count:{match_found}")	
	match_found = 0
	
	idx += 1 


print("\nFind string  Ended!\n")