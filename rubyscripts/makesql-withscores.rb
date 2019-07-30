#!/usr/bin/env ruby
require "rubygems"
require "json"
require './MYsqlService'  
    
def processPlay (gameSeason, gameScores)
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
	# iterate through gameseason data
	#
	gameSeason.each do |game|

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
		# get home and visiting team id from team location
		# This particular feed uses teams location vs name. However 
		# we must first check for New York as that location has two teams 
		# and the season list has full name and not locations
		#
		if game["VISITING"].include? "New York"
			teamname = game["VISITING"].split(' ')
			querystr = 'select * from teamstbl where location = "New York" and name="'+teamname[2]+'"'
		else
			querystr = 'select * from teamstbl where location = "'+game["VISITING"]+'"'
		end

		ms.query(querystr) 
		if ms.getRowNbr == 1 
			awayteamid = ms.getRecord["id"]
			# 
			# need team name for getting scores - dont ask
			# 
			awayteamname = ms.getRecord["name"]
		else
			awayteamid = 0
			awayteamname = ""
		end

		if game["HOME"].include? "New York"
			teamname = game["HOME"].split(' ')
			querystr = 'select * from teamstbl where location = "New York" and name="'+teamname[2]+'"'
		else
			querystr = 'select * from teamstbl where location = "'+game["HOME"]+'"'
		end		

		ms.query(querystr)
		if ms.getRowNbr == 1
			hometeamid = ms.getRecord["id"]
			# 
			# need team name for getting scores - dont ask
			# 
			hometeamname = ms.getRecord["name"]
		else
			hometeamid = 0
			hometeamname = ""
		end

		# 
		# set scores and winners to nil then look for data
		# 
		hometeamscore = nil
		awayteamscore = nil
		# winningteamid = nil
		gameScores.each do |gamescore|	
			if hometeamname == gamescore ["home_team"] && week == gamescore ["week"] 
				hometeamscore = gamescore ["home_score"]
			end

			if awayteamname == gamescore ["visiting_team"] && week == gamescore ["week"] 
				awayteamscore = gamescore ["visitors_score"]
			end
		end

		# if hometeamscore.to_i > awayteamscore.to_i
		# 	winningteamid = hometeamid
		# elsif hometeamscore.to_i < awayteamscore.to_i
		# 	winningteamid = awayteamid
		# else
		# 	winningteamid = 0
		# end

		gametypeid = 1

		# 
		# Now bring all items into insert statement
		# 

		if count > 1
			sqlStr = sqlStr + ",\n"
		end

		sqlStr = sqlStr + "("+id.to_s+","+season.to_s+","+week.to_s+","+gamenbr.to_s+",'"+gamedate+"','"+gameday+"',"+tvid.to_s+",'"+gametime+"',"+hometeamid.to_s+","+awayteamid.to_s+","+hometeamscore.to_s+","+awayteamscore.to_s+","+gametypeid.to_s+")"

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

def processBye(gameSeason)
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
	gameSeason.each do |game|

		if game['HOME'] != "Bye"
			next
		end

		season = "2014"
		week = game["WEEK"]
		gametypeid = 1
		byeteams = game["Bye"].split(', ')

		byeteamid = 0
		byeteams.each do |bye|
			#
			# get bye team id from bye team name
			#
			if bye.include? "New York"
				teamname = bye.split(' ')
				querystr = 'select * from teamstbl where location = "New York" and name="'+teamname[2]+'"'
			else
				querystr = 'select * from teamstbl where location = "'+bye+'"'
			end	

			ms.query(querystr) 
			if ms.getRowNbr == 1 
				id = count
				byeteamid = ms.getRecord["id"]
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

	if ARGV.length != 2
		puts "Invalid number of arguments:\n Need json file for season. And JSON file for scores"
		exit
	end

	#
	# get file to parse season and score data
	#
	fnameSeason = ARGV[0]
	fnameScore = ARGV[1]

	file = File.read(fnameSeason)
	gameSeason = JSON.parse(file) 

	file = File.read(fnameScore)
	gameScores = JSON.parse(file) 

	processPlay(gameSeason, gameScores)
	processBye(gameSeason)

end