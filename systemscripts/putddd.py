#!/usr/bin/env python
#!/usr/bin/env python3

import sys
import subprocess
import glob

# global variables

mysqlcommand = "mysql -u tarryc -p ddd < "

file_list = []
cmd = "no file selected"

file_list = glob.glob('ddd-*python.sql')
lcount = len(file_list)
idx = 0
while (idx < lcount):
  print ('The count is:', lcount)
  fname = file_list[idx]
  print (fname)
  answer = input('Do you want to use this file to update ddd database (yes/no) ?') 
  Fl = answer.lower() 
  if Fl == 'yes':  
    cmd = mysqlcommand + fname
    break;  
  
  idx += 1

print ("The following command will now be run, ok? (yes/no)")
print (cmd)

answer = input('Do you want to use this file to update ddd database (yes/no) ?') 
Fl = answer[0].lower() 
if Fl == 'y':  
	returned_value = subprocess.call(cmd, shell=True)  # returns the exit code in unix
	print('returned value:', returned_value)

quit()