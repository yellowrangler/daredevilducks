#!/usr/bin/env ruby
require "rubygems"
require "json"
require './MYsqlService'  
    
def processPlay (games)
	#
	# open connection for mysql db to get team id's and tv ids
	#
	ms = MYsqlService.new
	ms.connect() 

	#
	# build string for mysql insert vi phpmyadmin
	#
	sqlStr = "INSERT INTO `gamestbl` VALUES \n"
	count = 1

	#
	# iterate through game data
	#
	games.each do |game|

		if game['HOME'] == "Bye"
			next
		end

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
		querystr = 'select * from gametvtbl where tv like "'+game["TV"]+'%"'
		ms.query(querystr) 

		if ms.getRowNbr == 1
			tvid = ms.getRecord["id"]
		else
			tvid = 0
		end

		gametime = game["TIME"]

		#
		# get home and visiting team id from team name
		#
		querystr = 'select * from teamstbl where name like "'+game["VISITING"]+'%"'
		ms.query(querystr) 

		if ms.getRowNbr == 1 
			awayteamid = ms.getRecord["id"]
		else
			awayteamid = 0
		end

		querystr = 'select * from teamstbl where name like "'+game["HOME"]+'%"'
		ms.query(querystr)
		if ms.getRowNbr == 1
			hometeamid = ms.getRecord["id"]
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

	ms.close 

	# 
	# write string to file
	# 
	if File.exist?('nfl2014-insert-play.sql')
		File.delete('nfl2014-insert-play.sql')
	end

	File.write('nfl2014-insert-play.sql', sqlStr)
end

def processBye(games)
	#
	# open connection for mysql db to get team id's and tv ids
	#
	ms = MYsqlService.new
	ms.connect() 

	#
	# build string for mysql insert vi phpmyadmin
	#
	sqlStr = "INSERT INTO `gamebyetbl` VALUES \n"
	count = 1

	#
	# iterate through game data
	#
	games.each do |game|

		if game['HOME'] != "Bye"
			next
		end

		season = "2014"
		week = game["WEEK"]
		gametypeid = 1
		byeteams = game["Bye"].split(', ')

		byeteams.each do |bye|
			#
			# get bye team id from bye team name
			#
			querystr = 'select * from teamstbl where name like "'+bye+'%"'
			ms.query(querystr) 
			if ms.getRowNbr == 1 
				id = count
				byeteamid = ms.getRecord["id"]
			else
				byeteamid = 0
			end

			# 
			# Now bring all items into insert statement
			# 

			if count > 1
				sqlStr = sqlStr + ",\n"
			end

			sqlStr = sqlStr + "("+id.to_s+","+season.to_s+","+week.to_s+","+byeteamid.to_s+","+gametypeid.to_s+")"

			count = count + 1
		end
	end

	sqlStr = sqlStr + ";"

	ms.close 

	# 
	# write string to file
	# 
	if File.exist?('nfl2014-insert-bye.sql')
		File.delete('nfl2014-insert-bye.sql')
	end

	File.write('nfl2014-insert-bye.sql', sqlStr)
end

begin
	#
	# main
	#

	#
	# get file to parse season data from 
	#
	filename = ARGV[0]
	file = File.read(filename)
	games = JSON.parse(file) 

	processPlay(games)
	processBye(games)

end