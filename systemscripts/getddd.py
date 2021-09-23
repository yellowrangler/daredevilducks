#!/usr/bin/env python
#!/usr/bin/env python3

import sys
import subprocess
import datetime

# global variables
mysqlcommand = "mysqldump --skip-opt --add-drop-table --extended-insert --create-options -u tarryc -p ddd >"
mysqldbnameprefix = "ddd-"
mysqldbnamesuffix = "-python.sql"
mysqldbnamedate = ""
mysqldbnameuserpass = ""
cmd = ""

# get todays date with no slashes
current_day = datetime.date.today()
formatted_date = datetime.date.strftime(current_day, "%m%d%Y")
mysqldbnamedate = formatted_date

if (len(sys.argv) == 2):
	mysqldbnameuserpass = sys.argv[1]
	cmd = mysqlcommand + mysqldbnameprefix + mysqldbnamedate + "-" + mysqldbnameuserpass + mysqldbnamesuffix
else:
	cmd = mysqlcommand + mysqldbnameprefix + mysqldbnamedate + mysqldbnamesuffix

print "The following command will now be run, ok? (yes/no)"
print cmd

answer = raw_input('Do you want to use this file to download ddd database (yes/no) ?') 
Fl = answer[0].lower() 
if Fl == 'y':  
	returned_value = subprocess.call(cmd, shell=True)  # returns the exit code in unix
	print'returned value:', returned_value

quit()