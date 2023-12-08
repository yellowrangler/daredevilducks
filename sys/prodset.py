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
# Date: 12/07/2023
# Description: Change ddd index file version numbers
######################################################################################################

##################################
# global variables
##################################

desktop_target = 'desktop'
mobile_target = 'mobile'

tokens = {
    'desktop': 'DDV',
    'mobile': 'DMV'
}

filename_paths = dict();

##################################
# functions
##################################

#
# check valididty of file name
#
def check_filename(path_to_file):
    path = Path(path_to_file)

    if path.is_file():
        # print(f'The file {path_to_file} exists')
        return 1
    else:
        print(f'The file {path_to_file} does not exist')
        return 0
 
#
# get old version id 
#
def get_ver_id(token, source): 
  with open(source,'r') as file:
      fileStr = file.read()
      token_offset = fileStr.index(token)
      olddate = fileStr[token_offset+3:token_offset+11]
      # print(f'oldversion = {oldversion}')

  oldversion = token + olddate
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
def get_old_new_version(token, fp):
  v = dict()

  # get old version
  oldver = get_ver_id(token, fp)

  # set new version
  newdate = date.today().strftime('%m%d%Y')
  newver = token + newdate   

  v['oldver'] = oldver
  v['newver'] = newver      

  return v
 
# 
#  get target input parm
#  
def get_target_input():
  target = input("Enter target product (desktop, mobile or both): ")

  if (len(target) == 0):
      target = 'both'
  elif (target != 'desktop' and target != 'mobile' and target != 'both'):
    print("Must pass in valid target product! desktop, mobile or both")
    quit()

  return target

#
# process request
#
def process_target(target, versions, current_filepath):
  rc = check_filename(current_filepath)
  if (rc == 0):
    quit()  

  answer = input(f"\nApply new version update for {target}: (y/n) ")
  if (answer[0] == 'y' or answer[0] == 'Y'):
    print(f'Applying {target} Update!')
  else:
    quit()

  # print out parms
  print(f'target = {target}')
  print(f'filename = {current_filepath}')
  print(f'oldver = {versions["oldver"]}')
  print(f'newver = {versions["newver"]}')  

  #
  # apply new version to file
  #
  with fileinput.FileInput(current_filepath, inplace=True, backup='.bak') as file:
      for line in file:
          print(line.replace(versions["oldver"], versions["newver"]), end='')  

  print(f'Target = {target} updated')

#
# process request
#
def process_request(target, fps):

  if target == desktop_target:
    #
    # desktop only
    #
    current_token = tokens[desktop_target]
    current_filepath = fps[desktop_target]

    versions = get_old_new_version(current_token, current_filepath)

    process_target(target, versions, current_filepath)
  elif target == mobile_target:
    #
    # mobile only
    #
    current_token = tokens[mobile_target]
    current_filepath = fps[mobile_target]

    versions = get_old_new_version(current_token, current_filepath)

    process_target(target, versions, current_filepath)
  elif target == 'both':
    #
    # desktop first
    #
    current_token = tokens[desktop_target]
    current_filepath = fps[desktop_target]

    versions = get_old_new_version(current_token, current_filepath)

    process_target(desktop_target, versions, current_filepath)

    #
    # mobile second
    #
    current_token = tokens[mobile_target]
    current_filepath = fps[mobile_target]

    versions = get_old_new_version(current_token, current_filepath)

    process_target(mobile_target, versions, current_filepath)
  else:
    print(f'Invalid target {target}')
    quit()


##################################
# Main
##################################  

print(f'Version update started!\n')

#
# get the username from the os. And set the file path to target index files
#
filename_paths = set_file_paths()

#
# set the gloal target choice
#
target = get_target_input()

#
# process based on target
#
process_request(target, filename_paths)

print(f'\nVersion update finished!')

quit()