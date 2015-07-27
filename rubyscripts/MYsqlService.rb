require "rubygems"
require 'mysql'  

class MYsqlService

	def initialize()
		@hostname = "localhost"
		@username = "tarryc"
		@password = "tarryc"  
		@databasename = "ddd"
		@con = ""
		@results = ""
		@record = ""
		@rownbr = 0
	end # end of def

	def connect
		#
		# open connection for mysql db to get team id's and tv ids
		#
		@con = Mysql.new(@hostname, @username, @password, @databasename)  
	end	# end of def 

	def query(q)
		#
		# execute query and set instance variables
		#
		@results = @con.query(q) 
		@rownbr = @results.num_rows 
	end	# end of def 

	def getRowNbr
		#
		# get record from result set
		#
		@rownbr 
	end	# end of def 

	def getRecord
		#
		# get record from result set
		#
		@record = @results.fetch_hash 
	end	# end of def 

	def getNextRecord
		#
		# get next record from result set
		#
		getRecord
	end	# end of def

	def close
		#
		# get next record from result set
		#
		@con.close
	end	# end of def

end # end of class	