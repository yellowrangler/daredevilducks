#!/usr/bin/env python

import sys
import glob, os
import subprocess

# 
# Main
# 

answer = ''
answer = input(f"Are copying file from local to remote (1) or remote to local (2)? :")  
if answer == "1":
	subprocess.run(["python", "l2rscprun.py"])
elif answer == "2":	
	subprocess.run(["python", "r2lscprun.py"])
else:
	print("Invalid selection")	 

quit()
