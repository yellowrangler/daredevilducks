USE ddd;
DROP TABLE playerinjurytbl;
CREATE TABLE playerinjurytbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  season int(11) DEFAULT NULL,
  week int(11) DEFAULT NULL,
  teamid int(11) DEFAULT NULL,
  playername varchar(100) NULL,
  position varchar(5) NULL,
  injury varchar(255) NULL,
  status varchar(255) NULL,
  datereported varchar(255) NULL,
  source varchar(255) NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

DROP TABLE IF EXISTS teamstbl;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE teamstbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  player varchar(255) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  city varchar(255) DEFAULT NULL,
  state varchar(255) DEFAULT NULL,
  league varchar(255) DEFAULT NULL,
  conference varchar(255) DEFAULT NULL,
  division varchar(255) DEFAULT NULL,
  teamiconname varchar(255) DEFAULT NULL,
  teamorder int(11) DEFAULT NULL,
  teamurl varchar(255) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  postseasonstatus varchar(25) DEFAULT NULL,
  enterdate datetime DEFAULT NULL,
  createdate datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

localhost/ddd/teamstbl/   http://10.0.0.250/phpmyadmin/tbl_sql.php?db=ddd&table=teamstbl
 Showing rows 0 - 24 (32 total, Query took 0.0005 seconds.)

SELECT name, location, city, state 
FROM `teamstbl`


name  location  city  state 
Dolphins  Miami Miami FL  
Jets  New York  East Rutherford NJ  
Bills Buffalo Buffalo NY  
Patriots  New England Foxborough  MA  
Bengals Cincinnati  Cincinnati  OH  
Steelers  Pittsburgh  Pittsburgh  PA  
Browns  Cleveland Cleveland OH  
Ravens  Baltimore Baltimore MD  
Titans  Tennessee Nashville TN  
Texans  Houston Houston TX  
Jaguars Jacksonville  Jacksonville  FL  
Colts Indianapolis  Indianapolis  IN  
Broncos Denver  Denver  CO  
Chargers  Los Angeles Los Angeles CA  
Raiders Las Vegas Oakland CA  
Chiefs  Kansas City Kansas City MO  
Eagles  Philadelphia  Philadelphia  PA  
Commanders  Washington  Landover  MD  
Cowboys Dallas  Dallas  TX  
Giants  New York  East Rutherford NJ  
Vikings Minnesota Minneapolis MN  
Lions Detroit Detroit MI  
Bears Chicago Chicago IL  
Packers Green Bay Green Bay WI  
Panthers  Carolina  Charlotte NC  
