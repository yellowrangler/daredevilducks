DROP TABLE IF EXISTS teamweekranktbl;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE teamweekranktbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  season int(11) DEFAULT NULL,
  week int(11) DEFAULT NULL,
  teamid int(11) DEFAULT NULL,
  powerranking int(11) DEFAULT NULL,  
  offencetotal int(11) DEFAULT NULL,
  offencepassing int(11) DEFAULT NULL,
  offencerushing int(11) DEFAULT NULL,
  offencescoring int(11) DEFAULT NULL,
  defencetotal int(11) DEFAULT NULL,
  defencepassing int(11) DEFAULT NULL,
  defencerushing int(11) DEFAULT NULL,
  defencescoring int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

Need proceess to idividually update stats for teams
Need process to read and update teamweekranktbl from csv file
csv file will represent week in season