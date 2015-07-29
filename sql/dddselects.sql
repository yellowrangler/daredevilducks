select t.name as teamname, t.location as teamlocation, t.league as teamleague, t.conference as teamconference,
t.division as teamdivision, teamorder

from teamstbl t

select hometeamscore, awayteamscore, 
th.location as hometeamlocation, th.name as hometeamname, ta.location as awayteamlocation, ta.name as awayteamname
from gamestbl g
left join teamstbl th on g.hometeamid = th.id
left join teamstbl ta on g.awayteamid = ta.id

select count(*) as games
from gamestbl g
left join teamstbl th on g.hometeamid = th.id
left join teamstbl ta on g.awayteamid = ta.id
where hometeamid = 1 OR awayteamid = 1

select count(*) as wins
from gamestbl g
left join teamstbl th on g.hometeamid = th.id and hometeamscore > awayteamscore
left join teamstbl ta on g.awayteamid = ta.id and awayteamscore > hometeamscore
where th.id = 1 OR ta.id = 1

select count(*) as losses
from gamestbl g
left join teamstbl th on g.hometeamid = th.id and hometeamscore < awayteamscore
left join teamstbl ta on g.awayteamid = ta.id and awayteamscore < hometeamscore
where th.id = 1 OR ta.id = 1

select count(*) as ties
from gamestbl g
left join teamstbl th on g.hometeamid = th.id and hometeamscore = awayteamscore
left join teamstbl ta on g.awayteamid = ta.id and awayteamscore = hometeamscore
where th.id = 1 OR ta.id = 1

