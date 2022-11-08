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
SELECT screenname, COUNT(*) as hits
FROM tracktbl
GROUP BY screenname;

SELECT * 
FROM tracktbl
WHERE screenname = "Hawk Eye";

SELECT * 
FROM tracktbl
WHERE screenname = "Hawk Eye";
AND trackaction = ""

SELECT * FROM tracktbl 
WHERE trackmodule = "viewtotalpickgames"
order by screenname, id

getMemberPickList

SELECT screenname, trackaction, count(trackaction)
FROM tracktbl 
where trackaction = "viewtotalpickgames"
group by screenname;

SELECT screenname, trackaction, count(trackaction)
FROM tracktbl 
where trackaction = "getMemberPickList"
group by screenname;

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

SELECT screenname, count(screenname) as hits
FROM tracktbl 
group by screenname;

SELECT screenname, trackaction, count(screenname) as hits
FROM tracktbl 
where trackaction = 'getMemberPickList'
group by screenname;

SELECT screenname, count(trackaction) as hits
FROM tracktbl 
group by screenname;

SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl 
where trackaction = 'getMemberPickList' 
group by screenname;

SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl 
where trackaction = 'hall of fame' 
group by screenname;

SELECT screenname, trackaction, count(trackaction) as hits
FROM tracktbl 
where trackaction = 'hall of memory' 
group by screenname;

SELECT screenname, trackaction, 
COALESCE(SUM(CASE WHEN trackaction = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
COALESCE(COUNT(*),0) as ties

