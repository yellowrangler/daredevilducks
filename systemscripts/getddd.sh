#!/bin/bash

mysqlcommand="mysqldump --skip-opt --add-drop-table --extended-insert --create-options -u tarryc -p ddd >"
mysqldbnameprefix="ddd-"
mysqldbnamesuffix="-small.sql"
mysqldbnamemiddle=""
mysqlcommandfull=""

if [[ -n "$1" ]]
then 
	mysqldbnamemiddle=$1
else
	echo "You must pass in first parameter"
	exit 0
fi

mysqlcommandfull=$mysqlcommand$mysqldbnameprefix$mysqldbnamemiddle$mysqldbnamesuffix

while true; do
    read -p "Do you wish to run this code. $mysqlcommandfull ?" yn
    case $yn in
        [Yy]* ) $mysqlcommandfull; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# if [[ -n "$1" ]]
# then 
# 	echo "You must pass in first parameter"
# 	exit
# elif [[ -n "$2" ]]
# then 
# 	echo "You must pass in second parameter"
# 	exit
# else
# 	echo "You passed in all required parameters"
# fi

# $ ./getddd hello world
# First arg: hello
# Second arg: world