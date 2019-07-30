#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'csv'

def is_int(str)
	return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

if ARGV.length == 2
	outputfilename = ARGV[1]	
else
	outputfilename = "csv2json"
end

if File.exist?(outputfilename+'.json')
	File.delete(outputfilename+'.json')
end

# 
# read in file 
# 
lines = CSV.open(ARGV[0]).readlines

# 
# remove first entry (header) 
# 
keys = lines.delete lines.first  

# 
# loop through csv lines and create JSON
# 
File.open(outputfilename+'.json', "w") do |f|
    data = lines.map do |values|
      is_int(values) ? values.to_i : values.to_s
      Hash[keys.zip(values)]
    end

    tempData = JSON.pretty_generate(data)
    jsonData = tempData.gsub('/\]\[/',",")

    f.puts jsonData
end