#!/usr/bin/env python
import glob
import csv
import re
import os 

###################################################################################################### 
# Prompts the user for input until a valid number (integer or float) is entered.
# 
# Args:
#     prompt_message: The message to display to the user.
# 
# Returns:
#     The user's input as a number (int).
######################################################################################################
def get_number_input(prompt_message):

  while True:
    user_input = input(prompt_message)
    try:
      # Try converting to an integer
      return int(user_input)
    except ValueError:
      # If both fail, print an error and continue the loop
      print(f"'{user_input}' is not a number. Please enter a valid number.")

# 
# get list of files to process
# 
file_template = "sql/*.sql"

file_list = glob.glob(file_template)
file_list.sort(key=os.path.getmtime,reverse=True)  

lcount = len(file_list)
print ("The file count is:", lcount)

idx = 0
selected_file_idx = 0

while (idx < lcount):
  selected_file_number = idx + 1
  print (f"File: {file_list[idx]} File Nbr: { selected_file_number }")
  idx += 1

# 
# prompt for file number from list
# 
selected_file_number = get_number_input("Chose the file number to proces: ") 

# adjust number to idx
selected_file_idx = selected_file_number - 1

# check that index is valid for list 
if 0 <= selected_file_idx < len(file_list):
  print(f"You selected {file_list[selected_file_idx]}")
  answer = input(f"Do you want to continue Y/N ? ")  
  if answer.upper() == "N":
    print("Selection canceled by user")  
    quit()
else:
  print(f"Invalid file number {selected_file_number}!") 
  quit()

print(f"Sucessful pick for {file_list[selected_file_idx]}")
