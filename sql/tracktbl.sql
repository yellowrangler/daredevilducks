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
