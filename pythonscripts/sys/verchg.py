# #!/usr/bin/env python3

# # version file = version.dat
# # newver=07022023
# # oldver=06292023
# #
# #
# #
# # copy ../index.html to index.chg
# # copy ../index.html to bkup-ver/index-ver.bkp
# #
# # copy file to .bkp
# # open file into memory
# # find '?dddver='
# #   
# #   changetxt = 
# This is old 
# import sys
# import datetime
# import fileinput
# import os
# import shutil

# from pathlib import Path
# from datetime import date

# #
# # global variables
# #
# filename_desktop = "/home/pi/Development/daredevilducks/index.html"
# filename_mobile = "/home/pi/Development/daredevilducks/mobile/index.html"
# token = "?dddver="


# #
# # functions
# #

# #
# # check valididty of file name
# #
# def check_filename(path_to_file):
#     path = Path(path_to_file)

#     if path.is_file():
#         print(f'The file {path_to_file} exists')
#         return 1
#     else:
#         print(f'The file {path_to_file} does not exist')
#         return 0
# #
# # backup file
# #
# def backup_file(source): 
#     # Source path
    
     
#     # Destination path
#     destination = source + '.bkp'
     
#     # Copy the content of
#     # source to destination
#     shutil.copyfile(source, destination)

#     #return bkupname
#     return destination
 
# #
# # get old version id from bakup
# #
# def get_ver_id(source): 
#     with open(source,'r') as file:
#         fileStr = file.read()
#         token_offset = fileStr.index(token)
#         oldversion = fileStr[token_offset+8:token_offset+16]
#         print(f'oldversion = {oldversion}')

#     #return old version
#     return oldversion
 

# #
# # set the filename from product target
# #
# target = input("Enter target product:")

# if (len(target) == 0):
#     print("Must pass in valid target product! desktop or mobile")
#     quit()

# if (target == 'desktop'):
#     filename = filename_desktop 
#     # print("target product is desktop")
# elif (target == 'mobile'):
#     filename = filename_mobile 
#     # print("target product is mobile")
# else:
#     print("Must pass in valid target product! desktop or mobile")
#     quit()

# #
# # check if filename exists
# #
# rc = check_filename(filename)
# if (rc == 0):
#     quit()

# #
# # get old version
# #
# oldver = get_ver_id(filename)

# #
# # set new version
# #
# newver = date.today().strftime('%m%d%Y')
# # print(f'newver = {newver}')

# print('/n/n')
# print(f'target = {target}')
# print(f'filename = {filename}')
# print(f'oldver = {oldver}')
# print(f'newver = {newver}')

# answer = input("Apply new version update: (y/n) ")
# if (answer[0] == 'y' or answer[0] == 'Y'):
#     print('Applying Update!')
# else:
#     quit()

# #
# # apply new version to file
# #
# with fileinput.FileInput(filename, inplace=True, backup='.bak') as file:
#     for line in file:
#         print(line.replace(oldver, newver), end='')

# print(f'filename = {filename} updated')

# quit()


