#!/usr/bin/env ruby
require "rubygems"
require "json"

def is_int(str)
return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

filename = ARGV[0]
file = File.read(filename)
data_hash = JSON.parse(file) 

data_hash.each do |game|
  p game["VISITING"]
  p game["HOME"]
  p game["WEEK"]
  p game["TIME"]
  p game["TV"]
  p game["Bye"]
end