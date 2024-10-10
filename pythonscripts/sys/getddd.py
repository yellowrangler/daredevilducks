#!/usr/bin/env python
#!/usr/bin/env python3

import subprocess
import datetime

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 11/10/2023
# Description: Dump ddd db either short or long insert style
######################################################################################################

##################################
# global variables
##################################

# global variables
mysqlcommandshort = "mysqldump --skip-opt --add-drop-table --extended-insert --create-options -u root -p ddd >"
mysqlcommandlong = "mysqldump --skip-opt --add-drop-table  --create-options -u root -p ddd >"
mysqldbnameprefix = "ddd-"
mysqldbnamesuffix = "-python.sql"
mysqldbnamedate = ""
mysqloutput_file_qualifier = ""
mysqlinsertstyledump = ""
mysqloutputfilename = ""
cmd = ""

##################################
# functions
##################################

#
# pass back current date formatted no slashes
#
def get_currentdate_formated():
  current_day = datetime.date.today()
  formatted_date = datetime.date.strftime(current_day, "%m%d%Y")
	
  return (formatted_date)

#
# get mysql insert style input
#
def get_mysql_insert_style_input():
  answer = ''
  answer = input("Insert dump style defaults to short (long or short ?): ")
  if answer != "long" :  
    return(mysqlcommandshort)
  else:
    return(mysqlcommandlong)

#
# get output file qualifier input
#
def get_output_file_qual_input():
  answer = ''
  answer = input("Output file qualifier: ")
  if len(answer) != 0 :  
       return("-"+answer)
  else:
       return ("-default")

##################################
# Main
################################## 

print("DDD Update started!\n")

#
# get todays date with no slashes
#
mysqldbnamedate = get_currentdate_formated()

#
# get insert style dump parameter
#
mysqlinsertstyledump = get_mysql_insert_style_input()

#
# get output file qualifier parameter
#
mysqloutput_file_qualifier = get_output_file_qual_input()

#	
# assemble inputs
#
mysqloutputfilename = mysqldbnameprefix + mysqldbnamedate + mysqloutput_file_qualifier + mysqldbnamesuffix
cmd = mysqlinsertstyledump + mysqloutputfilename

#
# Check if ok
#
print ("The following command will now be run, ok? (yes/no)")
print (cmd)

answer = input('Do you want to use this file to download ddd database (yes/no) ?') 
Fl = answer[0].lower() 
if Fl == 'y':  
	returned_value = subprocess.call(cmd, shell=True)  # returns the exit code in unix
	print('returned value:', returned_value)

print("\nDDD Update Ended!")
print("DDD dump file: " + mysqloutputfilename + "\n")
quit()
