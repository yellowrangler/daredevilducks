#!/usr/bin/env python
#!/usr/bin/env python3

import sys
import subprocess
import datetime

# global variables
mysqlstr1 = "mysql -u tarryc -p  ddd <"
mysqlstr2 = " | sed 's/\t/,/g'>"
sqlfile = ""
csvfile = ""
csvfilesuffix = ".csv"

cmd = ""

if (len(sys.argv) == 2):
	sqlfile = sys.argv[1]
	csvfile =  sqlfile.split(".",1)
	cmd = mysqlstr1 + sqlfile + mysqlstr2 + csvfile[0] + csvfilesuffix
else:
	print ("Must pass in sql file")
	quit()

print ("The following command will now be run, ok? (yes/no)")
print (cmd)

answer = input("The following command will now be run, ok? (yes/no)") 
Fl = answer[0].lower() 
if Fl == 'y':  
	returned_value = subprocess.call(cmd, shell=True)  # returns the exit code in unix
	print('returned value:', returned_value)

quit()