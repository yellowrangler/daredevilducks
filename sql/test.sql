/* SELECT * FROM gamestbl G; 
SELECT * FROM teamgamestbl G; 
SELECT * FROM teamstbl G; 
*/

SELECT
	G.id as gameid,
	G.seasonyear as seasonyear,
	G.gamenbr as gamenbr,
	G.gamedate as gamedate,
	G.gameday as gameday,
	G.type as gametype,
	GTA.teamid as awayteamid,
	GTA.teamscore as awayteamscore,
	TA.name as awayteamname,
	TA.conference as awayconference,
	TA.division as awaydivision,
	TA.teamiconname as awayiconname,
	GTH.teamid as hometeamid,
	GTH.teamscore as hometeamscore,
	TH.name as hometeamname,
	TH.conference as homeconference,
	TH.division as homedivision,
	TH.teamiconname as homeiconname 

FROM gamestbl G 
LEFT JOIN teamgamestbl GTA ON GTA.gamenbr = G.gamenbr
AND GTA.location = 'A'
LEFT JOIN teamgamestbl GTH ON GTH.gamenbr = G.gamenbr
AND GTH.location = 'H'
LEFT JOIN teamstbl TA ON TA.id = GTA.teamid
LEFT JOIN teamstbl TH ON TH.id = GTH.teamid
WHERE G.seasonyear = "2014"



