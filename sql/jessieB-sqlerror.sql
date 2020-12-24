SELECT
  G.season as season,
  G.week as week,
  G.id as gameid,
  G.gamenbr as gamenbr,
  G.gamedate as gamedate,
  G.gametime as gametime,
  G.gameday as gameday,
  G.gamedatetime as gamedatetime,
  G.networkid as networkid,
  GN.network as network,
  GN.networkiconname as networkiconname,
  G.gametypeid as gametypeid,
  G.hometeamid as hometeamid,
  TH.name as hometeamname,
  TH.location as hometeamlocation,
  TH.conference as homeconference,
  TH.division as homedivision,
  TH.teamiconname as hometeamiconname,
  TH.teamurl as hometeamurl,
  G.hometeamscore as hometeamscore,
  G.awayteamid as awayteamid,
  TA.name as awayteamname,
  TA.location as awayteamlocation,
  TA.conference as awayconference,
  TA.division as awaydivision,
  TA.teamiconname as awayteamiconname,
  TA.teamurl as awayteamurl,
  G.awayteamscore as awayteamscore,
  TSH.wins as homewins,
  TSH.losses as homelosses,
  TSH.ties as hometies,
  TSA.wins as awaywins,
  TSA.losses as awaylosses,
  TSA.ties as awayties,
  GT.gametype as gametype,
  MP.teamid as teamselected,
  GW.weekstart as weekstart,
  GW.weekend as weekend,
  CASE
  WHEN G.gamedatetime < NOW() THEN 'expired'
  ELSE 'ok'
  END AS gamestatus
FROM gamestbl G
LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
LEFT JOIN gameweekstbl GW ON GW.week = G.week AND GW.season = G.season
LEFT JOIN gamenetworktbl GN ON GN.id = G.networkid
LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) AND MP.week = G.week
AND MP.season = G.season
AND MP.gamenbr = G.gamenbr
AND MP.memberid ='16'
LEFT JOIN teamweekstatstbl TSH ON TSH.teamid = G.hometeamid AND TSH.week = G.week AND TSH.season = G.season
LEFT JOIN teamweekstatstbl TSA ON TSA.teamid = G.awayteamid AND TSA.week = G.week AND TSA.season = G.season
WHERE G.season = '2020'
AND G.week ='14'
ORDER BY G.gamedatetime, G.gamenbr






SELECT
  G.season as season,
  G.week as week,
  G.id as gameid,
  G.gamenbr as gamenbr,
  G.gamedate as gamedate,
  G.gametime as gametime,
  G.gameday as gameday,
  G.gamedatetime as gamedatetime,
  G.networkid as networkid,
  -- GN.network as network,
  -- GN.networkiconname as networkiconname,
  G.gametypeid as gametypeid,
  G.hometeamid as hometeamid,
  -- TH.name as hometeamname,
  -- TH.location as hometeamlocation,
  -- TH.conference as homeconference,
  -- TH.division as homedivision,
  -- TH.teamiconname as hometeamiconname,
  -- TH.teamurl as hometeamurl,
  G.hometeamscore as hometeamscore,
  G.awayteamid as awayteamid,
  -- TA.name as awayteamname,
  -- TA.location as awayteamlocation,
  -- TA.conference as awayconference,
  -- TA.division as awaydivision,
  -- TA.teamiconname as awayteamiconname,
  -- TA.teamurl as awayteamurl,
  G.awayteamscore as awayteamscore,
  -- TSH.wins as homewins,
  -- TSH.losses as homelosses,
  -- TSH.ties as hometies,
  -- TSA.wins as awaywins,
  -- TSA.losses as awaylosses,
  -- TSA.ties as awayties,
  -- GT.gametype as gametype,
  MP.teamid as teamselected,
  MP.memberid as memberid
  -- GW.weekstart as weekstart,
  -- GW.weekend as weekend,
  -- CASE
  -- WHEN G.gamedatetime < NOW() THEN 'expired'
  -- ELSE 'ok'
  -- END AS gamestatus
FROM gamestbl G
-- LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
-- LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
-- LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
-- LEFT JOIN gameweekstbl GW ON GW.week = G.week AND GW.season = G.season
-- LEFT JOIN gamenetworktbl GN ON GN.id = G.networkid
LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid)
AND MP.week = G.week
AND MP.season = G.season
AND MP.memberid ='16'
-- LEFT JOIN teamweekstatstbl TSH ON TSH.teamid = G.hometeamid AND TSH.week = G.week AND TSH.season = G.season
-- LEFT JOIN teamweekstatstbl TSA ON TSA.teamid = G.awayteamid AND TSA.week = G.week AND TSA.season = G.season
WHERE G.season = '2020'
AND G.week ='14'
ORDER BY G.gamedatetime, G.gamenbr

select * from gametbl where hometeamid = 23 and awayteamid = 10

select * from memberpickstbl where season = 2020 and week = 14 and memberid = 16 and (teamid = 23 or teamid = 10)

select * from memberpickstbl m
left join gamestbl g on g.gamenbr = m.gamenbr and g.season = m.season and g.week = m.week
where m.season = 2020 and m.week = 14 and memberid = 16

DELETE FROM `memberpickstbl` WHERE season = 2020 and week = 14 and memberid = 16
23 & 10

SELECT memberid, QM.membername as membername, email, phonenumber, screenname, picks
FROM
(
	SELECT memberid, membername, COUNT(*) as picks
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2020 and week = 15
	GROUP BY membername, memberid

	UNION

	SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
	FROM membertbl
	WHERE id NOT IN
	(
		SELECT  memberid as id
		FROM memberpickstbl MP
		LEFT JOIN membertbl M on MP.memberid = M.id
		WHERE season = 2020 and week = 15
	)
	AND status = 'active'
) AS QM
LEFT JOIN membertbl M on QM.memberid = M.id




SELECT DISTINCT gamenbr, memberid, membername
FROM   memberpickstbl MP
left join on gamestbl G on G.gamenbr = MP.gamenbr
LEFT JOIN membertbl M on M.id = MP.memberid
LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
where season = 2020 and week = 15
and gamenbr NOT IN
(
    select DISTINCT gamenbr
    FROM gamestbl
    where season = 2020 and week = 15
)



left join memberpickstbl MP on MP.season = G.season and MP.week = G2.week and MP2.gamenbr = G2.gamenbr
left join membertbl M2 ON M2.id = MP2.memberid

WHERE  colA NOT IN (SELECT DISTINCT colB FROM mytable);

from gamestbl G
left join memberpickstbl MP on MP.season = G.season and MP.week = G.week and MP.gamenbr = G.gamenbr
left join membertbl M ON M.id = MP.memberid
WHERE G.season = 2020 and G.week = 15



SELECT DISTINCT gamenbr
FROM   gamestbl
where season = 2020 and week = 15
and gamenbr NOT IN
(
    select DISTINCT gamenbr
    FROM memberpickstbl
    where season = 2020 and week = 15
)

SELECT DISTINCT gamenbr
FROM   memberpickstbl
where season = 2020 and week = 15
and gamenbr NOT IN
(
    select DISTINCT gamenbr
    FROM gamestbl
    where season = 2020 and week = 15
)


/// this works to find bad member picks gamenbr
SELECT DISTINCT gamenbr, memberid, membername
FROM   memberpickstbl MP
LEFT JOIN membertbl M on M.id = MP.memberid
where season = 2020 and week = 15
and gamenbr NOT IN
(
    select DISTINCT gamenbr
    FROM gamestbl
    where season = 2020 and week = 15
)

SELECT DISTINCT gamenbr, memberid, membername, T.name as teamname, MP.id as mempickid
FROM   memberpickstbl MP
LEFT JOIN membertbl M on M.id = MP.memberid
LEFT JOIN teamstbl T on T.id = MP.teamid
where season = 2020 and week = 15
and gamenbr NOT IN
(
    select DISTINCT gamenbr
    FROM gamestbl
    where season = 2020 and week = 15
);

select MP.gamenbr, T.name, MP.season, MP.week, M.membername, MP.id
from memberpickstbl MP
left join gamestbl G on G.season = MP.season and G.week = MP.week 
left join teamstbl T on T.id = MP.teamid
left join membertbl M on M.id = MP.memberid;










