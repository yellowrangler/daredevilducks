--
-- Table structure for table `teamstbl`
--

DROP TABLE IF EXISTS `teamstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `league` varchar(255) DEFAULT NULL,
  `conference` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `teamiconname` varchar(255) DEFAULT NULL,
  `teamorder` int(11) DEFAULT NULL,
  `teamurl` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `postseasonstatus` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `teamstbl` WRITE;
/*!40000 ALTER TABLE `teamstbl` DISABLE KEYS */;
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (1,'Dolphins','Miami','Miami','FL','NFL','AFC','East','mia.png',1,'http://www.miamidolphins.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (2,'Jets','New York','East Rutherford','NJ','NFL','AFC','East','nyj.png',2,'http://www.newyorkjets.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (3,'Bills','Buffalo','Buffalo','NY','NFL','AFC','East','buf.png',3,'http://www.buffalobills.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (4,'Patriots','New England','Foxborough','MA','NFL','AFC','East','ne.png',4,'http://www.patriots.com/',0,'Z','2015-12-21 00:14:39',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (5,'Bengals','Cincinnati','Cincinnati','OH','NFL','AFC','North','cin.png',1,'http://www.bengals.com/',0,'X','2015-12-21 02:31:28',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (6,'Steelers','Pittsburgh','Pittsburgh','PA','NFL','AFC','North','pit.png',2,'http://www.steelers.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (7,'Browns','Cleveland','Cleveland','OH','NFL','AFC','North','cle.png',3,'http://www.clevelandbrowns.com/home.html',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (8,'Ravens','Baltimore','Baltimore','MD','NFL','AFC','North','bal.png',4,'http://www.baltimoreravens.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (9,'Titans','Tennessee','Nashville','TN','NFL','AFC','South','ten.png',1,'http://www.titansonline.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (10,'Texans','Houston','Houston','TX','NFL','AFC','South','hou.png',2,'http://www.houstontexans.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (11,'Jaguars','Jacksonville','Jacksonville','FL','NFL','AFC','South','jac.png',3,'http://www.jaguars.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (12,'Colts','Indianapolis','Indianapolis','IN','NFL','AFC','South','ind.png',4,'http://www.colts.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (13,'Broncos','Denver','Denver','CO','NFL','AFC','West','den.png',1,'http://www.denverbroncos.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (14,'Chargers','San Diego','San Diego','CA','NFL','AFC','West','sd.png',2,'http://www.chargers.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (15,'Raiders','Oakland','Oakland','CA','NFL','AFC','West','oak.png',3,'http://www.raiders.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (16,'Chiefs','Kansas City','Kansas City','MO','NFL','AFC','West','kc.png',4,'http://www.kcchiefs.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (17,'Eagles','Philadelphia','Philadelphia','PA','NFL','NFC','East','phi.png',1,'http://www.philadelphiaeagles.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (18,'Redskins','Washington','Landover','MD','NFL','NFC','East','was.png',2,'http://www.redskins.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (19,'Cowboys','Dallas','Dallas','TX','NFL','NFC','East','dal.png',3,'http://www.dallascowboys.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (20,'Giants','New York','East Rutherford','NJ','NFL','NFC','East','nyg.png',4,'http://www.giants.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (21,'Vikings','Minnesota','Minneapolis','MN','NFL','NFC','North','min.png',1,'http://www.vikings.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (22,'Lions','Detroit','Detroit','MI','NFL','NFC','North','det.png',2,'http://www.detroitlions.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (23,'Bears','Chicago','Chicago','IL','NFL','NFC','North','chi.png',3,'http://www.chicagobears.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (24,'Packers','Green Bay','Green Bay','WI','NFL','NFC','North','gb.png',4,'http://www.packers.com/',0,'X','2015-12-21 00:28:48',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (25,'Panthers','Carolina','Charlotte','NC','NFL','NFC','South','car.png',1,'http://www.panthers.com/',0,'A','2015-12-22 00:05:28',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (26,'Falcons','Atlanta','Atlanta','GA','NFL','NFC','South','atl.png',2,'http://www.atlantafalcons.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (27,'Saints','New Orleans','New Orleans','LA','NFL','NFC','South','no.png',3,'http://www.neworleanssaints.com/',0,NULL,'2015-09-05 18:21:56',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (28,'Buccaneers','Tampa Bay','Tampa Bay','FL','NFL','NFC','South','tb.png',4,'http://www.buccaneers.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (29,'Seahawks','Seattle','Seattle','WA','NFL','NFC','West','sea.png',1,'http://www.seahawks.com/',0,'X','2015-12-21 00:42:24',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (30,'49ers','San Francisco','San Francisco','CA','NFL','NFC','West','sf.png',2,'http://www.49ers.com/',NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (31,'Cardinals','Arizona','Glendale','AZ','NFL','NFC','West','ari.png',3,'http://www.azcardinals.com/',0,'Z','2015-12-21 14:43:24',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `postseasonstatus`, `enterdate`, `createdate`) VALUES (32,'Rams','St. Louis','St. Louis','MO','NFL','NFC','West','stl.png',4,'http://www.stlouisrams.com/',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teamstbl` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `teamseasontbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamseasontbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `postseasonstatus` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;












