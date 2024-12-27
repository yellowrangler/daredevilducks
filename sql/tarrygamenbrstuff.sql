
SELECT count(*) FROM `gamestbl` WHERE season = 2024 and week < 17;

SELECT * FROM `memberpickstbl` where season = 2024 and week = 17 and gamenbr > 256;



UPDATE `gametbl` SET `gamenbr`= 241'
where season = 2024 and week = 17 and gamenbr = 257;

UPDATE `gametbl` SET `gamenbr`= 242'
where season = 2024 and week = 17 and gamenbr = 258;


UPDATE `memberpickstbl` SET `gamenbr`= 241'
where season = 2024 and week = 17 and gamenbr = 257;

UPDATE `memberpickstbl` SET `gamenbr`= 242'
where season = 2024 and week = 17 and gamenbr = 258;

INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES ('11', 'Netflix', 'netflix.png');


SELECT gamenbr,
       count(*) AS c
FROM gamestbl where season = 2024
GROUP BY gamenbr
HAVING c > 1
ORDER BY c DESC;

SELECT networkid,
       count(*) AS c
FROM gamestbl where season = 2024
GROUP BY networkid
HAVING c > 1
ORDER BY c DESC;


select * 
from gamestbl 
where season = 2024 and week > 16
order by gamedate

SELECT count(*) FROM `memberpickstbl`
where season = 2024 and memberid = 1

SELECT * FROM `memberpickstbl` where season = 2024 and memberid = 1

SELECT * FROM `memberstatstbl` where season = 2024 and memberid = 1

SELECT * FROM `gamestbl` WHERE season = 2024 and (hometeamscore = 0) and (awayteamscore = 0)

Cowboys 19
Giants 20
Texans 10

SELECT 
COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasontotalgames,
COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasontotalgames,
COALESCE(COUNT(gamenbr),0) as totalgames
FROM gamestbl 
WHERE season = 2024 and gamedatetime < NOW()

SELECT
G.season as season,
G.week as week,
G.id as gameid,
G.gamenbr as gamenbr,
G.gamedate as gamedate,
G.gametime as gametime,
G.gameday as gameday,
G.gametypeid as gametypeid,
G.hometeamid as hometeamid,
G.hometeamscore as hometeamscore,
G.awayteamid as awayteamid,
G.awayteamscore as awayteamscore,
GT.gametype as gametype,
TH.name as hometeamname,
TA.name as awayteamname,	  
MP.teamid as teamselected
FROM gamestbl G 
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) 
AND MP.week = G.week 
AND MP.season = G.season 
AND MP.memberid ='1'
WHERE G.season = '2024'
AND MP.memberid = 1 
AND NOT (G.hometeamscore = G.awayteamscore AND G.hometeamscore = 0 AND G.awayteamscore = 0)
ORDER BY G.gamedatetime

SELECT
G.season as season,
G.week as week,
G.id as gameid,
G.gamenbr as gamenbr,
G.gamedate as gamedate,
G.gametime as gametime,
G.gameday as gameday,
G.gametypeid as gametypeid,
G.hometeamid as hometeamid,
G.hometeamscore as hometeamscore,
G.awayteamid as awayteamid,
G.awayteamscore as awayteamscore,
-- GT.gametype as gametype,
-- TH.name as hometeamname,
-- TA.name as awayteamname,	  
MP.teamid as teamselected
FROM gamestbl G 
-- LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
-- LEFT JOIN teamstbl TA ON G.awayteamid = TA.id
-- LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
-- LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid)
-- AND MP.week = G.week
-- AND MP.season = G.season
-- AND MP.memberid ='1'
WHERE G.season = '2024'
AND MP.memberid = 1 
AND NOT (G.hometeamscore = G.awayteamscore AND G.hometeamscore = 0 AND G.awayteamscore = 0)
ORDER BY G.gamedatetime






