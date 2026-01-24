#!/usr/bin/env python3

import mysql
import mysql.connector
from mysql.connector import errorcode
from datetime import datetime

import glob
import csv
import re
import os 
from simple_term_menu import TerminalMenu

answer = ''
  
##################################
# global variables
##################################

dbparms = {
    'user': 'tarryc', 
    'password': '',
    'host': 'localhost',
    'database': 'ddd'
}

stats = {
    "Input filename" : "",
    "input item errors" : "",
    "Run script errors" : 0,
    "Output filename" : "",
    "Items processed" : 0,
    }

sqlfile_template = 'sql/*.sql'

input_location = 'sql/'
output_location = 'results/'

# 
# get list of sql files to process
# 
file_list = glob.glob(sqlfile_template)
file_list.sort(key=os.path.getmtime,reverse=True)  


lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
selected_file_idx = 0
options = []

while (idx < lcount):
    options.append(file_list[idx])
    idx += 1

# options = ["Option 1: Apple", "Option 2: Banana", "Option 3: Cherry", "Option 4: Date", "Option 5: Elderberry", "Option 6: Fig"]
# options = ["Directory List", "Bark", "Meow", "Dial Home", "Pat Coco", "Drive to Florida"]

# Create the menu
terminal_menu = TerminalMenu(options, title="Select an Item:")

# Show the menu and get the selected index
menu_entry_index = terminal_menu.show()

print(f"menu_entry_index: {menu_entry_index}")
# check that index is valid for list 
if 0 <= menu_entry_index < len(options):
    print(f"You selected {options[menu_entry_index]}")
    answer = input(f"Do you want to continue Y/N ? ")  
    if answer.upper() == "N":
        print("Selection canceled by user")  
        quit()
else:
    print(f"Invalid file number {selected_file_number}!") 
    quit()
    
# if menu_entry_index is not None:
#     print(f"menu_entry_index {menu_entry_index}" )
#     print(f"You selected: {options[menu_entry_index]}")
# else:
#     print("No item selected.")
