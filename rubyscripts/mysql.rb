#!/usr/bin/env ruby

require "rubygems"
require 'mysql'  
  
hostname = "localhost"
username = "tarryc"
password = "tarryc"  
databasename = "ddd"

con = Mysql.new(hostname, username, password, databasename)  

# rs = con.query('select * from teamstbl')  
game = "New York"
rs = con.query('select * from teamstbl where name like "'+game+'%"')  

rs.each_hash { |h| puts h['name']}  
con.close  