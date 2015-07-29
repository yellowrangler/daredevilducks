select t.name as teamname, t.location as teamlocation, t.league as teamleague, t.conference as teamconference,
t.division as teamdivision, teamorder

from teamstbl t

select hometeamscore, awayteamscore, 
th.location as hometeamlocation, th.name as hometeamname, ta.location as awayteamlocation, ta.name as awayteamname
from gamestbl g
left join teamstbl th on g.hometeamid = th.id
left join teamstbl ta on g.awayteamid = ta.id

SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where (hometeamid = ".$row['id']." and hometeamscore = awayteamscore)
    OR 
    (awayteamid = ".$row['id']." and awayteamscore = hometeamscore)

    SELECT tt.id as teamid, 
location as teamlocation, 
name as teamname, 
league, 
conference, 
division,
teamiconname,
teamorder,
teamurl,
wins as teamwins,
losses as teamlosses,
ties as teamties,
totalgames as teamtotalgames,
percent as teampercent
FROM teamstbl tt
LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
WHERE ts.seasonyear = '$seasonyear'
ORDER BY conference ASC, division ASC, teamorder ASC