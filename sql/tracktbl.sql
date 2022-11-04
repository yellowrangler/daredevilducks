DROP TABLE IF EXISTS `tracktbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracktbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `screenname` varchar(100) DEFAULT NULL,
  `season` varchar(100) DEFAULT NULL,
  `week` varchar(100) DEFAULT NULL,
  `trackaction` varchar(100) DEFAULT NULL,
  `trackmodule` varchar(100) DEFAULT NULL,
  `tracktext` varchar(1000) DEFAULT NULL,
  `trackdate` datetime DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


-- sql stuff
SELECT screenname, COUNT(*) 
FROM tracktbl
GROUP BY screenname;

SELECT * 
FROM tracktbl
WHERE screenname = "Hawk Eye";

SELECT * 
FROM tracktbl
WHERE screenname = "Hawk Eye";
AND trackaction = ""

