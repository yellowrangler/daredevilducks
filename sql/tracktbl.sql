DROP TABLE IF EXISTS tracktbl;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tracktbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  memberid int(11) NOT NULL,
  screenname varchar(100) DEFAULT NULL,
  season varchar(100) DEFAULT NULL,
  week varchar(100) DEFAULT NULL,
  trackaction varchar(100) DEFAULT NULL,
  trackmodule varchar(100) DEFAULT NULL,
  tracktext varchar(1000) DEFAULT NULL,
  trackdate datetime DEFAULT NULL,
  device varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

-- sql stuff

select distinct trackmodule, trackaction
from tracktbl 

select DISTINCT trackaction
from tracktbl 

select DISTINCT trackmodule
from tracktbl;

select DISTINCT tracktext
from tracktbl;

-- canned selects with canned options
canned #1 get trackaction count for each tracaction with screenname, trackdate,count as hits group by date, screenname order by screenanme, date 

canned #2 get trackaction count for each tracaction with screenname, trackdate,count as hits group by date, screenname order by screenanme, date 


variable options 
group by [ date, screename or screenname, date ] 
where [ any-field  or none ] [ value-for-where ]
order by [ any-field or none ] [ DESC or ASC or none ]

create program to build a select statement that you give tablename to
-- select all fields details
SELECT  
  [ what to select any-number-of-fields  checkbox ]
  id,
  memberid,
  screenname,
  season,
  week,
  trackaction,
  trackmodule,
  tracktext,
  trackdate,
  device
FROM tracktbl  
WHERE [ any-field or none ] [ value-for-where ]
ORDER BY [ any-field or none ] [ DESC or ASC or none ]

SELECT  
  id,
  memberid,
  screenname,
  season,
  week,
  trackaction,
  trackmodule,
  tracktext,
  trackdate,
  device
FROM tracktbl  
WHERE [ any-field or none ] [ value-for-where ]
ORDER BY [ any-field or none ] [ DESC or ASC or none ]

Where: 
screenname 
season
week 
trackaction
trackmodule
tracktext
trackdate
device 

Operator:
=
>
<
<>
like

Value:
screenname list
season list
week list
trackaction list
trackmodule list
tracktext list
trackdate list
device list

Orderby:
screenname 
season
week 
trackaction
trackmodule
tracktext
trackdate
device 

Sort:
ASC
DESC



SELECT  
  id,
  memberid,
  screenname,
  season,
  week,
  trackaction,
  trackmodule,
  tracktext,
  trackdate,
  device
FROM tracktbl  
GROUP BY trackmodule 
ORDER BY trackdate

-- select with group by single and double group
SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits, [ what to select ]
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
WHERE [ what selection criteria ]
GROUP BY tdate, screenname [ how to group ]
ORDER BY screenname, tdate; [ how to order ]

SELECT screenname, count(trackaction) as hits [ what to select ]
FROM tracktbl 
group by screenname [ how to group ]


SELECT * FROM tracktbl 
WHERE trackmodule = "viewtotalpickgames"
order by screenname, id

SELECT * FROM tracktbl  
ORDER BY id DESC

SELECT screenname, tracktext, trackaction, trackmodule, count(trackaction) as hits
FROM tracktbl 
where screenname = "Hawk Eye"
group by trackaction;

SELECT screenname, trackdate, tracktext, trackaction, trackmodule, device 
FROM tracktbl 
where screenname = "Hawk Eye"
ORDER BY id DESC

mysql --batch -u user -h remote.host.tld database --port 3306 -ppass -e "SELECT * FROM webrecord_wr25mfz_20101011_175524;" | sed 's/\t/,/g' 2>&1
mysql  -u tarryc -p ddd < trackercountall.sql | sed 's/\t/,/g'> trackercountall.csv


SELECT screenname, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
INTO OUTFILE "/home/pi/Development/daredevilducks/csv/trackercountall.csv"
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY "\n"
FROM tracktbl
GROUP BY screenname;

SELECT screenname, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
GROUP BY screenname LIMIT 500;

SELECT screenname, CAST(trackdate AS DATE) as tdate, CAST(trackdate AS TIME) as ttime, count(*) as hits,

-- SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
SELECT screenname, CAST(trackdate AS DATE) as tdate, CAST(trackdate AS TIME) as ttime, trackaction
FROM tracktbl
GROUP BY tdate, ttime, screenname
-- GROUP BY tdate, screenname
-- GROUP BY screenname, tdate
ORDER BY screenname, tdate;

-- SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
GROUP BY tdate, screenname
-- GROUP BY screenname, tdate
ORDER BY screenname, tdate;

SELECT SUM(t.hits)
FROM 
(  
  SELECT screenname, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
  FROM tracktbl
  GROUP BY screenname) t;

-- number of count on devices
SELECT device, count(device) as devicehit
FROM tracktbl 
group by device;

-- all picks what trackaction count
SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl  
group by trackaction,screenname
order by trackaction;
order by screenname;

-- who has seen what trackaction count
SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl  
where trackaction "s"
group by trackaction,screenname
order by trackaction;
order by screenname;

add order by and asc or desc


SELECT screenname, count(trackaction) as hits
FROM tracktbl 
group by screenname;

SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl  
group by trackaction
order by id desc;

SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl 
where trackaction = 'hall of memory' 
group by screenname;

SELECT trackaction, count(trackaction) as hits
FROM `tracktbl` 
where screenname = 'Hawk Eye' 
group by trackaction
order by hits;


-- miscelaneous
"trackmodule","trackaction"
"viewtotalpickgamesController","viewtotalpickgames"
"gamesController","pickgames"
"halloffameController","hall of fame"
"playerstatsmemberweeklyController","weekly totals"
"playerstatstotalwinsController","player totals"
"pickgamesController","team stats dialog"
"teamweeklyrankingController","team scores and stats"
"hallofmemoryController","hall of memory"
"teamstandingsController","team standings"
"viewtotalpickgamesController","team stats dialog"
"viewtotalpickgamesController","getMemberPickList"
"nflnewsController","nfl news"
"teamdiscoveryController","team discovery"
"takesurveyController","takesurvey"


Transaction requests fro review
"selectallorderby"
"countontrackaction"
"groupcountontrackaction"
