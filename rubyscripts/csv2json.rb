#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'csv'

def is_int(str)
return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

# lines = CSV.open(ARGV[0],{:col_sep => "\,"}).readlines
lines = CSV.open(ARGV[0],{:col_sep => ","}).readlines

# remove first entry of the lines array 
keys = lines.shift  

lines.each do |values|
     # convert the line into a hash and transform string into int
     hash=Hash[keys.zip(values.map{|val| is_int(val) ? val.to_i : val}) ]

     # Write a file with the hash results
     File.open("nfl2014.json", "a") do |f|
        f.write JSON.pretty_generate [hash]
     end
end
