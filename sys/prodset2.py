#!/usr/bin/env python3

import sys
import datetime
import fileinput
import os
import shutil

from pathlib import Path
from datetime import date

######################################################################################################
# Author: Tarrant Cutler Jr
# Date: 11/04/2023
# Description: Read in bank or creditcard csv information
######################################################################################################

##################################
# global variables
##################################

tokens = {
    'desktop': 'DDV',
    'mobile': 'DMV'
}

filename_paths = dict();
targets = dict();

versions = {
  'oldver': '',
  'newver': ''
}

##################################
# functions
##################################

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
# get old version id 
#
def get_ver_id(source, tid): 
  current_token = token[tid]
  with open(source,'r') as file:
      fileStr = file.read()
      token_offset = fileStr.index(current_token)
      olddate = fileStr[token_offset+3:token_offset+11]
      # print(f'oldversion = {oldversion}')

  #return old version
  oldversion = current_token + olddate
  return oldversion 

#
# set global file paths
#
def set_file_paths(): 
    username = os.getlogin()

    d = dict();
    d['desktop'] = f'/home/{username}/Development/daredevilducks/index.html'
    d['mobile'] = f'/home/{username}/Development/daredevilducks/mobile/index.html'
    
    return d  

#
# get old and new version id
#
def get_old_new_version(fp):
  # get old version
  oldver = get_ver_id(fp)

  # set new version
  newdate = date.today().strftime('%m%d%Y')
  newver = token + newdate   

  versions['oldver'] = oldver
  versions['newver'] = newvar      
 
# 
#  get target input parm
#  
def get_target_input():
  target = input("Enter target product (desktop or mobile: ")

  if (len(target) == 0):
      target = 'both'
  elif (target != 'desktop' and target != 'mobile' and target != 'both'):
    print("Must pass in valid target product! desktop, mobile or both")
    quit()

  return target;

#
# process request
#
process_target(t, fp):
  filename = fp  

  rc = check_filename(filename)
  if (rc == 0):
    quit()  

  answer = input("Apply new version update for desktop: (y/n) ")
  if (answer[0] == 'y' or answer[0] == 'Y'):
    print('Applying Deaskto Update!')
  else:
    quit()

  #
  # apply new version to file
  #
  with fileinput.FileInput(filename, inplace=True, backup='.bak') as file:
      for line in file:
          print(line.replace(oldver, newver), end='')  

#
# process request
#
process_request(target, fp):

  if target == 'desktop':
    current_token = token['desktop']
    current_filepath = fp['desktop']
    
    get_old_new_version(current_token, versions, current_filepath)

    process_desktop(v, fp['desktop'])
  elif target == 'mobile':
    process_mobile(v, fp['mobile'])
  else:
    process_desktop(v, fp['desktop'])
    process_mobile(v, fp['mobile'])  












  filename = filename_desktop 
  token = token_desktop  

  rc = check_filename(filename)
  if (rc == 0):
    quit()



##################################
# Main
##################################  

#
# get the username from the os. And set the file path to target index files
#
filename_paths = set_file_paths()
print(filename_paths)

#
# set the filename target
#
target = get_target_input()

#
# process based on target
#
process_request(target, filename_paths)













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


