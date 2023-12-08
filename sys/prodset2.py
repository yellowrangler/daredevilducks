#!/usr/bin/env python3

import sys
import datetime
import fileinput
import os
import shutil

from pathlib import Path
from datetime import date

#
# global variables
#
token_desktop = "DDV"
token_mobile = "DMV"
token = ""

#
# functions
#

#
# check valididty of file name
#
def check_filename(path_to_file):
    path = Path(path_to_file)

    if path.is_file():
        print(f'The file {path_to_file} exists')
        return 1
    else:
        print(f'The file {path_to_file} does not exist')
        return 0
 
#
# get old version id from bakup
#
def get_ver_id(source): 
    with open(source,'r') as file:
        fileStr = file.read()
        token_offset = fileStr.index(token)
        olddate = fileStr[token_offset+3:token_offset+11]
        # print(f'oldversion = {oldversion}')

    #return old version
    oldversion = token + olddate
    return oldversion 
 

#
# get the usernae from the os. we need it to build file name
#
username = os.getlogin()
filename_desktop = f'/home/{username}/Development/daredevilducks/index.html'
filename_mobile = f'/home/{username}/Development/daredevilducks/mobile/index.html'

#
# set the filename from product target
#
target = input("Enter target product (desktop or mobile: ")

if (len(target) == 0):
    print("Must pass in valid target product! desktop or mobile")
    quit()

if (target == 'desktop'):
    filename = filename_desktop 
    token = token_desktop
    # print("target product is desktop")
elif (target == 'mobile'):
    filename = filename_mobile 
    token = token_mobile
    # print("target product is mobile")
else:
    print("Must pass in valid target product! desktop or mobile")
    quit()

#
# check if filename exists
#
rc = check_filename(filename)
if (rc == 0):
    quit()

#
# get old version
#
oldver = get_ver_id(filename)

#
# set new version
#
newdate = date.today().strftime('%m%d%Y')
newver = token + newdate
# print(f'newver = {newver}')

# print('\n')
print(f'target = {target}')
print(f'filename = {filename}')
print(f'oldver = {oldver}')
print(f'newver = {newver}')

answer = input("Apply new version update: (y/n) ")
if (answer[0] == 'y' or answer[0] == 'Y'):
    print('Applying Update!')
else:
    quit()

#
# apply new version to file
#
with fileinput.FileInput(filename, inplace=True, backup='.bak') as file:
    for line in file:
        print(line.replace(oldver, newver), end='')

print(f'filename = {filename} updated')

quit()