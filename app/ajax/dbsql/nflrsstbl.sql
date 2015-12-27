--
-- Table structure for table `nflrsstbl`
--

DROP TABLE IF EXISTS `nflrsstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nflrsstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rsssource` varchar(255) DEFAULT NULL,
  `rsslink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO `nflrsstbl`(`rsssource`, `rsslink`) 
VALUES ('NFL','http://www.nfl.com/rss/rsslanding?searchString=home');

INSERT INTO `nflrsstbl`(`rsssource`, `rsslink`) 
VALUES ('ESPN','http://sports.espn.go.com/espn/rss/nfl/news');

INSERT INTO `nflrsstbl`(`rsssource`, `rsslink`) 
VALUES ('Rotowire','http://www.rotowire.com/rss/news.htm?sport=nfl');

INSERT INTO `nflrsstbl`(`rsssource`, `rsslink`) 
VALUES ('FOX','http://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU&tag=nfl');