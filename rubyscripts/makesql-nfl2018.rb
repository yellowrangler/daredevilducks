#!/usr/bin/env ruby
require "rubygems"
require "json"
require './MYsqlService'  
    
def processPlay (gameSeason)
	#
	# open connection for mysql db to get team id's and tv ids
	#
	ms = MYsqlService.new
	ms.connect() 

	#
	# build string for mysql insert vi phpmyadmin
	#
	sqlStr = "INSERT INTO gamestbl \n"
	sqlStr = sqlStr + "(season, week, gamenbr, gamedate, gameday, networkid, gametime, hometeamid, awayteamid, hometeamscore, awayteamscore, gametypeid) \n VALUES \n"
	count = 1

	#
	# iterate through gameseason data
	#
	gameSeason.each do |game|

		if game['hometeam'] == "Bye"
			next
		end

		id = count
		gamenbr = count
		
		season = "2018"
		week = game["week"]		
		gameday = game["day"]
		gametime = game["time"]
		gamedate = game["date"]

		#
		# get tv id from tv name
		#
		# querystr = 'select * from gametvtbl where tv like "'+game["TV"]+'%"'
		# ms.query(querystr) 

		# if ms.getRowNbr == 1
		# 	tvid = ms.getRecord["id"]
		# else
		# 	tvid = 0
		# end

		tvid = 0


		#
		# get home and visiting team id from team name
		#
		querystr = 'select * from teamstbl where name = "'+game["visitors"]+'"'

		ms.query(querystr) 
		if ms.getRowNbr == 1 
			awayteamid = ms.getRecord["id"]
		else
			awayteamid = 0
		end

		querystr = 'select * from teamstbl where name = "'+game["hometeam"]+'"'	

		ms.query(querystr)
		if ms.getRowNbr == 1
			hometeamid = ms.getRecord["id"]
		else
			hometeamid = 0
		end

		awayteamscore = 0
		hometeamscore = 0

		gametypeid = 2

		# 
		# Now bring all items into insert statement
		# 

		if count > 1
			sqlStr = sqlStr + ",\n"
		end

		# add game date time and enterdate

		sqlStr = sqlStr + "("+season.to_s+","+week.to_s+","+gamenbr.to_s+",'"+gamedate+"','"+gameday+"',"+tvid.to_s+",'"+gametime+"',"+hometeamid.to_s+","+awayteamid.to_s+","+hometeamscore.to_s+","+awayteamscore.to_s+","+gametypeid.to_s+")"

		count = count + 1
	end

	sqlStr = sqlStr + ";"

	ms.close 

	# 
	# write string to file
	# 
	if File.exist?('nfl2018-insert-play.sql')
		File.delete('nfl2018-insert-play.sql')
	end

	File.write('nfl2018-insert-play.sql', sqlStr)
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
	sqlStr = "INSERT INTO gamebyetbl \n"
	sqlStr = sqlStr + "(season, week, teamid, gametypeid) \n VALUES \n"

	count = 1

	#
	# iterate through game data
	#
	gameSeason.each do |game|

		if game['hometeam'] != "Bye"
			next
		end

		season = "2018"
		week = game["week"]
		gametypeid = 2
		byeteams = game["time"].split(',')

		byeteamid = 0
		byeteams.each do |bye|
			#
			# get bye team id from bye team name
			#
			querystr = 'select * from teamstbl where name = "'+bye+'"'

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

			sqlStr = sqlStr + "("+season.to_s+","+week.to_s+","+byeteamid.to_s+","+gametypeid.to_s+")"

			count = count + 1
		end
	end

	sqlStr = sqlStr + ";"

	ms.close 

	# 
	# write string to file
	# 
	if File.exist?('nfl2018-insert-bye.sql')
		File.delete('nfl2018-insert-bye.sql')
	end

	File.write('nfl2018-insert-bye.sql', sqlStr)
end

begin
	#
	# main
	#

	if ARGV.length != 1
		puts "Invalid number of arguments:\n Need json file for season."
		exit
	end

	#
	# get file to parse season and score data
	#
	fnameSeason = ARGV[0]

	# puts "fnameSeason = #{fnameSeason}"

	# puts "b4 file read\n"
	file = File.read(fnameSeason)

	# puts "b4 file parse\n"
	gameSeason = JSON.parse(file) 

	# puts "b4 play\n"
	processPlay(gameSeason)

	# puts "b4 bye\n"
	processBye(gameSeason)

rescue => error
	puts "rescue #{error.backtrace}"

end