#!/usr/bin/env python

import sys
import glob, os
import subprocess

# 
#  Clear screen
# 
def clear_screen():
    # 'nt' means Windows, 'posix' covers Linux and macOS
    os.system('cls' if os.name == 'nt' else 'clear')


# 
# Main
# 

# clear screen
clear_screen()

answer = ''
answer = input(f"Are copying file from local to remote (1) or remote to local (2)? :")  
if answer == "1":
	subprocess.run(["python", "l2rscprun.py"])
elif answer == "2":	
	subprocess.run(["python", "r2lscprun.py"])
else:
	print("Invalid selection")	 

quit()
