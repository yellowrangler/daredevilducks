
SELECT count(*) FROM gamestbl WHERE season = 2024 and week < 17;

SELECT * FROM memberpickstbl where season = 2024 and week = 17 and gamenbr > 256;



UPDATE gametbl SET gamenbr= 241'
where season = 2024 and week = 17 and gamenbr = 257;

UPDATE gametbl SET gamenbr= 242'
where season = 2024 and week = 17 and gamenbr = 258;


UPDATE memberpickstbl SET gamenbr= 241'
where season = 2024 and week = 17 and gamenbr = 257;

UPDATE memberpickstbl SET gamenbr= 242'
where season = 2024 and week = 17 and gamenbr = 258;

INSERT INTO gamenetworktbl (id, network, networkiconname) VALUES ('11', 'Netflix', 'netflix.png');


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

SELECT count(*) FROM memberpickstbl
where season = 2024 and memberid = 1

SELECT * FROM memberpickstbl where season = 2024 and memberid = 1

SELECT * FROM memberstatstbl where season = 2024 and memberid = 1

SELECT * FROM gamestbl WHERE season = 2024 and (hometeamscore = 0) and (awayteamscore = 0)

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

INSERT INTO preplayofftbl
VALUES
(1,2024,'Clinched','1','Chiefs','kc.png','1','Lions','det.png',NULL,NULL),
(2,2024,'Clinched','2','Bills','buf.png','2','Eagles','phi.png',NULL,NULL),
(3,2024,'Clinched','3','Ravens','bal.png','5','Vikings','min.png',NULL,NULL),
(4,2024,'Clinched','4','Texans','hou.png','6','Packers','gb.png',NULL,NULL),
(5,2024,'Clinched','5','Steelers','pit.png','','','',NULL,NULL),
(6,2024,'Hunt','6','Chargers','sd.png','3','Rams','stl.png',NULL,NULL),
(7,2024,'Hunt','7','Broncos','den.png','4','Falcons','atl.png',NULL,NULL),
(8,2024,'Hunt','','','','7','Commanders','was.png',NULL,NULL),
(9,2024,'Hunt','','','','','','',NULL,NULL),
(10,2024,'Bubble','8','Colts','ind.png','8','Buccaneers','tb.png',NULL,NULL),
(11,2024,'Bubble','9','Dolphins','mia.png','9','Seahawks','sea.png',NULL,NULL),
(12,2024,'Bubble','10','Bengals','cin.png','','','',NULL,NULL),
(13,2024,'Eliminated','11','Jets','nyj.png','10','Cowboys','dal.png',NULL,NULL),
(14,2024,'Eliminated','12','Browns','cle.png','11','Cardinals','ari.png',NULL,NULL),
(15,2024,'Eliminated','13','Jaguars','jac.png','12','49ers','sf.png',NULL,NULL),
(16,2024,'Eliminated','14','Titans','ten.png','13','Eagles','phi.png',NULL,NULL),
(17,2024,'Eliminated','15','Raiders','oak.png','14','Bears','chi.png',NULL,NULL),
(18,2024,'Eliminated','16','Patriots','ne.png','15','Panthers','car.png',NULL,NULL),
(19,2024,'Eliminated','','','','16','Giants','nyg.png',NULL,NULL);

INSERT INTO gamestbl
( 
	season, 
	week, 
	gamenbr, 
	gamedate, 
	gameyear, 
	gameday, 
	networkid, 
	gametime, 
	hometeamid, 
	awayteamid, 
	hometeamscore, 
	awayteamscore, 
	gametypeid, 
	gamedatetime, 
	enterdate) 
VALUES 
('2024','18','gamenbr','Jan 5','2025','Sun','1','1:00 pm','home','away','0','0','2','[value-14]','[value-15]','[value-16]')

CREATE TABLE gamestbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  season int(11) DEFAULT NULL,
  week int(11) DEFAULT NULL,
  gamenbr int(11) DEFAULT NULL,
  gamedate varchar(25) DEFAULT NULL,
  gameyear varchar(25) DEFAULT NULL,
  gameday varchar(25) DEFAULT NULL,
  networkid int(11) DEFAULT NULL,
  gametime varchar(25) DEFAULT NULL,
  hometeamid int(11) DEFAULT NULL,
  awayteamid int(11) DEFAULT NULL,
  hometeamscore int(11) DEFAULT NULL,
  awayteamscore int(11) DEFAULT NULL,
  gametypeid int(11) DEFAULT NULL,
  gamedatetime datetime DEFAULT NULL,
  enterdate datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3250 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO gamestbl 
(id, season, week, gamenbr, gamedate, gameyear, gameday, networkid, gametime, hometeamid, awayteamid, hometeamscore, awayteamscore, gametypeid, gamedatetime, enterdate)


INSERT INTO gamestbl 
(season, week, gamenbr, gamedate, gameyear, gameday, networkid, gametime, 
hometeamid, awayteamid, hometeamscore, awayteamscore, gametypeid, gamedatetime, 
enterdate)
VALUES 
(3241,2024,18,259,'Jan 5','2025','Sun',1,'1:00 pm',31,30,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:01:16'),
(3242,2024,18,260,'Jan 5','2025','Sun',1,'1:00 pm',26,25,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:03:26'),
(3243,2024,18,261,'Jan 5','2025','Sun',1,'1:00 pm',8,7,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:04:40'),
(3244,2024,18,262,'Jan 5','2025','Sun',1,'1:00 pm',19,18,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:05:57'),
(3245,2024,18,263,'Jan 5','2025','Sun',1,'1:00 pm',13,16,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:09:34'),
(3246,2024,18,264,'Jan 5','2025','Sun',1,'1:00 pm',22,21,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:10:44'),
(3247,2024,18,265,'Jan 5','2025','Sun',1,'1:00 pm',24,23,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:11:45'),
(3248,2024,18,266,'Jan 5','2025','Sun',1,'1:00 pm',12,11,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:24:54'),
(3249,2024,18,267,'Jan 5','2025','Sun',1,'1:00 pm',32,29,0,0,2,'2025-01-05 13:00:00','2024-12-28 22:16:30');
)


season=2024&gametypeid=2&week=18&gamenbr=268&gamedate=Jan+5&gameyear=2025&gameday=Sun&gametime=1%3A00+PM&networkid=1&hometeamid=14&hometeamscore=0&awayteamid=15&awayteamscore=0'






