#!/usr/bin/env ruby
require "rubygems"
require "json"
require 'mysql'  
    
def is_int(str)
return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

hostname = "localhost"
username = "tarryc"
password = "tarryc"  
databasename = "ddd"

#
# open connection for mysql db to get team id's and tv ids
#
con = Mysql.new(hostname, username, password, databasename)  

#
# get file to parse season data from 
#
filename = ARGV[0]
file = File.read(filename)
games = JSON.parse(file) 

#
# build string for mysql insert vi phpmyadmin
#
sqlStr = "INSERT INTO `gamestbl` VALUES \n"
count = 1

#
# iterate through game data
#
games.each do |game|
	id = count
	season = "2014"
	week = game["WEEK"]
	gamenbr = count
	gamedateday = game["DATE"].split(', ', 2)
	gameday = gamedateday[0]
	gamedate = gamedateday[1]

	#
	# get tv id from tv name
	#
	rs = con.query('select * from gametvtbl where tv like "'+game["TV"]+'%"') 
	if rs.num_rows == 1
		record = rs.fetch_hash  
		tvid = record["id"]
	else
		tvid = 0
	end

	gametime = game["TIME"]

	#
	# get home and visiting team id from team name
	#
	rs = con.query('select * from teamstbl where name like "'+game["VISITING"]+'%"') 
	if rs.num_rows == 1
		record = rs.fetch_hash  
		awayteamid = record["id"]
	else
		awayteamid = 0
	end

	rs = con.query('select * from teamstbl where name like "'+game["HOME"]+'%"') 
	if rs.num_rows == 1
		record = rs.fetch_hash  
		hometeamid = record["id"]
	else
		hometeamid = 0
	end

	hometeamscore = nil
	awayteamscore = nil
	winningteamid = nil

	gametypeid = 1

	# 
	# Now bring all items into insert statement
	# 

	if count > 1
		sqlStr = sqlStr + ",\n"
	end
	sqlStr = sqlStr + "("+id.to_s+","+season.to_s+","+week.to_s+","+gamenbr.to_s+",'"+gamedate+"','"+gameday+"',"+tvid.to_s+",'"+gametime+"',"+hometeamid.to_s+","+awayteamid.to_s+","+hometeamscore.to_s+","+winningteamid.to_s+","+gametypeid.to_s+")"

	count = count + 1
end

sqlStr = sqlStr + ";"

con.close

# p sqlStr

# 
# write string to file
# 
File.delete('nfl2014-insert.sql')
File.write('nfl2014-insert.sql', sqlStr)