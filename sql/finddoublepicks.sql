SELECT  id as memberid, membername, screenname
FROM membertbl where 
screenname like "%hhhh%"
membername like "%donnelly%"

SELECT * FROM memberpickstbl WHERE season = 2021 and week = 3 and memberid = 93

DELETE FROM memberpickstbl WHERE season = 2021 and week = 3 and memberid = 93


Select memberid, membername, screenname, teamid
from memberpickstbl MP 
left join membertbl M on M.id = MP.memberid
where season = 2021 and week = 3 
order by screenname, teamid

Select memberid, membername, screenname, teamid, gamenbr, CONCAT(T.name, ' ', T.location) as teamname
from memberpickstbl MP 
left join membertbl M on M.id = MP.memberid
left join teamstbl T on T.id = MP.teamid
where season = 2021 and week = 3 
order by screenname, gamenbr

http://yellowrangler/daredevilducks/app/ajax/getbadpicks.php?week=3

Select  count(gamenbr), memberid, membername, screenname, teamid,CONCAT(T.name, ' ', T.location) as teamname
from memberpickstbl MP 
left join membertbl M on M.id = MP.memberid
left join teamstbl T on T.id = MP.teamid
where season = 2021 and week = 3 
group by MP.memberid
order by screenname
