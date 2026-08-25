#!/usr/bin/env python

import sys
import glob, os

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 08/24/2026
# Description: Copy file from external to local
######################################################################################################

##################################
# global variables
##################################

# global variables
local_file = ""
remote_user = ""
remote_host = ""
remote_path = ""

cmd = ""


# 
# get local_file to process
# 
def get_local_file():
	selected_local_file = ''
	
	selected_local_file = input(f"What is the local file: ")  
	if selected_local_file == "":
		print("No local file picked!")
		quit() 
	
	return selected_local_file  

# 
# get remote_file to process
# 
def get_remote_file():
	selected_remote_file = ''
	
	selected_remote_file = input(f"What is the remote file: ")  
	if selected_remote_file == "":
		print("No remote file picked!")
		quit() 
	
	return selected_remote_file  

# 
# get remote_user to process
# 
def get_remote_user():
	selected_user_name = ''
	
	selected_user_name = input(f"What is the remote user name: ")  
	if selected_user_name == "":
		print("No remote user name picked!")
		quit() 
	
	return selected_user_name  

# 
# get remote_host to process
# 
def get_remote_host():
	selected_remote_host = ''
	
	selected_remote_host = input(f"What is the remote host IP: ")  
	if selected_remote_host == "":
		print("No remote host id picked!")
		quit()
	
	return selected_remote_host  

# 
# get remote_path to process
# 
def get_remote_path():
	selected_remote_path = ''
	
	selected_remote_path = input(f"What is the remote path: ")  
	if selected_remote_path == "":
		print("No remote path picked!")
		quit()
	
	return selected_remote_path  

# 
# get answer to question
# 
def get_answer(q):
	answer = ''
	
	answer = input(f"Run : {q} (Y)? ")  
	if answer.upper() != "Y":
		print("No answer - Quit!")
		quit()

	return True  

# 
#  run the OS command
# 
def run_command(cmd):
	# Execute the command in the shell
	exit_code = os.system(cmd)

	# Check if the command succeeded (0 means success)
	if exit_code == 0:
		print("Command successful!")
	else:
		print(f"Command failed with exit code: {exit_code}")


# 
# Main
# 

# get remote file
remote_file = get_remote_file()

# get remote user
remote_user = get_remote_user()

# get remote host
remote_host = get_remote_host()

# get remote path
remote_path = get_remote_path()

# get local file
local_file = get_local_file()

# build command line
cmd = f"scp {remote_user}@{remote_host}:~/{remote_path}/{remote_file} {local_file}"   

# run command
if get_answer(cmd):
	run_command(cmd)

quit()

# scp ddd-08242026-test-python.sql  pi@10.0.0.71:~/Development/daredevilducks/pythonscripts/