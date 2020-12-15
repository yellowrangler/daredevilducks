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

23 & 10
