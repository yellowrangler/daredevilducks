#!/usr/bin/env python
#!/usr/bin/env python3

import sys
import subprocess

# global variables

mysqlcommand = "mysql -u tarryc -p ddd < "
mysqldbnameprefix = "ddd-"
mysqldbnamesuffix = "-small.sql"
mysqldbnamemiddle = ""
mysqlcommandfull = ""

if (len(sys.argv) != 2):
	quit()

mysqldbnamemiddle = sys.argv[1]
mysqlcommandfull = mysqlcommand + mysqldbnameprefix + mysqldbnamemiddle + mysqldbnamesuffix

print mysqlcommandfull
while True: 
	answer = raw_input('Do you want to run this command ?') 
	Fl = answer[0].lower() 
	if Fl not in ['y','n']: 
	   print('Please answer with yes or no!') 
	elif Fl == 'y':  
	    cmd = mysqlcommandfull
	    break;
	elif Fl == 'n': 
	    print "Command cancled! Fl = ", Fl
	    quit()
	    break;

returned_value = subprocess.call(cmd, shell=True)  # returns the exit code in unix
print'returned value:', returned_value

quit()