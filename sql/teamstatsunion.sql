	$sql = "SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	(
		(hometeamid = ".$row['id']." and hometeamscore > awayteamscore)
    	OR 
		(awayteamid = ".$row['id']." and awayteamscore > hometeamscore)
	)
    
    UNION ALL
    
    SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = ".$row['id']." and hometeamscore > awayteamscore )

	UNION ALL
    
    SELECT count(*) as wins
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = ".$row['id']." and awayteamscore > hometeamscore )

	UNION ALL

	SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = ".$row['id']." and hometeamscore > awayteamscore)  
		OR 
		(awayteamid = ".$row['id']." and awayteamscore > hometeamscore)
	)
	AND
	(th.conference = ta.conference)";

