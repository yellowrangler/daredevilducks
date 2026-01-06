-- getnflteamwinslosstie.sql

SELECT DISTINCT 
tt.id as teamid, 
location as teamlocation, 
name as teamname, 
COALESCE(wins,0) AS teamwins,
COALESCE(losses,0) AS teamlosses,
COALESCE(ties,0) AS teamties
FROM teamstbl tt
LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
LEFT JOIN teamseasontbl tss ON tt.id = tss.teamid AND tss.season = 2025
WHERE ts.season = '2025' and ts.gametypeid = 1 AND ts.teamid = 4;

SELECT id, 
	location as teamlocation, 
	name as teamname, 
	'0' as teamwins,
	'0' as teamlosses,
	'0' as teamties
	FROM teamstbl WHERE id = 4