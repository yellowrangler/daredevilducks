SELECT TS.season AS tsseason, TR.season as trseason
from teamstbl
where id = 4

SELECT *
FROM gamestbl G 
LEFT JOIN teamweekstatstbl TS ON (G.hometeamid = TS.teamid OR G.awayteamid = TS.teamid)	
	AND G.season = TS.season AND G.week = TS.week
LEFT JOIN teamweekranktbl TR on TR.season = TS.season AND
	TR.week = TS.week AND TR.teamid = TS.teamid
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
WHERE (G.hometeamid = 4 OR G.awayteamid = 4)
AND G.season = 2015 
AND  G.week < 8
ORDER BY gamenbr

SELECT TH.location as hometeamlocation, TH.name as hometeamname, G.hometeamscore as hometeamscore, 
TSH.wins as hometeamwins, TSH.losses as hometeamlosses, TSH.ties as hometeamties,
TRH.powerranking as hometeampowerranking, 
TRH.offencetotal as hometeamoffencetotal, 
TRH.offencescoring as hometeamoffencescoring, 
TRH.offencepassing as hometeamoffencepassing, 
TRH.offencerushing as hometeamoffencerushing, 
TRH.defencetotal as hometeamdefencetotal, 
TRH.defencescoring as hometeamdefencescoring, 
TRH.defencepassing as hometeamdefencepassing, 
TRH.defencerushing as hometeamdefencerushing, 
TA.location as awayteamlocation, TA.name as awayteamname, G.awayteamscore as awayteamscore, 
TSA.wins as awayteamwins, TSA.losses as awayteamlosses, TSA.ties as awayteamties,
TRA.powerranking as awayteampowerranking, 
TRA.offencetotal as awayteamoffencetotal, 
TRA.offencescoring as awayteamoffencescoring, 
TRA.offencepassing as awayteamoffencepassing, 
TRA.offencerushing as awayteamoffencerushing, 
TRA.defencetotal as awayteamdefencetotal, 
TRA.defencescoring as awayteamdefencescoring, 
TRA.defencepassing as awayteamdefencepassing, 
TRA.defencerushing as awayteamdefencerushing
FROM gamestbl G 
LEFT JOIN teamweekstatstbl TSH ON G.hometeamid = TSH.teamid
	AND G.season = TSH.season AND G.week = TSH.week
LEFT JOIN teamweekstatstbl TSA ON G.awayteamid = TSA.teamid	
	AND G.season = TSA.season AND G.week = TSA.week	
LEFT JOIN teamweekranktbl TRH on TRH.season = TSH.season AND
	TRH.week = TSH.week AND TRH.teamid = TSH.teamid
LEFT JOIN teamweekranktbl TRA on TRA.season = TSA.season AND
	TRA.week = TSA.week AND TRA.teamid = TSA.teamid	
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
WHERE (G.hometeamid = 4 OR G.awayteamid = 4)
AND G.season = 2015 
AND  G.week < 8
ORDER BY gamenbr




SELECT 
G.week as week,
TH.id as hometeamid,
TH.location as hometeamlocation, 
TH.name as hometeamname, 
G.hometeamscore as hometeamscore, 
TSH.wins as hometeamwins, 
TSH.losses as hometeamlosses, 
TSH.ties as hometeamties,
TRH.powerranking as hometeampowerranking, 
TRH.offencetotal as hometeamoffencetotal, 
TRH.offencescoring as hometeamoffencescoring, 
TRH.offencepassing as hometeamoffencepassing, 
TRH.offencerushing as hometeamoffencerushing, 
TRH.defencetotal as hometeamdefencetotal, 
TRH.defencescoring as hometeamdefencescoring, 
TRH.defencepassing as hometeamdefencepassing, 
TRH.defencerushing as hometeamdefencerushing, 
TA.id as awayteamid,
TA.location as awayteamlocation, 
TA.name as awayteamname, 
G.awayteamscore as awayteamscore, 
TSA.wins as awayteamwins, 
TSA.losses as awayteamlosses, 
TSA.ties as awayteamties,
TRA.powerranking as awayteampowerranking, 
TRA.offencetotal as awayteamoffencetotal, 
TRA.offencescoring as awayteamoffencescoring, 
TRA.offencepassing as awayteamoffencepassing, 
TRA.offencerushing as awayteamoffencerushing, 
TRA.defencetotal as awayteamdefencetotal, 
TRA.defencescoring as awayteamdefencescoring, 
TRA.defencepassing as awayteamdefencepassing, 
TRA.defencerushing as awayteamdefencerushing
FROM gamestbl G 
LEFT JOIN teamweekstatstbl TSH ON G.hometeamid = TSH.teamid
	AND G.season = TSH.season AND G.week = TSH.week
LEFT JOIN teamweekstatstbl TSA ON G.awayteamid = TSA.teamid	
	AND G.season = TSA.season AND G.week = TSA.week	
LEFT JOIN teamweekranktbl TRH on TRH.season = TSH.season AND
	TRH.week = TSH.week AND TRH.teamid = TSH.teamid
LEFT JOIN teamweekranktbl TRA on TRA.season = TSA.season AND
	TRA.week = TSA.week AND TRA.teamid = TSA.teamid	
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id		
WHERE (G.hometeamid = 4 OR G.awayteamid = 4)
AND G.season = 2015 
AND G.week <= 7

UNION

SELECT 
GB.week as week,
GB.id as hometeamid,
T.location as hometeamlocation, 
T.name as hometeamname, 
" " as hometeamscore, 
" " as hometeamwins, 
" " as hometeamlosses, 
" " hometeamties,
" " as hometeampowerranking, 
" " as hometeamoffencetotal, 
" " as hometeamoffencescoring, 
" " as hometeamoffencepassing, 
" " as hometeamoffencerushing, 
" " as hometeamdefencetotal, 
" " as hometeamdefencescoring, 
" " as hometeamdefencepassing, 
" " as hometeamdefencerushing, 
" " as awayteamid,
" " as awayteamlocation, 
" " as awayteamname, 
" " as awayteamscore, 
" " as awayteamwins, 
" " as awayteamlosses, 
" " as awayteamties,
" " as awayteampowerranking, 
" " as awayteamoffencetotal, 
" " as awayteamoffencescoring, 
" " as awayteamoffencepassing, 
" " as awayteamoffencerushing, 
" " as awayteamdefencetotal, 
" " as awayteamdefencescoring, 
" " as awayteamdefencepassing, 
" " as awayteamdefencerushing
FROM gamebyetbl GB 
LEFT JOIN teamstbl T ON GB.teamid = T.id
WHERE GB.season = 2015 AND GB.week <= 7 AND GB.teamid = 4

ORDER BY week


===========================================


SELECT 
CASE WHEN G.week IS NOT NULL THEN G.WEEK
ELSE WHEN GB.week IS NOT NULL THEN GB.week
AS week,
G.week as week,
TH.id as hometeamid,
TH.location as hometeamlocation, 
TH.name as hometeamname, 
G.hometeamscore as hometeamscore, 
TSH.wins as hometeamwins, 
TSH.losses as hometeamlosses, 
TSH.ties as hometeamties,
TRH.powerranking as hometeampowerranking, 
TRH.offencetotal as hometeamoffencetotal, 
TRH.offencescoring as hometeamoffencescoring, 
TRH.offencepassing as hometeamoffencepassing, 
TRH.offencerushing as hometeamoffencerushing, 
TRH.defencetotal as hometeamdefencetotal, 
TRH.defencescoring as hometeamdefencescoring, 
TRH.defencepassing as hometeamdefencepassing, 
TRH.defencerushing as hometeamdefencerushing, 
TA.id as awayteamid,
TA.location as awayteamlocation, 
TA.name as awayteamname, 
G.awayteamscore as awayteamscore, 
TSA.wins as awayteamwins, 
TSA.losses as awayteamlosses, 
TSA.ties as awayteamties,
TRA.powerranking as awayteampowerranking, 
TRA.offencetotal as awayteamoffencetotal, 
TRA.offencescoring as awayteamoffencescoring, 
TRA.offencepassing as awayteamoffencepassing, 
TRA.offencerushing as awayteamoffencerushing, 
TRA.defencetotal as awayteamdefencetotal, 
TRA.defencescoring as awayteamdefencescoring, 
TRA.defencepassing as awayteamdefencepassing, 
TRA.defencerushing as awayteamdefencerushing
FROM gamestbl G 
LEFT JOIN teamweekstatstbl TSH ON G.hometeamid = TSH.teamid
	AND G.season = TSH.season AND G.week = TSH.week
LEFT JOIN teamweekstatstbl TSA ON G.awayteamid = TSA.teamid	
	AND G.season = TSA.season AND G.week = TSA.week	
LEFT JOIN teamweekranktbl TRH on TRH.season = TSH.season AND
	TRH.week = TSH.week AND TRH.teamid = TSH.teamid
LEFT JOIN teamweekranktbl TRA on TRA.season = TSA.season AND
	TRA.week = TSA.week AND TRA.teamid = TSA.teamid	
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
RIGHT JOIN gamebyetbl GB ON GB.season = 2015 AND GB.week <= 7 AND GB.teamid = 4	
WHERE (G.hometeamid = 4 OR G.awayteamid = 4)
AND G.season = 2015 
AND G.week <= 7

UNION

SELECT 
GB.week as week,
GB.id as hometeamid,
T.location as hometeamlocation, 
T.name as hometeamname, 
" " as hometeamscore, 
" " as hometeamwins, 
" " as hometeamlosses, 
" " hometeamties,
" " as hometeampowerranking, 
" " as hometeamoffencetotal, 
" " as hometeamoffencescoring, 
" " as hometeamoffencepassing, 
" " as hometeamoffencerushing, 
" " as hometeamdefencetotal, 
" " as hometeamdefencescoring, 
" " as hometeamdefencepassing, 
" " as hometeamdefencerushing, 
" " as awayteamid,
" " as awayteamlocation, 
" " as awayteamname, 
" " as awayteamscore, 
" " as awayteamwins, 
" " as awayteamlosses, 
" " as awayteamties,
" " as awayteampowerranking, 
" " as awayteamoffencetotal, 
" " as awayteamoffencescoring, 
" " as awayteamoffencepassing, 
" " as awayteamoffencerushing, 
" " as awayteamdefencetotal, 
" " as awayteamdefencescoring, 
" " as awayteamdefencepassing, 
" " as awayteamdefencerushing
FROM gamebyetbl GB 
LEFT JOIN teamstbl T ON GB.teamid = T.id
WHERE GB.season = 2015 AND GB.week <= 7 AND GB.teamid = 4

ORDER BY week









