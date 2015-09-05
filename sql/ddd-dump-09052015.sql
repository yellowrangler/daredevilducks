-- MySQL dump 10.15  Distrib 10.0.20-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	10.0.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gamebyetbl`
--

DROP TABLE IF EXISTS `gamebyetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamebyetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamebyetbl`
--

LOCK TABLES `gamebyetbl` WRITE;
/*!40000 ALTER TABLE `gamebyetbl` DISABLE KEYS */;
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (1,2014,4,5,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (2,2014,4,7,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (3,2014,4,13,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (4,2014,4,32,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (5,2014,4,31,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (6,2014,4,29,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (7,2014,5,15,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (8,2014,5,1,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (9,2014,6,16,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (10,2014,6,27,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (11,2014,7,17,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (12,2014,7,28,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (13,2014,8,20,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (14,2014,8,30,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (15,2014,9,26,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (16,2014,9,3,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (17,2014,9,23,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (18,2014,9,22,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (19,2014,9,24,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (20,2014,9,9,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (21,2014,10,12,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (22,2014,10,21,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (23,2014,10,4,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (24,2014,10,14,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (25,2014,10,18,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (26,2014,10,10,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (27,2014,11,19,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (28,2014,11,2,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (29,2014,11,11,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (30,2014,11,8,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (31,2014,12,6,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (32,2014,12,25,2);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (33,2015,4,0,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (34,2015,6,19,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (35,2015,6,15,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (36,2015,6,32,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (37,2015,6,32,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (38,2015,7,23,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (39,2015,7,5,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (40,2015,7,13,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (41,2015,7,24,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (42,2015,8,3,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (43,2015,8,11,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (44,2015,8,17,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (45,2015,8,18,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (46,2015,10,26,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (47,2015,10,12,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (48,2015,10,14,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (49,2015,10,30,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (50,2015,11,7,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (51,2015,11,27,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (52,2015,11,20,1);
INSERT INTO `gamebyetbl` (`id`, `season`, `week`, `teamid`, `gametypeid`) VALUES (53,2015,11,6,1);
/*!40000 ALTER TABLE `gamebyetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamenetworktbl`
--

DROP TABLE IF EXISTS `gamenetworktbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamenetworktbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `network` varchar(255) DEFAULT NULL,
  `networkiconname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamenetworktbl`
--

LOCK TABLES `gamenetworktbl` WRITE;
/*!40000 ALTER TABLE `gamenetworktbl` DISABLE KEYS */;
INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES (1,'FOX','fox.png');
INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES (2,'CBS','cbs.png');
INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES (3,'NBC','nbc.png');
INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES (4,'NFL','nfl.png');
INSERT INTO `gamenetworktbl` (`id`, `network`, `networkiconname`) VALUES (5,'ESPN','espn.png');
/*!40000 ALTER TABLE `gamenetworktbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamestbl`
--

DROP TABLE IF EXISTS `gamestbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamestbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `gamenbr` int(11) DEFAULT NULL,
  `gamedate` varchar(25) DEFAULT NULL,
  `gameday` varchar(25) DEFAULT NULL,
  `networkid` int(11) DEFAULT NULL,
  `gametime` varchar(25) DEFAULT NULL,
  `hometeamid` int(11) DEFAULT NULL,
  `awayteamid` int(11) DEFAULT NULL,
  `hometeamscore` int(11) DEFAULT NULL,
  `awayteamscore` int(11) DEFAULT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `gamedatetime` datetime DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestbl`
--

LOCK TABLES `gamestbl` WRITE;
/*!40000 ALTER TABLE `gamestbl` DISABLE KEYS */;
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (1,2014,1,1,'Sep 4','Thu',3,'8:30 pm',29,24,36,16,2,'2014-09-04 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (2,2014,1,2,'Sep 7','Sun',1,'1:00 pm',26,27,37,34,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (3,2014,1,3,'Sep 7','Sun',1,'1:00 pm',23,3,20,23,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (4,2014,1,4,'Sep 7','Sun',2,'1:00 pm',16,9,10,26,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (5,2014,1,5,'Sep 7','Sun',1,'1:00 pm',32,21,6,34,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (6,2014,1,6,'Sep 7','Sun',2,'1:00 pm',1,4,33,20,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (7,2014,1,7,'Sep 7','Sun',2,'1:00 pm',2,15,19,14,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (8,2014,1,8,'Sep 7','Sun',2,'1:00 pm',17,11,34,17,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (9,2014,1,9,'Sep 7','Sun',2,'1:00 pm',6,7,30,27,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (10,2014,1,10,'Sep 7','Sun',2,'1:00 pm',8,5,16,23,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (11,2014,1,11,'Sep 7','Sun',1,'1:00 pm',10,18,17,6,2,'2014-09-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (12,2014,1,12,'Sep 7','Sun',1,'4:25 pm',19,30,17,28,2,'2014-09-07 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (13,2014,1,13,'Sep 7','Sun',1,'4:25 pm',28,25,14,20,2,'2014-09-07 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (14,2014,1,14,'Sep 7','Sun',3,'8:30 pm',13,12,31,24,2,'2014-09-07 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (15,2014,1,15,'Sep 8','Mon',5,'7:10 pm',22,20,35,14,2,'2014-09-08 19:10:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (16,2014,1,16,'Sep 8','Mon',5,'10:20 pm',31,14,18,17,2,'2014-09-08 22:20:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (17,2014,2,17,'Sep 11','Thu',2,'8:25 pm',8,6,26,6,2,'2014-09-11 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (18,2014,2,18,'Sep 14','Sun',2,'1:00 pm',3,1,29,10,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (19,2014,2,19,'Sep 14','Sun',2,'1:00 pm',5,26,24,10,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (20,2014,2,20,'Sep 14','Sun',1,'1:00 pm',7,27,26,24,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (21,2014,2,21,'Sep 14','Sun',1,'1:00 pm',9,19,10,26,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (22,2014,2,22,'Sep 14','Sun',2,'1:00 pm',21,4,7,30,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (23,2014,2,23,'Sep 14','Sun',1,'1:00 pm',20,31,14,25,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (24,2014,2,24,'Sep 14','Sun',2,'1:00 pm',18,11,41,10,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (25,2014,2,25,'Sep 14','Sun',1,'1:00 pm',25,22,24,7,2,'2014-09-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (26,2014,2,26,'Sep 14','Sun',1,'4:05 pm',14,29,30,21,2,'2014-09-14 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (27,2014,2,27,'Sep 14','Sun',1,'4:05 pm',28,32,17,19,2,'2014-09-14 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (28,2014,2,28,'Sep 14','Sun',2,'4:25 pm',13,16,24,17,2,'2014-09-14 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (29,2014,2,29,'Sep 14','Sun',2,'4:25 pm',24,2,31,24,2,'2014-09-14 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (30,2014,2,30,'Sep 14','Sun',2,'4:25 pm',15,10,14,30,2,'2014-09-14 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (31,2014,2,31,'Sep 14','Sun',3,'8:30 pm',30,23,20,28,2,'2014-09-14 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (32,2014,2,32,'Sep 15','Mon',5,'8:30 pm',12,17,27,30,2,'2014-09-15 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (33,2014,3,33,'Sep 18','Thu',2,'8:25 pm',26,28,56,14,2,'2014-09-18 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (34,2014,3,34,'Sep 21','Sun',2,'1:00 pm',3,14,10,22,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (35,2014,3,35,'Sep 21','Sun',2,'1:00 pm',5,9,33,7,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (36,2014,3,36,'Sep 21','Sun',2,'1:00 pm',7,8,21,23,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (37,2014,3,37,'Sep 21','Sun',1,'1:00 pm',22,24,19,7,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (38,2014,3,38,'Sep 21','Sun',1,'1:00 pm',32,19,31,34,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (39,2014,3,39,'Sep 21','Sun',2,'1:00 pm',4,15,16,9,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (40,2014,3,40,'Sep 21','Sun',1,'1:00 pm',27,21,20,9,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (41,2014,3,41,'Sep 21','Sun',2,'1:00 pm',20,10,30,17,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (42,2014,3,42,'Sep 21','Sun',1,'1:00 pm',17,18,37,34,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (43,2014,3,43,'Sep 21','Sun',2,'1:00 pm',11,12,17,44,2,'2014-09-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (44,2014,3,44,'Sep 21','Sun',1,'4:05 pm',31,30,23,14,2,'2014-09-21 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (45,2014,3,45,'Sep 21','Sun',2,'4:25 pm',1,16,15,34,2,'2014-09-21 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (46,2014,3,46,'Sep 21','Sun',2,'4:25 pm',29,13,26,20,2,'2014-09-21 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (47,2014,3,47,'Sep 21','Sun',3,'8:30 pm',25,6,19,37,2,'2014-09-21 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (48,2014,3,48,'Sep 22','Mon',5,'8:30 pm',2,23,19,27,2,'2014-09-22 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (49,2014,4,49,'Sep 25','Thu',2,'8:25 pm',18,20,14,45,2,'2014-09-25 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (50,2014,4,50,'Sep 28','Sun',1,'1:00 pm',23,24,17,38,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (51,2014,4,51,'Sep 28','Sun',2,'1:00 pm',12,9,41,17,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (52,2014,4,52,'Sep 28','Sun',2,'1:00 pm',15,1,14,38,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (53,2014,4,53,'Sep 28','Sun',1,'1:00 pm',2,22,17,24,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (54,2014,4,54,'Sep 28','Sun',1,'1:00 pm',6,28,24,27,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (55,2014,4,55,'Sep 28','Sun',2,'1:00 pm',8,25,38,10,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (56,2014,4,56,'Sep 28','Sun',2,'1:00 pm',10,3,23,17,2,'2014-09-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (57,2014,4,57,'Sep 28','Sun',2,'4:05 pm',14,11,33,14,2,'2014-09-28 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (58,2014,4,58,'Sep 28','Sun',1,'4:25 pm',21,26,41,28,2,'2014-09-28 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (59,2014,4,59,'Sep 28','Sun',1,'4:25 pm',30,17,26,21,2,'2014-09-28 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (60,2014,4,60,'Sep 28','Sun',3,'8:30 pm',19,27,38,17,2,'2014-09-28 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (61,2014,4,61,'Sep 29','Mon',5,'8:30 pm',16,4,41,14,2,'2014-09-29 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (62,2014,5,62,'Oct 2','Thu',2,'8:25 pm',24,21,42,10,2,'2014-10-02 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (63,2014,5,63,'Oct 5','Sun',2,'1:00 pm',19,10,20,17,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (64,2014,5,64,'Oct 5','Sun',1,'1:00 pm',22,3,14,17,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (65,2014,5,65,'Oct 5','Sun',2,'1:00 pm',9,7,28,29,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (66,2014,5,66,'Oct 5','Sun',2,'1:00 pm',12,8,20,13,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (67,2014,5,67,'Oct 5','Sun',1,'1:00 pm',27,28,37,31,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (68,2014,5,68,'Oct 5','Sun',1,'1:00 pm',20,26,30,20,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (69,2014,5,69,'Oct 5','Sun',1,'1:00 pm',17,32,34,28,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (70,2014,5,70,'Oct 5','Sun',1,'1:00 pm',25,23,31,24,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (71,2014,5,71,'Oct 5','Sun',2,'1:00 pm',11,6,9,17,2,'2014-10-05 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (72,2014,5,72,'Oct 5','Sun',1,'4:05 pm',13,31,41,20,2,'2014-10-05 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (73,2014,5,73,'Oct 5','Sun',2,'4:25 pm',14,2,31,0,2,'2014-10-05 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (74,2014,5,74,'Oct 5','Sun',2,'4:25 pm',30,16,22,17,2,'2014-10-05 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (75,2014,5,75,'Oct 5','Sun',3,'8:30 pm',4,5,43,17,2,'2014-10-05 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (76,2014,5,76,'Oct 6','Mon',5,'8:30 pm',18,29,17,27,2,'2014-10-06 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (77,2014,6,77,'Oct 9','Thu',2,'8:25 pm',10,12,28,33,2,'2014-10-09 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (78,2014,6,78,'Oct 12','Sun',1,'1:00 pm',26,23,13,27,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (79,2014,6,79,'Oct 12','Sun',2,'1:00 pm',3,4,22,37,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (80,2014,6,80,'Oct 12','Sun',1,'1:00 pm',5,25,37,37,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (81,2014,6,81,'Oct 12','Sun',2,'1:00 pm',7,6,31,10,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (82,2014,6,82,'Oct 12','Sun',2,'1:00 pm',9,11,16,14,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (83,2014,6,83,'Oct 12','Sun',1,'1:00 pm',1,24,24,27,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (84,2014,6,84,'Oct 12','Sun',1,'1:00 pm',21,22,3,17,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (85,2014,6,85,'Oct 12','Sun',2,'1:00 pm',2,13,17,31,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (86,2014,6,86,'Oct 12','Sun',2,'1:00 pm',28,8,17,48,2,'2014-10-12 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (87,2014,6,87,'Oct 12','Sun',2,'4:05 pm',15,14,28,31,2,'2014-10-12 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (88,2014,6,88,'Oct 12','Sun',1,'4:25 pm',31,18,30,20,2,'2014-10-12 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (89,2014,6,89,'Oct 12','Sun',1,'4:25 pm',29,19,23,30,2,'2014-10-12 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (90,2014,6,90,'Oct 12','Sun',3,'8:30 pm',17,20,27,0,2,'2014-10-12 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (91,2014,6,91,'Oct 13','Mon',5,'8:30 pm',32,30,17,31,2,'2014-10-13 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (92,2014,7,92,'Oct 16','Thu',2,'8:25 pm',4,2,27,25,2,'2014-10-16 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (93,2014,7,93,'Oct 19','Sun',1,'1:00 pm',3,21,17,16,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (94,2014,7,94,'Oct 19','Sun',2,'1:00 pm',23,1,14,27,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (95,2014,7,95,'Oct 19','Sun',1,'1:00 pm',22,27,24,23,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (96,2014,7,96,'Oct 19','Sun',1,'1:00 pm',24,25,38,17,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (97,2014,7,97,'Oct 19','Sun',2,'1:00 pm',12,5,27,0,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (98,2014,7,98,'Oct 19','Sun',1,'1:00 pm',32,29,28,26,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (99,2014,7,99,'Oct 19','Sun',2,'1:00 pm',18,9,19,17,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (100,2014,7,100,'Oct 19','Sun',2,'1:00 pm',11,7,24,6,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (101,2014,7,101,'Oct 19','Sun',1,'1:00 pm',8,26,29,7,2,'2014-10-19 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (102,2014,7,102,'Oct 19','Sun',2,'4:05 pm',14,16,20,23,2,'2014-10-19 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (103,2014,7,103,'Oct 19','Sun',1,'4:25 pm',19,20,31,21,2,'2014-10-19 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (104,2014,7,104,'Oct 19','Sun',1,'4:25 pm',15,31,13,24,2,'2014-10-19 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (105,2014,7,105,'Oct 19','Sun',3,'8:30 pm',13,30,42,17,2,'2014-10-19 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (106,2014,7,106,'Oct 20','Mon',5,'8:30 pm',6,10,30,23,2,'2014-10-20 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (107,2014,8,107,'Oct 23','Thu',2,'8:25 pm',13,14,35,21,2,'2014-10-23 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (108,2014,8,108,'Oct 26','Sun',1,'9:30 am',26,22,21,22,2,'2014-10-26 09:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (109,2014,8,109,'Oct 26','Sun',2,'1:00 pm',5,8,27,24,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (110,2014,8,110,'Oct 26','Sun',1,'1:00 pm',9,10,16,30,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (111,2014,8,111,'Oct 26','Sun',1,'1:00 pm',16,32,34,7,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (112,2014,8,112,'Oct 26','Sun',1,'1:00 pm',4,23,51,23,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (113,2014,8,113,'Oct 26','Sun',2,'1:00 pm',2,3,23,43,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (114,2014,8,114,'Oct 26','Sun',1,'1:00 pm',28,21,13,19,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (115,2014,8,115,'Oct 26','Sun',2,'1:00 pm',25,29,9,13,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (116,2014,8,116,'Oct 26','Sun',2,'1:00 pm',11,1,13,27,2,'2014-10-26 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (117,2014,8,117,'Oct 26','Sun',1,'4:05 pm',31,17,24,20,2,'2014-10-26 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (118,2014,8,118,'Oct 26','Sun',2,'4:25 pm',7,15,23,13,2,'2014-10-26 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (119,2014,8,119,'Oct 26','Sun',2,'4:25 pm',6,12,51,34,2,'2014-10-26 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (120,2014,8,120,'Oct 26','Sun',3,'8:30 pm',27,24,44,23,2,'2014-10-26 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (121,2014,8,121,'Oct 27','Mon',5,'8:30 pm',19,18,17,20,2,'2014-10-27 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (122,2014,9,122,'Oct 30','Thu',4,'8:25 pm',25,27,10,28,2,'2014-10-30 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (123,2014,9,123,'Nov 2','Sun',2,'1:00 pm',5,11,33,23,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (124,2014,9,124,'Nov 2','Sun',1,'1:00 pm',7,28,22,17,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (125,2014,9,125,'Nov 2','Sun',1,'1:00 pm',19,31,17,28,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (126,2014,9,126,'Nov 2','Sun',2,'1:00 pm',16,2,24,10,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (127,2014,9,127,'Nov 2','Sun',2,'1:00 pm',1,14,37,0,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (128,2014,9,128,'Nov 2','Sun',1,'1:00 pm',21,18,29,26,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (129,2014,9,129,'Nov 2','Sun',1,'1:00 pm',10,17,21,31,2,'2014-11-02 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (130,2014,9,130,'Nov 2','Sun',1,'4:05 pm',30,32,10,13,2,'2014-11-02 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (131,2014,9,131,'Nov 2','Sun',2,'4:25 pm',4,13,43,21,2,'2014-11-02 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (132,2014,9,132,'Nov 2','Sun',2,'4:25 pm',29,15,30,24,2,'2014-11-02 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (133,2014,9,133,'Nov 2','Sun',3,'8:30 pm',6,8,43,23,2,'2014-11-02 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (134,2014,9,134,'Nov 3','Mon',5,'8:30 pm',20,12,24,40,2,'2014-11-03 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (135,2014,10,135,'Nov 6','Thu',4,'8:25 pm',5,7,3,24,2,'2014-11-06 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (136,2014,10,136,'Nov 9','Sun',2,'1:00 pm',3,16,13,17,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (137,2014,10,137,'Nov 9','Sun',2,'1:00 pm',22,1,20,16,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (138,2014,10,138,'Nov 9','Sun',1,'1:00 pm',27,30,24,27,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (139,2014,10,139,'Nov 9','Sun',2,'1:00 pm',2,6,20,13,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (140,2014,10,140,'Nov 9','Sun',1,'1:00 pm',28,26,17,27,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (141,2014,10,141,'Nov 9','Sun',1,'1:00 pm',11,19,17,31,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (142,2014,10,142,'Nov 9','Sun',2,'1:00 pm',8,9,21,7,2,'2014-11-09 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (143,2014,10,143,'Nov 9','Sun',2,'4:05 pm',15,13,17,41,2,'2014-11-09 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (144,2014,10,144,'Nov 9','Sun',1,'4:25 pm',31,32,31,14,2,'2014-11-09 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (145,2014,10,145,'Nov 9','Sun',1,'4:25 pm',29,20,38,17,2,'2014-11-09 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (146,2014,10,146,'Nov 9','Sun',3,'8:30 pm',24,23,55,14,2,'2014-11-09 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (147,2014,10,147,'Nov 10','Mon',5,'8:30 pm',17,25,45,21,2,'2014-11-10 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (148,2014,11,148,'Nov 13','Thu',4,'8:25 pm',1,3,22,9,2,'2014-11-13 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (149,2014,11,149,'Nov 16','Sun',1,'1:00 pm',23,21,21,13,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (150,2014,11,150,'Nov 16','Sun',2,'1:00 pm',7,10,7,23,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (151,2014,11,151,'Nov 16','Sun',1,'1:00 pm',24,17,53,20,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (152,2014,11,152,'Nov 16','Sun',1,'1:00 pm',16,29,24,20,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (153,2014,11,153,'Nov 16','Sun',2,'1:00 pm',32,13,22,7,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (154,2014,11,154,'Nov 16','Sun',2,'1:00 pm',27,5,10,27,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (155,2014,11,155,'Nov 16','Sun',1,'1:00 pm',20,30,10,16,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (156,2014,11,156,'Nov 16','Sun',1,'1:00 pm',18,28,7,27,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (157,2014,11,157,'Nov 16','Sun',1,'1:00 pm',25,26,17,19,2,'2014-11-16 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (158,2014,11,158,'Nov 16','Sun',2,'4:05 pm',14,15,13,6,2,'2014-11-16 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (159,2014,11,159,'Nov 16','Sun',1,'4:25 pm',31,22,14,6,2,'2014-11-16 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (160,2014,11,160,'Nov 16','Sun',3,'8:30 pm',12,4,20,42,2,'2014-11-16 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (161,2014,11,161,'Nov 17','Mon',5,'8:30 pm',9,6,24,27,2,'2014-11-17 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (162,2014,12,162,'Nov 20','Thu',4,'8:25 pm',15,16,24,20,2,'2014-11-20 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (163,2014,12,163,'Nov 23','Sun',2,'1:00 pm',26,7,24,26,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (164,2014,12,164,'Nov 23','Sun',2,'1:00 pm',3,2,38,3,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (165,2014,12,165,'Nov 23','Sun',1,'1:00 pm',23,28,21,13,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (166,2014,12,166,'Nov 23','Sun',2,'1:00 pm',12,11,23,3,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (167,2014,12,167,'Nov 23','Sun',1,'1:00 pm',21,24,21,24,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (168,2014,12,168,'Nov 23','Sun',1,'1:00 pm',4,22,34,9,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (169,2014,12,169,'Nov 23','Sun',2,'1:00 pm',17,9,43,24,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (170,2014,12,170,'Nov 23','Sun',2,'1:00 pm',10,5,13,22,2,'2014-11-23 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (171,2014,12,171,'Nov 23','Sun',1,'4:05 pm',14,32,27,24,2,'2014-11-23 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (172,2014,12,172,'Nov 23','Sun',1,'4:05 pm',29,31,19,3,2,'2014-11-23 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (173,2014,12,173,'Nov 23','Sun',2,'4:25 pm',13,1,39,36,2,'2014-11-23 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (174,2014,12,174,'Nov 23','Sun',2,'4:25 pm',30,18,17,13,2,'2014-11-23 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (175,2014,12,175,'Nov 23','Sun',3,'8:30 pm',20,19,28,31,2,'2014-11-23 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (176,2014,12,176,'Nov 24','Mon',5,'8:30 pm',27,8,27,34,2,'2014-11-24 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (177,2014,13,177,'Nov 27','Thu',2,'12:30 pm',22,23,34,17,2,'2014-11-27 12:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (178,2014,13,178,'Nov 27','Thu',1,'4:30 pm',19,17,10,33,2,'2014-11-27 16:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (179,2014,13,179,'Nov 27','Thu',3,'8:30 pm',30,29,3,19,2,'2014-11-27 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (180,2014,13,180,'Nov 30','Sun',2,'1:00 pm',3,7,26,10,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (181,2014,13,181,'Nov 30','Sun',1,'1:00 pm',12,18,49,27,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (182,2014,13,182,'Nov 30','Sun',2,'1:00 pm',32,15,52,0,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (183,2014,13,183,'Nov 30','Sun',1,'1:00 pm',21,25,31,13,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (184,2014,13,184,'Nov 30','Sun',1,'1:00 pm',6,27,32,35,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (185,2014,13,185,'Nov 30','Sun',2,'1:00 pm',28,5,13,14,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (186,2014,13,186,'Nov 30','Sun',1,'1:00 pm',11,20,25,24,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (187,2014,13,187,'Nov 30','Sun',2,'1:00 pm',8,14,33,34,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (188,2014,13,188,'Nov 30','Sun',2,'1:00 pm',10,9,45,21,2,'2014-11-30 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (189,2014,13,189,'Nov 30','Sun',1,'4:05 pm',26,31,29,18,2,'2014-11-30 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (190,2014,13,190,'Nov 30','Sun',2,'4:25 pm',24,4,26,21,2,'2014-11-30 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (191,2014,13,191,'Nov 30','Sun',3,'8:30 pm',16,13,16,29,2,'2014-11-30 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (192,2014,13,192,'Dec 1','Mon',5,'8:30 pm',2,1,13,16,2,'2014-12-01 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (193,2014,14,193,'Dec 4','Thu',4,'8:25 pm',23,19,28,41,2,'2014-12-04 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (194,2014,14,194,'Dec 7','Sun',2,'1:00 pm',5,6,21,42,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (195,2014,14,195,'Dec 7','Sun',2,'1:00 pm',7,12,24,25,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (196,2014,14,196,'Dec 7','Sun',1,'1:00 pm',22,28,34,17,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (197,2014,14,197,'Dec 7','Sun',1,'1:00 pm',9,20,7,36,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (198,2014,14,198,'Dec 7','Sun',2,'1:00 pm',1,8,13,28,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (199,2014,14,199,'Dec 7','Sun',2,'1:00 pm',21,2,30,24,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (200,2014,14,200,'Dec 7','Sun',1,'1:00 pm',27,25,10,41,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (201,2014,14,201,'Dec 7','Sun',1,'1:00 pm',18,32,0,24,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (202,2014,14,202,'Dec 7','Sun',2,'1:00 pm',11,10,13,27,2,'2014-12-07 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (203,2014,14,203,'Dec 7','Sun',2,'4:05 pm',13,3,24,17,2,'2014-12-07 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (204,2014,14,204,'Dec 7','Sun',2,'4:05 pm',31,16,17,14,2,'2014-12-07 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (205,2014,14,205,'Dec 7','Sun',1,'4:25 pm',15,30,24,13,2,'2014-12-07 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (206,2014,14,206,'Dec 7','Sun',1,'4:25 pm',17,29,14,24,2,'2014-12-07 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (207,2014,14,207,'Dec 7','Sun',3,'8:30 pm',14,4,14,23,2,'2014-12-07 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (208,2014,14,208,'Dec 8','Mon',5,'8:30 pm',24,26,43,37,2,'2014-12-08 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (209,2014,15,209,'Dec 11','Thu',4,'8:25 pm',32,31,6,12,2,'2014-12-11 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (210,2014,15,210,'Dec 14','Sun',2,'1:00 pm',26,6,20,27,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (211,2014,15,211,'Dec 14','Sun',1,'1:00 pm',3,24,21,13,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (212,2014,15,212,'Dec 14','Sun',2,'1:00 pm',7,5,0,30,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (213,2014,15,213,'Dec 14','Sun',1,'1:00 pm',22,21,16,14,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (214,2014,15,214,'Dec 14','Sun',2,'1:00 pm',12,10,17,10,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (215,2014,15,215,'Dec 14','Sun',2,'1:00 pm',16,15,31,13,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (216,2014,15,216,'Dec 14','Sun',2,'1:00 pm',4,1,41,13,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (217,2014,15,217,'Dec 14','Sun',1,'1:00 pm',20,18,24,13,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (218,2014,15,218,'Dec 14','Sun',1,'1:00 pm',25,28,19,17,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (219,2014,15,219,'Dec 14','Sun',2,'1:00 pm',8,11,20,12,2,'2014-12-14 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (220,2014,15,220,'Dec 14','Sun',2,'4:05 pm',9,2,11,16,2,'2014-12-14 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (221,2014,15,221,'Dec 14','Sun',2,'4:05 pm',14,13,10,22,2,'2014-12-14 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (222,2014,15,222,'Dec 14','Sun',1,'4:25 pm',29,30,17,7,2,'2014-12-14 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (223,2014,15,223,'Dec 14','Sun',3,'8:30 pm',17,19,27,38,2,'2014-12-14 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (224,2014,15,224,'Dec 15','Mon',5,'8:30 pm',23,27,15,31,2,'2014-12-15 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (225,2014,16,225,'Dec 18','Thu',4,'8:25 pm',11,9,21,13,2,'2014-12-18 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (226,2014,16,226,'Dec 20','Sat',2,'4:30 pm',30,14,35,38,2,'2014-12-20 16:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (227,2014,16,227,'Dec 20','Sat',2,'4:30 pm',18,17,27,24,2,'2014-12-20 16:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (228,2014,16,228,'Dec 21','Sun',1,'1:00 pm',23,22,14,20,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (229,2014,16,229,'Dec 21','Sun',1,'1:00 pm',1,21,37,35,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (230,2014,16,230,'Dec 21','Sun',1,'1:00 pm',27,26,14,30,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (231,2014,16,231,'Dec 21','Sun',2,'1:00 pm',2,4,16,17,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (232,2014,16,232,'Dec 21','Sun',2,'1:00 pm',6,16,20,12,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (233,2014,16,233,'Dec 21','Sun',1,'1:00 pm',28,24,3,20,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (234,2014,16,234,'Dec 21','Sun',2,'1:00 pm',25,7,17,13,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (235,2014,16,235,'Dec 21','Sun',2,'1:00 pm',10,8,25,13,2,'2014-12-21 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (236,2014,16,236,'Dec 21','Sun',1,'4:05 pm',32,20,27,37,2,'2014-12-21 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (237,2014,16,237,'Dec 21','Sun',2,'4:25 pm',19,12,42,7,2,'2014-12-21 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (238,2014,16,238,'Dec 21','Sun',2,'4:25 pm',15,3,26,24,2,'2014-12-21 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (239,2014,16,239,'Dec 21','Sun',3,'8:30 pm',31,29,6,35,2,'2014-12-21 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (240,2014,16,240,'Dec 22','Mon',5,'8:30 pm',5,13,37,28,2,'2014-12-22 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (241,2014,17,241,'Dec 28','Sun',1,'1:00 pm',26,25,3,34,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (242,2014,17,242,'Dec 28','Sun',1,'1:00 pm',24,22,30,20,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (243,2014,17,243,'Dec 28','Sun',2,'1:00 pm',9,12,10,27,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (244,2014,17,244,'Dec 28','Sun',2,'1:00 pm',16,14,19,7,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (245,2014,17,245,'Dec 28','Sun',2,'1:00 pm',1,2,24,37,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (246,2014,17,246,'Dec 28','Sun',1,'1:00 pm',21,23,13,9,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (247,2014,17,247,'Dec 28','Sun',2,'1:00 pm',4,3,9,17,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (248,2014,17,248,'Dec 28','Sun',1,'1:00 pm',20,17,26,34,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (249,2014,17,249,'Dec 28','Sun',2,'1:00 pm',6,5,27,17,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (250,2014,17,250,'Dec 28','Sun',1,'1:00 pm',28,27,20,23,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (251,2014,17,251,'Dec 28','Sun',1,'1:00 pm',18,19,17,44,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (252,2014,17,252,'Dec 28','Sun',2,'1:00 pm',8,7,20,10,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (253,2014,17,253,'Dec 28','Sun',2,'1:00 pm',10,11,23,17,2,'2014-12-28 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (254,2014,17,254,'Dec 28','Sun',2,'4:25 pm',13,15,47,14,2,'2014-12-28 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (255,2014,17,255,'Dec 28','Sun',1,'4:25 pm',30,31,20,17,2,'2014-12-28 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (256,2014,17,256,'Dec 28','Sun',1,'4:25 pm',29,32,20,6,2,'2014-12-28 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (513,2015,1,1,'Sep 10','Thu',0,'8:30 PM',4,6,0,0,2,'2015-09-10 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (514,2015,1,2,'Sep 13','Sun',0,'1:00 PM',23,24,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (515,2015,1,3,'Sep 13','Sun',0,'1:00 PM',10,16,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (516,2015,1,4,'Sep 13','Sun',0,'1:00 PM',2,7,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (517,2015,1,5,'Sep 13','Sun',0,'1:00 PM',3,12,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (518,2015,1,6,'Sep 13','Sun',0,'1:00 PM',18,1,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (519,2015,1,7,'Sep 13','Sun',0,'1:00 PM',11,25,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (520,2015,1,8,'Sep 13','Sun',0,'1:00 PM',32,29,0,0,2,'2015-09-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (521,2015,1,9,'Sep 13','Sun',0,'4:05 PM',31,27,0,0,2,'2015-09-13 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (522,2015,1,10,'Sep 13','Sun',0,'4:05 PM',14,22,0,0,2,'2015-09-13 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (523,2015,1,11,'Sep 13','Sun',0,'4:25 PM',28,9,0,0,2,'2015-09-13 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (524,2015,1,12,'Sep 13','Sun',0,'4:25 PM',15,5,0,0,2,'2015-09-13 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (525,2015,1,13,'Sep 13','Sun',0,'4:25 PM',13,8,0,0,2,'2015-09-13 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (526,2015,1,14,'Sep 13','Sun',0,'8:30 PM',19,20,0,0,2,'2015-09-13 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (527,2015,1,15,'Sep 14','Mon',0,'7:10 PM',26,17,0,0,2,'2015-09-14 19:10:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (528,2015,1,16,'Sep 14','Mon',0,'10:20 PM',30,21,0,0,2,'2015-09-14 22:20:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (529,2015,2,17,'Sep 17','Thu',0,'8:25 PM',16,13,0,0,2,'2015-09-17 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (530,2015,2,18,'Sep 20','Sun',0,'1:00 PM',25,10,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (531,2015,2,19,'Sep 20','Sun',0,'1:00 PM',6,30,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (532,2015,2,20,'Sep 20','Sun',0,'1:00 PM',27,28,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (533,2015,2,21,'Sep 20','Sun',0,'1:00 PM',21,22,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (534,2015,2,22,'Sep 20','Sun',0,'1:00 PM',23,31,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (535,2015,2,23,'Sep 20','Sun',0,'1:00 PM',3,4,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (536,2015,2,24,'Sep 20','Sun',0,'1:00 PM',5,14,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (537,2015,2,25,'Sep 20','Sun',0,'1:00 PM',7,9,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (538,2015,2,26,'Sep 20','Sun',0,'1:00 PM',20,26,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (539,2015,2,27,'Sep 20','Sun',0,'1:00 PM',18,32,0,0,2,'2015-09-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (540,2015,2,28,'Sep 20','Sun',0,'4:05 PM',11,1,0,0,2,'2015-09-20 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (541,2015,2,29,'Sep 20','Sun',0,'4:05 PM',15,8,0,0,2,'2015-09-20 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (542,2015,2,30,'Sep 20','Sun',0,'4:25 PM',17,19,0,0,2,'2015-09-20 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (543,2015,2,31,'Sep 20','Sun',0,'8:30 PM',24,29,0,0,2,'2015-09-20 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (544,2015,2,32,'Sep 21','Mon',0,'8:30 PM',12,2,0,0,2,'2015-09-21 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (545,2015,3,33,'Sep 24','Thu',0,'8:25 PM',20,18,0,0,2,'2015-09-24 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (546,2015,3,34,'Sep 27','Sun',0,'1:00 PM',19,26,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (547,2015,3,35,'Sep 27','Sun',0,'1:00 PM',9,12,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (548,2015,3,36,'Sep 27','Sun',0,'1:00 PM',7,15,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (549,2015,3,37,'Sep 27','Sun',0,'1:00 PM',8,5,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (550,2015,3,38,'Sep 27','Sun',0,'1:00 PM',4,11,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (551,2015,3,39,'Sep 27','Sun',0,'1:00 PM',25,27,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (552,2015,3,40,'Sep 27','Sun',0,'1:00 PM',2,17,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (553,2015,3,41,'Sep 27','Sun',0,'1:00 PM',10,28,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (554,2015,3,42,'Sep 27','Sun',0,'1:00 PM',21,14,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (555,2015,3,43,'Sep 27','Sun',0,'1:00 PM',32,6,0,0,2,'2015-09-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (556,2015,3,44,'Sep 27','Sun',0,'4:05 PM',31,30,0,0,2,'2015-09-27 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (557,2015,3,45,'Sep 27','Sun',0,'4:25 PM',1,3,0,0,2,'2015-09-27 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (558,2015,3,46,'Sep 27','Sun',0,'4:25 PM',29,23,0,0,2,'2015-09-27 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (559,2015,3,47,'Sep 27','Sun',0,'8:30 PM',22,13,0,0,2,'2015-09-27 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (560,2015,3,48,'Sep 28','Mon',0,'8:30 PM',24,16,0,0,2,'2015-09-28 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (561,2015,4,49,'Oct 1','Thu',0,'8:25 PM',6,8,0,0,2,'2015-10-01 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (562,2015,4,50,'Oct 4','Sun',0,'9:30 AM',1,2,0,0,2,'2015-10-04 09:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (563,2015,4,51,'Oct 4','Sun',0,'1:00 PM',12,11,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (564,2015,4,52,'Oct 4','Sun',0,'1:00 PM',3,20,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (565,2015,4,53,'Oct 4','Sun',0,'1:00 PM',28,25,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (566,2015,4,54,'Oct 4','Sun',0,'1:00 PM',18,17,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (567,2015,4,55,'Oct 4','Sun',0,'1:00 PM',23,15,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (568,2015,4,56,'Oct 4','Sun',0,'1:00 PM',26,10,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (569,2015,4,57,'Oct 4','Sun',0,'1:00 PM',5,16,0,0,2,'2015-10-04 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (570,2015,4,58,'Oct 4','Sun',0,'4:05 PM',14,7,0,0,2,'2015-10-04 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (571,2015,4,59,'Oct 4','Sun',0,'4:25 PM',30,24,0,0,2,'2015-10-04 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (572,2015,4,60,'Oct 4','Sun',0,'4:25 PM',31,32,0,0,2,'2015-10-04 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (573,2015,4,61,'Oct 4','Sun',0,'4:25 PM',13,21,0,0,2,'2015-10-04 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (574,2015,4,62,'Oct 4','Sun',0,'8:30 PM',27,19,0,0,2,'2015-10-04 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (575,2015,4,63,'Oct 5','Mon',0,'8:30 PM',29,22,0,0,2,'2015-10-05 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (576,2015,5,64,'Oct 8','Thu',0,'8:25 PM',10,12,0,0,2,'2015-10-08 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (577,2015,5,65,'Oct 11','Sun',0,'1:00 PM',16,23,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (578,2015,5,66,'Oct 11','Sun',0,'1:00 PM',5,29,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (579,2015,5,67,'Oct 11','Sun',0,'1:00 PM',26,18,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (580,2015,5,68,'Oct 11','Sun',0,'1:00 PM',28,11,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (581,2015,5,69,'Oct 11','Sun',0,'1:00 PM',17,27,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (582,2015,5,70,'Oct 11','Sun',0,'1:00 PM',8,7,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (583,2015,5,71,'Oct 11','Sun',0,'1:00 PM',24,32,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (584,2015,5,72,'Oct 11','Sun',0,'1:00 PM',9,3,0,0,2,'2015-10-11 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (585,2015,5,73,'Oct 11','Sun',0,'4:05 PM',22,31,0,0,2,'2015-10-11 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (586,2015,5,74,'Oct 11','Sun',0,'4:25 PM',19,4,0,0,2,'2015-10-11 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (587,2015,5,75,'Oct 11','Sun',0,'4:25 PM',15,13,0,0,2,'2015-10-11 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (588,2015,5,76,'Oct 11','Sun',0,'8:30 PM',20,30,0,0,2,'2015-10-11 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (589,2015,5,77,'Oct 12','Mon',0,'8:30 PM',14,6,0,0,2,'2015-10-12 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (590,2015,6,78,'Oct 15','Thu',0,'8:25 PM',27,26,0,0,2,'2015-10-15 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (591,2015,6,79,'Oct 18','Sun',0,'1:00 PM',2,18,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (592,2015,6,80,'Oct 18','Sun',0,'1:00 PM',6,31,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (593,2015,6,81,'Oct 18','Sun',0,'1:00 PM',21,16,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (594,2015,6,82,'Oct 18','Sun',0,'1:00 PM',3,5,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (595,2015,6,83,'Oct 18','Sun',0,'1:00 PM',22,23,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (596,2015,6,84,'Oct 18','Sun',0,'1:00 PM',7,13,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (597,2015,6,85,'Oct 18','Sun',0,'1:00 PM',11,10,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (598,2015,6,86,'Oct 18','Sun',0,'1:00 PM',9,1,0,0,2,'2015-10-18 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (599,2015,6,87,'Oct 18','Sun',0,'4:05 PM',29,25,0,0,2,'2015-10-18 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (600,2015,6,88,'Oct 18','Sun',0,'4:25 PM',24,14,0,0,2,'2015-10-18 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (601,2015,6,89,'Oct 18','Sun',0,'4:25 PM',30,8,0,0,2,'2015-10-18 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (602,2015,6,90,'Oct 18','Sun',0,'8:30 PM',12,4,0,0,2,'2015-10-18 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (603,2015,6,91,'Oct 19','Mon',0,'8:30 PM',17,20,0,0,2,'2015-10-19 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (604,2015,7,92,'Oct 22','Thu',0,'8:25 PM',30,29,0,0,2,'2015-10-22 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (605,2015,7,93,'Oct 25','Sun',0,'9:30 AM',11,3,0,0,2,'2015-10-25 09:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (606,2015,7,94,'Oct 25','Sun',0,'1:00 PM',18,28,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (607,2015,7,95,'Oct 25','Sun',0,'1:00 PM',9,26,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (608,2015,7,96,'Oct 25','Sun',0,'1:00 PM',12,27,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (609,2015,7,97,'Oct 25','Sun',0,'1:00 PM',22,21,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (610,2015,7,98,'Oct 25','Sun',0,'1:00 PM',16,6,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (611,2015,7,99,'Oct 25','Sun',0,'1:00 PM',32,7,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (612,2015,7,100,'Oct 25','Sun',0,'1:00 PM',1,10,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (613,2015,7,101,'Oct 25','Sun',0,'1:00 PM',4,2,0,0,2,'2015-10-25 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (614,2015,7,102,'Oct 25','Sun',0,'4:05 PM',14,15,0,0,2,'2015-10-25 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (615,2015,7,103,'Oct 25','Sun',0,'4:25 PM',20,19,0,0,2,'2015-10-25 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (616,2015,7,104,'Oct 25','Sun',0,'8:30 PM',25,17,0,0,2,'2015-10-25 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (617,2015,7,105,'Oct 26','Mon',0,'8:30 PM',31,8,0,0,2,'2015-10-26 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (618,2015,8,106,'Oct 29','Thu',0,'8:25 PM',4,1,0,0,2,'2015-10-29 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (619,2015,8,107,'Nov 1','Sun',0,'9:30 AM',16,22,0,0,2,'2015-11-01 09:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (620,2015,8,108,'Nov 1','Sun',0,'1:00 PM',26,28,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (621,2015,8,109,'Nov 1','Sun',0,'1:00 PM',7,31,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (622,2015,8,110,'Nov 1','Sun',0,'1:00 PM',32,30,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (623,2015,8,111,'Nov 1','Sun',0,'1:00 PM',27,20,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (624,2015,8,112,'Nov 1','Sun',0,'1:00 PM',23,21,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (625,2015,8,113,'Nov 1','Sun',0,'1:00 PM',8,14,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (626,2015,8,114,'Nov 1','Sun',0,'1:00 PM',6,5,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (627,2015,8,115,'Nov 1','Sun',0,'1:00 PM',10,9,0,0,2,'2015-11-01 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (628,2015,8,116,'Nov 1','Sun',0,'4:05 PM',15,2,0,0,2,'2015-11-01 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (629,2015,8,117,'Nov 1','Sun',0,'4:25 PM',19,29,0,0,2,'2015-11-01 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (630,2015,8,118,'Nov 1','Sun',0,'8:30 PM',13,24,0,0,2,'2015-11-01 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (631,2015,8,119,'Nov 02','Mon',0,'8:30 PM',25,12,0,0,2,'2015-11-02 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (632,2015,9,120,'Nov 5','Thu',0,'8:25 PM',5,7,0,0,2,'2015-11-05 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (633,2015,9,121,'Nov 8','Sun',0,'1:00 PM',25,24,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (634,2015,9,122,'Nov 8','Sun',0,'1:00 PM',4,18,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (635,2015,9,123,'Nov 8','Sun',0,'1:00 PM',27,9,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (636,2015,9,124,'Nov 8','Sun',0,'1:00 PM',3,1,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (637,2015,9,125,'Nov 8','Sun',0,'1:00 PM',21,32,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (638,2015,9,126,'Nov 8','Sun',0,'1:00 PM',2,11,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (639,2015,9,127,'Nov 8','Sun',0,'1:00 PM',6,15,0,0,2,'2015-11-08 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (640,2015,9,128,'Nov 8','Sun',0,'4:05 PM',28,20,0,0,2,'2015-11-08 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (641,2015,9,129,'Nov 8','Sun',0,'4:05 PM',30,26,0,0,2,'2015-11-08 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (642,2015,9,130,'Nov 8','Sun',0,'4:25 PM',12,13,0,0,2,'2015-11-08 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (643,2015,9,131,'Nov 8','Sun',0,'8:30 PM',19,17,0,0,2,'2015-11-08 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (644,2015,9,132,'Nov 9','Mon',0,'8:30 PM',14,23,0,0,2,'2015-11-09 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (645,2015,10,133,'Nov 12','Thu',0,'8:25 PM',2,3,0,0,2,'2015-11-12 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (646,2015,10,134,'Nov 15','Sun',0,'1:00 PM',24,22,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (647,2015,10,135,'Nov 15','Sun',0,'1:00 PM',28,19,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (648,2015,10,136,'Nov 15','Sun',0,'1:00 PM',9,25,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (649,2015,10,137,'Nov 15','Sun',0,'1:00 PM',32,23,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (650,2015,10,138,'Nov 15','Sun',0,'1:00 PM',18,27,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (651,2015,10,139,'Nov 15','Sun',0,'1:00 PM',17,1,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (652,2015,10,140,'Nov 15','Sun',0,'1:00 PM',6,7,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (653,2015,10,141,'Nov 15','Sun',0,'1:00 PM',8,11,0,0,2,'2015-11-15 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (654,2015,10,142,'Nov 15','Sun',0,'4:05 PM',15,21,0,0,2,'2015-11-15 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (655,2015,10,143,'Nov 15','Sun',0,'4:25 PM',20,4,0,0,2,'2015-11-15 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (656,2015,10,144,'Nov 15','Sun',0,'4:25 PM',13,16,0,0,2,'2015-11-15 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (657,2015,10,145,'Nov 15','Sun',0,'8:30 PM',29,31,0,0,2,'2015-11-15 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (658,2015,10,146,'Nov 16','Mon',0,'8:30 PM',5,10,0,0,2,'2015-11-16 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (659,2015,11,147,'Nov 19','Thu',0,'8:25 PM',11,9,0,0,2,'2015-11-19 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (660,2015,11,148,'Nov 22','Sun',0,'1:00 PM',22,15,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (661,2015,11,149,'Nov 22','Sun',0,'1:00 PM',26,12,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (662,2015,11,150,'Nov 22','Sun',0,'1:00 PM',10,2,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (663,2015,11,151,'Nov 22','Sun',0,'1:00 PM',17,28,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (664,2015,11,152,'Nov 22','Sun',0,'1:00 PM',23,13,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (665,2015,11,153,'Nov 22','Sun',0,'1:00 PM',21,24,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (666,2015,11,154,'Nov 22','Sun',0,'1:00 PM',8,32,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (667,2015,11,155,'Nov 22','Sun',0,'1:00 PM',1,19,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (668,2015,11,156,'Nov 22','Sun',0,'1:00 PM',25,18,0,0,2,'2015-11-22 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (669,2015,11,157,'Nov 22','Sun',0,'4:05 PM',31,5,0,0,2,'2015-11-22 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (670,2015,11,158,'Nov 22','Sun',0,'4:25 PM',29,30,0,0,2,'2015-11-22 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (671,2015,11,159,'Nov 22','Sun',0,'8:30 PM',14,16,0,0,2,'2015-11-22 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (672,2015,11,160,'Nov 23','Mon',0,'8:30 PM',4,3,0,0,2,'2015-11-23 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (673,2015,12,161,'Nov 26','Thu',0,'12:30 PM ',22,17,0,0,2,'2015-11-26 12:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (674,2015,12,162,'Nov 26','Thu',0,'4:30 PM',19,25,0,0,2,'2015-11-26 16:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (675,2015,12,163,'Nov 26','Thu',0,'8:30 PM',24,23,0,0,2,'2015-11-26 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (676,2015,12,164,'Nov 29','Sun',0,'1:00 PM',10,27,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (677,2015,12,165,'Nov 29','Sun',0,'1:00 PM',5,32,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (678,2015,12,166,'Nov 29','Sun',0,'1:00 PM',26,21,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (679,2015,12,167,'Nov 29','Sun',0,'1:00 PM',18,20,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (680,2015,12,168,'Nov 29','Sun',0,'1:00 PM',12,28,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (681,2015,12,169,'Nov 29','Sun',0,'1:00 PM',16,3,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (682,2015,12,170,'Nov 29','Sun',0,'1:00 PM',9,15,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (683,2015,12,171,'Nov 29','Sun',0,'1:00 PM',11,14,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (684,2015,12,172,'Nov 29','Sun',0,'1:00 PM',2,1,0,0,2,'2015-11-29 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (685,2015,12,173,'Nov 29','Sun',0,'4:05 PM',30,31,0,0,2,'2015-11-29 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (686,2015,12,174,'Nov 29','Sun',0,'4:25 PM',29,6,0,0,2,'2015-11-29 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (687,2015,12,175,'Nov 29','Sun',0,'8:30 PM',13,4,0,0,2,'2015-11-29 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (688,2015,12,176,'Nov 30','Mon',0,'8:30 PM',7,8,0,0,2,'2015-11-30 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (689,2015,13,177,'Dec 03','Thu',0,'8:25 PM',22,24,0,0,2,'2015-12-03 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (690,2015,13,178,'Dec 6','Sun',0,'1:00 PM',20,2,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (691,2015,13,179,'Dec 6','Sun',0,'1:00 PM',32,31,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (692,2015,13,180,'Dec 6','Sun',0,'1:00 PM',28,26,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (693,2015,13,181,'Dec 6','Sun',0,'1:00 PM',27,25,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (694,2015,13,182,'Dec 6','Sun',0,'1:00 PM',21,29,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (695,2015,13,183,'Dec 6','Sun',0,'1:00 PM',3,10,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (696,2015,13,184,'Dec 6','Sun',0,'1:00 PM',1,8,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (697,2015,13,185,'Dec 6','Sun',0,'1:00 PM',7,5,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (698,2015,13,186,'Dec 6','Sun',0,'1:00 PM',9,11,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (699,2015,13,187,'Dec 6','Sun',0,'1:00 PM',23,30,0,0,2,'2015-12-06 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (700,2015,13,188,'Dec 6','Sun',0,'4:05 PM',14,13,0,0,2,'2015-12-06 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (701,2015,13,189,'Dec 6','Sun',0,'4:05 PM',15,16,0,0,2,'2015-12-06 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (702,2015,13,190,'Dec 6','Sun',0,'4:25 PM',4,17,0,0,2,'2015-12-06 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (703,2015,13,191,'Dec 6','Sun',0,'8:30 PM',6,12,0,0,2,'2015-12-06 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (704,2015,13,192,'Dec 7','Mon',0,'8:30 PM',18,19,0,0,2,'2015-12-07 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (705,2015,14,193,'Dec 10','Thu',0,'8:25 PM',31,21,0,0,2,'2015-12-10 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (706,2015,14,194,'Dec 13','Sun',0,'1:00 PM',17,3,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (707,2015,14,195,'Dec 13','Sun',0,'1:00 PM',7,30,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (708,2015,14,196,'Dec 13','Sun',0,'1:00 PM',32,22,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (709,2015,14,197,'Dec 13','Sun',0,'1:00 PM',28,27,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (710,2015,14,198,'Dec 13','Sun',0,'1:00 PM',2,9,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (711,2015,14,199,'Dec 13','Sun',0,'1:00 PM',5,6,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (712,2015,14,200,'Dec 13','Sun',0,'1:00 PM',10,4,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (713,2015,14,201,'Dec 13','Sun',0,'1:00 PM',11,12,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (714,2015,14,202,'Dec 13','Sun',0,'1:00 PM',16,14,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (715,2015,14,203,'Dec 13','Sun',0,'1:00 PM',23,18,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (716,2015,14,204,'Dec 13','Sun',0,'1:00 PM',25,26,0,0,2,'2015-12-13 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (717,2015,14,205,'Dec 13','Sun',0,'4:05 PM',13,15,0,0,2,'2015-12-13 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (718,2015,14,206,'Dec 13','Sun',0,'4:25 PM',24,19,0,0,2,'2015-12-13 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (719,2015,14,207,'Dec 13','Sun',0,'8:30 PM',8,29,0,0,2,'2015-12-13 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (720,2015,14,208,'Dec 14','Mon',0,'8:30 PM',1,20,0,0,2,'2015-12-14 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (721,2015,15,209,'Dec 17','Thu',0,'8:25 PM',32,28,0,0,2,'2015-12-17 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (722,2015,15,210,'Dec 19','Sat',0,'8:25 PM',19,2,0,0,2,'2015-12-19 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (723,2015,15,211,'Dec 20','Sun',0,'1:00 PM',21,23,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (724,2015,15,212,'Dec 20','Sun',0,'1:00 PM',11,26,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (725,2015,15,213,'Dec 20','Sun',0,'1:00 PM',12,10,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (726,2015,15,214,'Dec 20','Sun',0,'1:00 PM',17,31,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (727,2015,15,215,'Dec 20','Sun',0,'1:00 PM',20,25,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (728,2015,15,216,'Dec 20','Sun',0,'1:00 PM',4,9,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (729,2015,15,217,'Dec 20','Sun',0,'1:00 PM',18,3,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (730,2015,15,218,'Dec 20','Sun',0,'1:00 PM',8,16,0,0,2,'2015-12-20 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (731,2015,15,219,'Dec 20','Sun',0,'4:05 PM',29,7,0,0,2,'2015-12-20 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (732,2015,15,220,'Dec 20','Sun',0,'4:05 PM',15,24,0,0,2,'2015-12-20 16:05:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (733,2015,15,221,'Dec 20','Sun',0,'4:25 PM',6,13,0,0,2,'2015-12-20 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (734,2015,15,222,'Dec 20','Sun',0,'4:25 PM',14,1,0,0,2,'2015-12-20 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (735,2015,15,223,'Dec 20','Sun',0,'8:30 PM',30,5,0,0,2,'2015-12-20 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (736,2015,15,224,'Dec 21','Mon',0,'8:30 PM',27,22,0,0,2,'2015-12-21 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (737,2015,16,225,'Dec 24','Thu',0,'8:25 PM',15,14,0,0,2,'2015-12-24 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (738,2015,16,226,'Dec 26','Sat',0,'8:25 PM',17,18,0,0,2,'2015-12-26 20:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (739,2015,16,227,'Dec 27','Sun',0,'1:00 PM',2,4,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (740,2015,16,228,'Dec 27','Sun',0,'1:00 PM',9,10,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (741,2015,16,229,'Dec 27','Sun',0,'1:00 PM',16,7,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (742,2015,16,230,'Dec 27','Sun',0,'1:00 PM',1,12,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (743,2015,16,231,'Dec 27','Sun',0,'1:00 PM',27,11,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (744,2015,16,232,'Dec 27','Sun',0,'1:00 PM',22,30,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (745,2015,16,233,'Dec 27','Sun',0,'1:00 PM',3,19,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (746,2015,16,234,'Dec 27','Sun',0,'1:00 PM',28,23,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (747,2015,16,235,'Dec 27','Sun',0,'1:00 PM',26,25,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (748,2015,16,236,'Dec 27','Sun',0,'1:00 PM',21,20,0,0,2,'2015-12-27 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (749,2015,16,237,'Dec 27','Sun',0,'4:25 PM',29,32,0,0,2,'2015-12-27 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (750,2015,16,238,'Dec 27','Sun',0,'4:25 PM',31,24,0,0,2,'2015-12-27 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (751,2015,16,239,'Dec 27','Sun',0,'8:30 PM',8,6,0,0,2,'2015-12-27 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (752,2015,16,240,'Dec 28','Mon',0,'8:30 PM',13,5,0,0,2,'2015-12-28 20:30:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (753,2015,17,241,'Jan 03','Sun',0,'1:00 PM',3,2,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (754,2015,17,242,'Jan 03','Sun',0,'1:00 PM',1,4,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (755,2015,17,243,'Jan 03','Sun',0,'1:00 PM',25,28,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (756,2015,17,244,'Jan 03','Sun',0,'1:00 PM',26,27,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (757,2015,17,245,'Jan 03','Sun',0,'1:00 PM',5,8,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (758,2015,17,246,'Jan 03','Sun',0,'1:00 PM',7,6,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (759,2015,17,247,'Jan 03','Sun',0,'1:00 PM',10,11,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (760,2015,17,248,'Jan 03','Sun',0,'1:00 PM',12,9,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (761,2015,17,249,'Jan 03','Sun',0,'1:00 PM',16,15,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (762,2015,17,250,'Jan 03','Sun',0,'1:00 PM',19,18,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (763,2015,17,251,'Jan 03','Sun',0,'1:00 PM',20,17,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (764,2015,17,252,'Jan 03','Sun',0,'1:00 PM',23,22,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (765,2015,17,253,'Jan 03','Sun',0,'1:00 PM',24,21,0,0,2,'2016-01-03 13:00:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (766,2015,17,254,'Jan 03','Sun',0,'4:25 PM',13,14,0,0,2,'2016-01-03 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (767,2015,17,255,'Jan 03','Sun',0,'4:25 PM',31,29,0,0,2,'2016-01-03 16:25:00','2015-09-05 16:41:54');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (768,2015,17,256,'Jan 03','Sun',0,'4:25 PM',30,32,0,0,2,'2016-01-03 16:25:00','2015-09-05 16:41:54');
/*!40000 ALTER TABLE `gamestbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametypetbl`
--

DROP TABLE IF EXISTS `gametypetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametypetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gametype` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametypetbl`
--

LOCK TABLES `gametypetbl` WRITE;
/*!40000 ALTER TABLE `gametypetbl` DISABLE KEYS */;
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (1,'Preseason');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (2,'Regular');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (3,'Wildcard');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (4,'Divisional');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (5,'Conference');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (6,'Superbowl');
/*!40000 ALTER TABLE `gametypetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameweekstbl`
--

DROP TABLE IF EXISTS `gameweekstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameweekstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `weekstart` datetime DEFAULT NULL,
  `weekend` datetime DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameweekstbl`
--

LOCK TABLES `gameweekstbl` WRITE;
/*!40000 ALTER TABLE `gameweekstbl` DISABLE KEYS */;
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (257,2014,1,'2014-09-04 00:00:00','2014-09-08 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (258,2014,2,'2014-09-11 00:00:00','2014-09-15 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (259,2014,3,'2014-09-18 00:00:00','2014-09-22 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (260,2014,4,'2014-09-25 00:00:00','2014-09-29 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (261,2014,5,'2014-10-02 00:00:00','2014-10-06 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (262,2014,6,'2014-10-09 00:00:00','2014-10-13 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (263,2014,7,'2014-10-16 00:00:00','2014-10-20 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (264,2014,8,'2014-10-23 00:00:00','2014-10-27 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (265,2014,9,'2014-10-30 00:00:00','2014-11-03 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (266,2014,10,'2014-11-06 00:00:00','2014-11-10 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (267,2014,11,'2014-11-13 00:00:00','2014-11-17 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (268,2014,12,'2014-11-20 00:00:00','2014-11-24 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (269,2014,13,'2014-11-27 00:00:00','2014-12-01 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (270,2014,14,'2014-12-04 00:00:00','2014-12-08 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (271,2014,15,'2014-12-11 00:00:00','2014-12-15 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (272,2014,16,'2014-12-20 00:00:00','2014-12-22 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (273,2014,17,'2014-12-28 00:00:00','2014-12-28 00:00:00','2015-08-10 14:21:55');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (274,2015,1,'2015-09-10 00:00:00','2015-09-14 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (275,2015,2,'2015-09-17 00:00:00','2015-09-21 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (276,2015,3,'2015-09-24 00:00:00','2015-09-28 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (277,2015,4,'2015-10-01 00:00:00','2015-10-05 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (278,2015,5,'2015-10-08 00:00:00','2015-10-12 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (279,2015,6,'2015-10-15 00:00:00','2015-10-19 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (280,2015,7,'2015-10-22 00:00:00','2015-10-26 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (281,2015,8,'2015-10-29 00:00:00','2015-11-02 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (282,2015,9,'2015-11-05 00:00:00','2015-11-09 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (283,2015,10,'2015-11-12 00:00:00','2015-11-16 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (284,2015,11,'2015-11-19 00:00:00','2015-11-23 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (285,2015,12,'2015-11-26 00:00:00','2015-11-30 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (286,2015,13,'2015-12-03 00:00:00','2015-12-07 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (287,2015,14,'2015-12-10 00:00:00','2015-12-14 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (288,2015,15,'2015-12-17 00:00:00','2015-12-21 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (289,2015,16,'2015-12-24 00:00:00','2015-12-28 00:00:00','2015-09-04 14:22:05');
INSERT INTO `gameweekstbl` (`id`, `season`, `week`, `weekstart`, `weekend`, `enterdate`) VALUES (290,2015,17,'2015-01-03 00:00:00','2015-01-07 00:00:00','2015-09-04 14:22:05');
/*!40000 ALTER TABLE `gameweekstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberpickstbl`
--

DROP TABLE IF EXISTS `memberpickstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberpickstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `gamenbr` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberpickstbl`
--

LOCK TABLES `memberpickstbl` WRITE;
/*!40000 ALTER TABLE `memberpickstbl` DISABLE KEYS */;
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (63,2014,2,1,17,6,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (64,2014,2,1,23,31,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (65,2014,2,1,18,3,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (66,2014,2,1,21,9,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (67,2014,2,1,25,22,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (68,2014,2,1,22,4,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (69,2014,2,1,19,26,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (70,2014,2,1,20,27,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (71,2014,2,1,24,18,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (72,2014,2,1,26,29,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (73,2014,2,1,27,32,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (74,2014,2,1,28,13,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (75,2014,2,1,29,24,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (76,2014,2,1,30,10,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (77,2014,2,1,31,30,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (78,2014,2,1,32,17,'2015-09-05 18:10:01');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (79,2014,3,1,33,26,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (80,2014,3,1,37,24,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (81,2014,3,1,34,14,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (82,2014,3,1,39,4,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (83,2014,3,1,36,8,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (84,2014,3,1,42,17,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (85,2014,3,1,35,5,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (86,2014,3,1,38,19,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (87,2014,3,1,41,10,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (88,2014,3,1,40,27,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (89,2014,3,1,43,12,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (90,2014,3,1,44,31,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (91,2014,3,1,45,16,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (92,2014,3,1,46,13,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (93,2014,3,1,47,6,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (94,2014,3,1,48,23,'2015-09-05 18:13:33');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (121,2014,4,1,49,18,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (122,2014,4,1,53,22,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (123,2014,4,1,52,15,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (124,2014,4,1,50,24,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (125,2014,4,1,56,10,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (126,2014,4,1,55,25,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (127,2014,4,1,51,12,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (128,2014,4,1,54,6,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (129,2014,4,1,57,14,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (130,2014,4,1,58,26,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (131,2014,4,1,59,30,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (132,2014,4,1,60,19,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (133,2014,4,1,61,4,'2015-09-05 18:17:51');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (134,2014,5,1,62,24,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (135,2014,5,1,63,19,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (136,2014,5,1,69,17,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (137,2014,5,1,64,22,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (138,2014,5,1,70,23,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (139,2014,5,1,68,26,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (140,2014,5,1,71,6,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (141,2014,5,1,67,27,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (142,2014,5,1,65,9,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (143,2014,5,1,66,12,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (144,2014,5,1,72,31,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (145,2014,5,1,74,16,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (146,2014,5,1,73,14,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (147,2014,5,1,75,4,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (148,2014,5,1,76,29,'2015-09-05 18:20:27');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (149,2014,6,1,77,12,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (150,2014,6,1,86,8,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (151,2014,6,1,84,22,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (152,2014,6,1,82,11,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (153,2014,6,1,78,23,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (154,2014,6,1,83,24,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (155,2014,6,1,85,13,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (156,2014,6,1,80,25,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (157,2014,6,1,79,4,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (158,2014,6,1,81,6,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (159,2014,6,1,87,14,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (160,2014,6,1,88,31,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (161,2014,6,1,89,29,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (162,2014,6,1,90,17,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (163,2014,6,1,91,30,'2015-09-05 18:24:11');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (164,2014,7,1,92,4,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (165,2014,7,1,96,24,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (166,2014,7,1,97,12,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (167,2014,7,1,101,26,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (168,2014,7,1,100,7,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (169,2014,7,1,95,27,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (170,2014,7,1,99,18,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (171,2014,7,1,98,29,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (172,2014,7,1,94,23,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (173,2014,7,1,93,21,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (174,2014,7,1,102,16,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (175,2014,7,1,104,31,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (176,2014,7,1,103,19,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (177,2014,7,1,105,30,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (178,2014,7,1,106,10,'2015-09-05 18:26:45');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (179,2014,8,1,107,14,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (180,2014,8,1,108,22,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (181,2014,8,1,114,21,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (182,2014,8,1,109,8,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (183,2014,8,1,110,10,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (184,2014,8,1,112,4,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (185,2014,8,1,115,29,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (186,2014,8,1,111,16,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (187,2014,8,1,116,1,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (188,2014,8,1,113,3,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (189,2014,8,1,117,17,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (190,2014,8,1,119,12,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (191,2014,8,1,118,7,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (192,2014,8,1,120,24,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (193,2014,8,1,121,19,'2015-09-05 18:28:00');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (194,2014,9,1,122,27,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (195,2014,9,1,123,5,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (196,2014,9,1,124,28,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (197,2014,9,1,125,31,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (198,2014,9,1,127,14,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (199,2014,9,1,129,17,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (200,2014,9,1,126,16,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (201,2014,9,1,128,18,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (202,2014,9,1,130,30,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (203,2014,9,1,131,4,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (204,2014,9,1,132,29,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (205,2014,9,1,133,6,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (206,2014,9,1,134,12,'2015-09-05 18:28:55');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (207,2014,10,1,135,7,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (208,2014,10,1,140,26,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (209,2014,10,1,142,8,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (210,2014,10,1,138,30,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (211,2014,10,1,136,16,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (212,2014,10,1,141,19,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (213,2014,10,1,137,22,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (214,2014,10,1,139,6,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (215,2014,10,1,143,13,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (216,2014,10,1,144,31,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (217,2014,10,1,145,29,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (218,2014,10,1,146,24,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (219,2014,10,1,147,17,'2015-09-05 18:30:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (220,2014,11,1,148,1,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (221,2014,11,1,154,27,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (222,2014,11,1,157,25,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (223,2014,11,1,156,18,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (224,2014,11,1,150,10,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (225,2014,11,1,152,16,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (226,2014,11,1,153,13,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (227,2014,11,1,155,30,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (228,2014,11,1,151,17,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (229,2014,11,1,149,21,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (230,2014,11,1,158,14,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (231,2014,11,1,159,22,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (232,2014,11,1,160,4,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (233,2014,11,1,161,6,'2015-09-05 18:32:03');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (234,2014,12,1,162,16,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (235,2014,12,1,170,10,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (236,2014,12,1,168,4,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (237,2014,12,1,163,26,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (238,2014,12,1,167,24,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (239,2014,12,1,165,23,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (240,2014,12,1,169,17,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (241,2014,12,1,166,12,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (242,2014,12,1,164,3,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (243,2014,12,1,172,29,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (244,2014,12,1,171,14,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (245,2014,12,1,173,13,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (246,2014,12,1,174,30,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (247,2014,12,1,175,19,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (248,2014,12,1,176,8,'2015-09-05 18:32:52');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (249,2014,13,1,177,22,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (250,2014,13,1,178,19,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (251,2014,13,1,179,29,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (252,2014,13,1,181,12,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (253,2014,13,1,185,28,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (254,2014,13,1,186,20,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (255,2014,13,1,180,7,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (256,2014,13,1,188,10,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (257,2014,13,1,183,21,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (258,2014,13,1,184,27,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (259,2014,13,1,187,14,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (260,2014,13,1,182,32,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (261,2014,13,1,189,31,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (262,2014,13,1,190,4,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (263,2014,13,1,191,16,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (264,2014,13,1,192,2,'2015-09-05 18:34:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (281,2014,14,1,193,23,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (282,2014,14,1,197,20,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (283,2014,14,1,200,27,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (284,2014,14,1,194,5,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (285,2014,14,1,198,8,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (286,2014,14,1,196,22,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (287,2014,14,1,202,10,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (288,2014,14,1,195,12,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (289,2014,14,1,199,21,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (290,2014,14,1,201,32,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (291,2014,14,1,204,16,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (292,2014,14,1,203,3,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (293,2014,14,1,206,17,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (294,2014,14,1,205,15,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (295,2014,14,1,207,4,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (296,2014,14,1,208,24,'2015-09-05 18:36:49');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (313,2014,15,1,209,32,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (314,2014,15,1,212,7,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (315,2014,15,1,213,22,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (316,2014,15,1,210,6,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (317,2014,15,1,211,24,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (318,2014,15,1,214,12,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (319,2014,15,1,219,8,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (320,2014,15,1,218,28,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (321,2014,15,1,215,16,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (322,2014,15,1,216,4,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (323,2014,15,1,217,20,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (324,2014,15,1,221,13,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (325,2014,15,1,220,2,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (326,2014,15,1,222,29,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (327,2014,15,1,223,17,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (328,2014,15,1,224,27,'2015-09-05 18:38:18');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (329,2014,16,1,225,11,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (330,2014,16,1,227,17,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (331,2014,16,1,226,14,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (332,2014,16,1,234,7,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (333,2014,16,1,235,8,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (334,2014,16,1,229,1,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (335,2014,16,1,228,22,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (336,2014,16,1,233,24,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (337,2014,16,1,230,27,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (338,2014,16,1,232,16,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (339,2014,16,1,231,4,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (340,2014,16,1,236,32,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (341,2014,16,1,237,12,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (342,2014,16,1,238,15,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (343,2014,16,1,239,29,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (344,2014,16,1,240,13,'2015-09-05 18:39:15');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (345,2014,17,1,251,19,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (346,2014,17,1,249,6,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (347,2014,17,1,242,24,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (348,2014,17,1,252,7,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (349,2014,17,1,246,21,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (350,2014,17,1,253,10,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (351,2014,17,1,241,26,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (352,2014,17,1,243,12,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (353,2014,17,1,250,27,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (354,2014,17,1,244,14,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (355,2014,17,1,245,2,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (356,2014,17,1,248,20,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (357,2014,17,1,247,4,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (358,2014,17,1,255,30,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (359,2014,17,1,254,13,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (360,2014,17,1,256,29,'2015-09-05 18:40:48');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (571,2014,1,1,1,29,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (572,2014,1,1,11,18,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (573,2014,1,1,10,8,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (574,2014,1,1,9,6,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (575,2014,1,1,5,32,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (576,2014,1,1,4,16,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (577,2014,1,1,8,17,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (578,2014,1,1,2,26,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (579,2014,1,1,3,23,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (580,2014,1,1,7,2,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (581,2014,1,1,6,4,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (582,2014,1,1,13,28,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (583,2014,1,1,12,30,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (584,2014,1,1,14,13,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (585,2014,1,1,15,22,'2015-09-05 19:53:06');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (586,2014,1,1,16,31,'2015-09-05 19:53:06');
/*!40000 ALTER TABLE `memberpickstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberstatstbl`
--

DROP TABLE IF EXISTS `memberstatstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberstatstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberstatstbl`
--

LOCK TABLES `memberstatstbl` WRITE;
/*!40000 ALTER TABLE `memberstatstbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberstatstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membertbl`
--

DROP TABLE IF EXISTS `membertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membertbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `membername` varchar(255) DEFAULT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--

LOCK TABLES `membertbl` WRITE;
/*!40000 ALTER TABLE `membertbl` DISABLE KEYS */;
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','airdreamer','Male','snygo_files-001-airstream.jpg','admin','tarrant.cutler@gmail.com','68 Barley Neck Road','Manchester','MA','01944','781-342-0204','tarryc','active','2015-08-27 16:15:45',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (2,'Tammy Jamieson','ducky','Female','','admin','tzjamieson@yahoo.com','36 Pleasant Ridge','Camden','ME','04843','978-239-2650','123','active','2015-08-11 01:50:20',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (6,'Laura Cutler','dolphin','Female','','member','lauraccutler@gmail.com','5 Masconomo St','Manchester','MA','01944','978-526-4676','salmon','active','2015-08-23 15:31:18',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (7,'William Cutler','bigfish','Male','','member','lauraccutler@gmail.com','12 Nichols Rd','Reading','MA','01867','(207) 762-2346','bigfish','active','2015-08-23 15:33:19',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (8,'Bill Shuris','billshuris','Male','','member','','','','','','','billshuris','active','2015-08-23 15:35:18',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (9,'Bonnie Shuris','bonnieshuris','Female','','member','','','','','','','bonnieshuris','active','2015-08-23 15:35:49',NULL);
/*!40000 ALTER TABLE `membertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberweekstatstbl`
--

DROP TABLE IF EXISTS `memberweekstatstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberweekstatstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberweekstatstbl`
--

LOCK TABLES `memberweekstatstbl` WRITE;
/*!40000 ALTER TABLE `memberweekstatstbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberweekstatstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamstatstbl`
--

DROP TABLE IF EXISTS `teamstatstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamstatstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstatstbl`
--

LOCK TABLES `teamstatstbl` WRITE;
/*!40000 ALTER TABLE `teamstatstbl` DISABLE KEYS */;
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1,1,2014,8,8,0,16,0.5000,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2,2,2014,4,12,0,16,0.2500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (3,3,2014,9,7,0,16,0.5630,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (4,4,2014,12,4,0,16,0.7500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (5,5,2014,10,5,1,16,0.6250,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (6,6,2014,11,5,0,16,0.6880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (7,7,2014,7,9,0,16,0.4380,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (8,8,2014,10,6,0,16,0.6250,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (9,9,2014,2,14,0,16,0.1250,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (10,10,2014,9,7,0,16,0.5630,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (11,11,2014,3,13,0,16,0.1880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (12,12,2014,11,5,0,16,0.6880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (13,13,2014,12,4,0,16,0.7500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (14,14,2014,9,7,0,16,0.5630,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (15,17,2014,10,6,0,16,0.6250,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (16,18,2014,4,12,0,16,0.2500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (17,19,2014,12,4,0,16,0.7500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (18,20,2014,6,10,0,16,0.3750,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (19,21,2014,7,9,0,16,0.4380,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (20,22,2014,11,5,0,16,0.6880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (21,23,2014,5,11,0,16,0.3130,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (22,24,2014,12,4,0,16,0.7500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (23,25,2014,7,8,1,16,0.4380,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (24,26,2014,6,10,0,16,0.3750,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (25,27,2014,7,9,0,16,0.4380,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (26,28,2014,2,14,0,16,0.1250,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (27,29,2014,12,4,0,16,0.7500,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (28,30,2014,8,8,0,16,0.5000,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (29,15,2014,3,13,0,16,0.1880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (30,31,2014,11,5,0,16,0.6880,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (31,16,2014,9,7,0,16,0.5630,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (32,32,2014,6,10,0,16,0.3750,'2015-09-05 01:43:30',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (33,1,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (34,2,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (35,3,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (36,4,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (37,5,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (38,6,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (39,7,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (40,8,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (41,9,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (42,10,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (43,11,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (44,12,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (45,13,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (46,14,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (47,15,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (48,16,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (49,17,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (50,18,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (51,19,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (52,20,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (53,21,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (54,22,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (55,23,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (56,24,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (57,25,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (58,26,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (59,27,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (60,28,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (61,29,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (62,30,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (63,31,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (64,32,2015,0,0,0,0,0.0000,'2015-09-05 01:42:55',NULL);
/*!40000 ALTER TABLE `teamstatstbl` ENABLE KEYS */;
UNLOCK TABLES;

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
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstbl`
--

LOCK TABLES `teamstbl` WRITE;
/*!40000 ALTER TABLE `teamstbl` DISABLE KEYS */;
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (1,'Dolphins','Miami','Miami','FL','NFL','AFC','East','mia.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (2,'Jets','New York','East Rutherford','NJ','NFL','AFC','East','nyj.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (3,'Bills','Buffalo','Buffalo','NY','NFL','AFC','East','buf.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (4,'Patriots','New England','Foxborough','MA','NFL','AFC','East','ne.png',4,'http://www.nfl.com/teams/profile?team=NE',0,'2015-08-03 17:18:19',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (5,'Bengals','Cincinnati','Cincinnati','OH','NFL','AFC','North','cin.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (6,'Steelers','Pittsburgh','Pittsburgh','PA','NFL','AFC','North','pit.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (7,'Browns','Cleveland','Cleveland','OH','NFL','AFC','North','cle.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (8,'Ravens','Baltimore','Baltimore','MD','NFL','AFC','North','bal.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (9,'Titans','Tennessee','Nashville','TN','NFL','AFC','South','ten.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (10,'Texans','Houston','Houston','TX','NFL','AFC','South','hou.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (11,'Jaguars','Jacksonville','Jacksonville','FL','NFL','AFC','South','jac.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (12,'Colts','Indianapolis','Indianapolis','IN','NFL','AFC','South','ind.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (13,'Broncos','Denver','Denver','CO','NFL','AFC','West','den.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (14,'Chargers','San Diego','San Diego','CA','NFL','AFC','West','sd.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (15,'Raiders','Oakland','Oakland','CA','NFL','AFC','West','oak.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (16,'Chiefs','Kansas City','Kansas City','MO','NFL','AFC','West','kc.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (17,'Eagles','Philadelphia','Philadelphia','PA','NFL','NFC','East','phi.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (18,'Redskins','Washington','Landover','MD','NFL','NFC','East','was.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (19,'Cowboys','Dallas','Dallas','TX','NFL','NFC','East','dal.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (20,'Giants','New York','East Rutherford','NJ','NFL','NFC','East','nyg.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (21,'Vikings','Minnesota','Minneapolis','MN','NFL','NFC','North','min.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (22,'Lions','Detroit','Detroit','MI','NFL','NFC','North','det.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (23,'Bears','Chicago','Chicago','IL','NFL','NFC','North','chi.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (24,'Packers','Green Bay','Green Bay','WI','NFL','NFC','North','gb.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (25,'Panthers','Carolina','Charlotte','NC','NFL','NFC','South','car.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (26,'Falcons','Atlanta','Atlanta','GA','NFL','NFC','South','atl.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (27,'Saints','New Orleans','New Orleans','LA','NFL','NFC','South','no.png',3,'',0,'2015-09-05 18:21:56',NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (28,'Buccaneers','Tampa Bay','Tampa Bay','FL','NFL','NFC','South','tb.png',4,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (29,'Seahawks','Seattle','Seattle','WA','NFL','NFC','West','sea.png',1,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (30,'49ers','San Francisco','San Francisco','CA','NFL','NFC','West','sf.png',2,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (31,'Cardinals','Arizona','Glendale','AZ','NFL','NFC','West','ari.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (32,'Rams','St. Louis','St. Louis','MO','NFL','NFC','West','stl.png',4,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teamstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamweekstatstbl`
--

DROP TABLE IF EXISTS `teamweekstatstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamweekstatstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1633 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamweekstatstbl`
--

LOCK TABLES `teamweekstatstbl` WRITE;
/*!40000 ALTER TABLE `teamweekstatstbl` DISABLE KEYS */;
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (545,1,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (546,1,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (547,1,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (548,1,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (549,1,5,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (550,1,6,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (551,1,7,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (552,1,8,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (553,1,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (554,1,10,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (555,1,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (556,1,12,2014,6,5,0,11,0.5450,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (557,1,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (558,1,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (559,1,15,2014,7,7,0,14,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (560,1,16,2014,8,7,0,15,0.5330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (561,1,17,2014,8,8,0,16,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (562,2,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (563,2,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (564,2,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (565,2,4,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (566,2,5,2014,1,4,0,5,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (567,2,6,2014,1,5,0,6,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (568,2,7,2014,1,6,0,7,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (569,2,8,2014,1,7,0,8,0.1250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (570,2,9,2014,1,8,0,9,0.1110,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (571,2,10,2014,2,8,0,10,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (572,2,11,2014,2,8,0,10,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (573,2,12,2014,2,9,0,11,0.1820,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (574,2,13,2014,2,10,0,12,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (575,2,14,2014,2,11,0,13,0.1540,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (576,2,15,2014,3,11,0,14,0.2140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (577,2,16,2014,3,12,0,15,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (578,2,17,2014,4,12,0,16,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (579,3,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (580,3,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (581,3,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (582,3,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (583,3,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (584,3,6,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (585,3,7,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (586,3,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (587,3,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (588,3,10,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (589,3,11,2014,5,5,0,10,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (590,3,12,2014,6,5,0,11,0.5450,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (591,3,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (592,3,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (593,3,15,2014,8,6,0,14,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (594,3,16,2014,8,7,0,15,0.5330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (595,3,17,2014,9,7,0,16,0.5630,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (596,4,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (597,4,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (598,4,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (599,4,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (600,4,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (601,4,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (602,4,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (603,4,8,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (604,4,9,2014,7,2,0,9,0.7780,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (605,4,10,2014,7,2,0,9,0.7780,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (606,4,11,2014,8,2,0,10,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (607,4,12,2014,9,2,0,11,0.8180,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (608,4,13,2014,9,3,0,12,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (609,4,14,2014,10,3,0,13,0.7690,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (610,4,15,2014,11,3,0,14,0.7860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (611,4,16,2014,12,3,0,15,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (612,4,17,2014,12,4,0,16,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (613,5,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (614,5,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (615,5,3,2014,3,0,0,3,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (616,5,4,2014,3,0,0,3,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (617,5,5,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (618,5,6,2014,3,1,1,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (619,5,7,2014,3,2,1,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (620,5,8,2014,4,2,1,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (621,5,9,2014,5,2,1,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (622,5,10,2014,5,3,1,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (623,5,11,2014,6,3,1,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (624,5,12,2014,7,3,1,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (625,5,13,2014,8,3,1,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (626,5,14,2014,8,4,1,13,0.6150,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (627,5,15,2014,9,4,1,14,0.6430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (628,5,16,2014,10,4,1,15,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (629,5,17,2014,10,5,1,16,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (630,6,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (631,6,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (632,6,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (633,6,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (634,6,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (635,6,6,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (636,6,7,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (637,6,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (638,6,9,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (639,6,10,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (640,6,11,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (641,6,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (642,6,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (643,6,14,2014,8,5,0,13,0.6150,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (644,6,15,2014,9,5,0,14,0.6430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (645,6,16,2014,10,5,0,15,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (646,6,17,2014,11,5,0,16,0.6880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (647,7,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (648,7,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (649,7,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (650,7,4,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (651,7,5,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (652,7,6,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (653,7,7,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (654,7,8,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (655,7,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (656,7,10,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (657,7,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (658,7,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (659,7,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (660,7,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (661,7,15,2014,7,7,0,14,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (662,7,16,2014,7,8,0,15,0.4670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (663,7,17,2014,7,9,0,16,0.4380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (664,8,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (665,8,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (666,8,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (667,8,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (668,8,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (669,8,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (670,8,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (671,8,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (672,8,9,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (673,8,10,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (674,8,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (675,8,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (676,8,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (677,8,14,2014,8,5,0,13,0.6150,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (678,8,15,2014,9,5,0,14,0.6430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (679,8,16,2014,9,6,0,15,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (680,8,17,2014,10,6,0,16,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (681,9,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (682,9,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (683,9,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (684,9,4,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (685,9,5,2014,1,4,0,5,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (686,9,6,2014,2,4,0,6,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (687,9,7,2014,2,5,0,7,0.2860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (688,9,8,2014,2,6,0,8,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (689,9,9,2014,2,6,0,8,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (690,9,10,2014,2,7,0,9,0.2220,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (691,9,11,2014,2,8,0,10,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (692,9,12,2014,2,9,0,11,0.1820,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (693,9,13,2014,2,10,0,12,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (694,9,14,2014,2,11,0,13,0.1540,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (695,9,15,2014,2,12,0,14,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (696,9,16,2014,2,13,0,15,0.1330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (697,9,17,2014,2,14,0,16,0.1250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (698,10,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (699,10,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (700,10,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (701,10,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (702,10,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (703,10,6,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (704,10,7,2014,3,4,0,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (705,10,8,2014,4,4,0,8,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (706,10,9,2014,4,5,0,9,0.4440,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (707,10,10,2014,4,5,0,9,0.4440,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (708,10,11,2014,5,5,0,10,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (709,10,12,2014,5,6,0,11,0.4550,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (710,10,13,2014,6,6,0,12,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (711,10,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (712,10,15,2014,7,7,0,14,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (713,10,16,2014,8,7,0,15,0.5330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (714,10,17,2014,9,7,0,16,0.5630,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (715,11,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (716,11,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (717,11,3,2014,0,3,0,3,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (718,11,4,2014,0,4,0,4,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (719,11,5,2014,0,5,0,5,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (720,11,6,2014,0,6,0,6,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (721,11,7,2014,1,6,0,7,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (722,11,8,2014,1,7,0,8,0.1250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (723,11,9,2014,1,8,0,9,0.1110,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (724,11,10,2014,1,9,0,10,0.1000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (725,11,11,2014,1,9,0,10,0.1000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (726,11,12,2014,1,10,0,11,0.0910,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (727,11,13,2014,2,10,0,12,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (728,11,14,2014,2,11,0,13,0.1540,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (729,11,15,2014,2,12,0,14,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (730,11,16,2014,3,12,0,15,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (731,11,17,2014,3,13,0,16,0.1880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (732,12,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (733,12,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (734,12,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (735,12,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (736,12,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (737,12,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (738,12,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (739,12,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (740,12,9,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (741,12,10,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (742,12,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (743,12,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (744,12,13,2014,8,4,0,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (745,12,14,2014,9,4,0,13,0.6920,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (746,12,15,2014,10,4,0,14,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (747,12,16,2014,10,5,0,15,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (748,12,17,2014,11,5,0,16,0.6880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (749,13,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (750,13,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (751,13,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (752,13,4,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (753,13,5,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (754,13,6,2014,4,1,0,5,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (755,13,7,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (756,13,8,2014,6,1,0,7,0.8570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (757,13,9,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (758,13,10,2014,7,2,0,9,0.7780,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (759,13,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (760,13,12,2014,8,3,0,11,0.7270,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (761,13,13,2014,9,3,0,12,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (762,13,14,2014,10,3,0,13,0.7690,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (763,13,15,2014,11,3,0,14,0.7860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (764,13,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (765,13,17,2014,12,4,0,16,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (766,14,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (767,14,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (768,14,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (769,14,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (770,14,5,2014,4,1,0,5,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (771,14,6,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (772,14,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (773,14,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (774,14,9,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (775,14,10,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (776,14,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (777,14,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (778,14,13,2014,8,4,0,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (779,14,14,2014,8,5,0,13,0.6150,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (780,14,15,2014,8,6,0,14,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (781,14,16,2014,9,6,0,15,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (782,14,17,2014,9,7,0,16,0.5630,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (783,15,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (784,15,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (785,15,3,2014,0,3,0,3,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (786,15,4,2014,0,4,0,4,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (787,15,5,2014,0,4,0,4,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (788,15,6,2014,0,5,0,5,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (789,15,7,2014,0,6,0,6,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (790,15,8,2014,0,7,0,7,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (791,15,9,2014,0,8,0,8,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (792,15,10,2014,0,9,0,9,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (793,15,11,2014,0,10,0,10,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (794,15,12,2014,1,10,0,11,0.0910,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (795,15,13,2014,1,11,0,12,0.0830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (796,15,14,2014,2,11,0,13,0.1540,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (797,15,15,2014,2,12,0,14,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (798,15,16,2014,3,12,0,15,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (799,15,17,2014,3,13,0,16,0.1880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (800,16,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (801,16,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (802,16,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (803,16,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (804,16,5,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (805,16,6,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (806,16,7,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (807,16,8,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (808,16,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (809,16,10,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (810,16,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (811,16,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (812,16,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (813,16,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (814,16,15,2014,8,6,0,14,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (815,16,16,2014,8,7,0,15,0.5330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (816,16,17,2014,9,7,0,16,0.5630,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (817,17,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (818,17,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (819,17,3,2014,3,0,0,3,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (820,17,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (821,17,5,2014,4,1,0,5,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (822,17,6,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (823,17,7,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (824,17,8,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (825,17,9,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (826,17,10,2014,7,2,0,9,0.7780,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (827,17,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (828,17,12,2014,8,3,0,11,0.7270,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (829,17,13,2014,9,3,0,12,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (830,17,14,2014,9,4,0,13,0.6920,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (831,17,15,2014,9,5,0,14,0.6430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (832,17,16,2014,9,6,0,15,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (833,17,17,2014,10,6,0,16,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (834,18,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (835,18,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (836,18,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (837,18,4,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (838,18,5,2014,1,4,0,5,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (839,18,6,2014,1,5,0,6,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (840,18,7,2014,2,5,0,7,0.2860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (841,18,8,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (842,18,9,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (843,18,10,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (844,18,11,2014,3,7,0,10,0.3000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (845,18,12,2014,3,8,0,11,0.2730,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (846,18,13,2014,3,9,0,12,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (847,18,14,2014,3,10,0,13,0.2310,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (848,18,15,2014,3,11,0,14,0.2140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (849,18,16,2014,4,11,0,15,0.2670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (850,18,17,2014,4,12,0,16,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (851,19,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (852,19,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (853,19,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (854,19,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (855,19,5,2014,4,1,0,5,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (856,19,6,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (857,19,7,2014,6,1,0,7,0.8570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (858,19,8,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (859,19,9,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (860,19,10,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (861,19,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (862,19,12,2014,8,3,0,11,0.7270,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (863,19,13,2014,8,4,0,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (864,19,14,2014,9,4,0,13,0.6920,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (865,19,15,2014,10,4,0,14,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (866,19,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (867,19,17,2014,12,4,0,16,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (868,20,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (869,20,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (870,20,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (871,20,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (872,20,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (873,20,6,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (874,20,7,2014,3,4,0,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (875,20,8,2014,3,4,0,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (876,20,9,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (877,20,10,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (878,20,11,2014,3,7,0,10,0.3000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (879,20,12,2014,3,8,0,11,0.2730,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (880,20,13,2014,3,9,0,12,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (881,20,14,2014,4,9,0,13,0.3080,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (882,20,15,2014,5,9,0,14,0.3570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (883,20,16,2014,6,9,0,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (884,20,17,2014,6,10,0,16,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (885,21,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (886,21,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (887,21,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (888,21,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (889,21,5,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (890,21,6,2014,2,4,0,6,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (891,21,7,2014,2,5,0,7,0.2860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (892,21,8,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (893,21,9,2014,4,5,0,9,0.4440,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (894,21,10,2014,4,5,0,9,0.4440,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (895,21,11,2014,4,6,0,10,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (896,21,12,2014,4,7,0,11,0.3640,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (897,21,13,2014,5,7,0,12,0.4170,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (898,21,14,2014,6,7,0,13,0.4620,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (899,21,15,2014,6,8,0,14,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (900,21,16,2014,6,9,0,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (901,21,17,2014,7,9,0,16,0.4380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (902,22,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (903,22,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (904,22,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (905,22,4,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (906,22,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (907,22,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (908,22,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (909,22,8,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (910,22,9,2014,6,2,0,8,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (911,22,10,2014,7,2,0,9,0.7780,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (912,22,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (913,22,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (914,22,13,2014,8,4,0,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (915,22,14,2014,9,4,0,13,0.6920,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (916,22,15,2014,10,4,0,14,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (917,22,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (918,22,17,2014,11,5,0,16,0.6880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (919,23,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (920,23,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (921,23,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (922,23,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (923,23,5,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (924,23,6,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (925,23,7,2014,3,4,0,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (926,23,8,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (927,23,9,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (928,23,10,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (929,23,11,2014,4,6,0,10,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (930,23,12,2014,5,6,0,11,0.4550,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (931,23,13,2014,5,7,0,12,0.4170,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (932,23,14,2014,5,8,0,13,0.3850,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (933,23,15,2014,5,9,0,14,0.3570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (934,23,16,2014,5,10,0,15,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (935,23,17,2014,5,11,0,16,0.3130,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (936,24,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (937,24,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (938,24,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (939,24,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (940,24,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (941,24,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (942,24,7,2014,5,2,0,7,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (943,24,8,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (944,24,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (945,24,10,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (946,24,11,2014,7,3,0,10,0.7000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (947,24,12,2014,8,3,0,11,0.7270,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (948,24,13,2014,9,3,0,12,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (949,24,14,2014,10,3,0,13,0.7690,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (950,24,15,2014,10,4,0,14,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (951,24,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (952,24,17,2014,12,4,0,16,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (953,25,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (954,25,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (955,25,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (956,25,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (957,25,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (958,25,6,2014,3,2,1,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (959,25,7,2014,3,3,1,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (960,25,8,2014,3,4,1,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (961,25,9,2014,3,5,1,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (962,25,10,2014,3,6,1,10,0.3000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (963,25,11,2014,3,7,1,11,0.2730,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (964,25,12,2014,3,7,1,11,0.2730,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (965,25,13,2014,3,8,1,12,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (966,25,14,2014,4,8,1,13,0.3080,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (967,25,15,2014,5,8,1,14,0.3570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (968,25,16,2014,6,8,1,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (969,25,17,2014,7,8,1,16,0.4380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (970,26,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (971,26,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (972,26,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (973,26,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (974,26,5,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (975,26,6,2014,2,4,0,6,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (976,26,7,2014,2,5,0,7,0.2860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (977,26,8,2014,2,6,0,8,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (978,26,9,2014,2,6,0,8,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (979,26,10,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (980,26,11,2014,4,6,0,10,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (981,26,12,2014,4,7,0,11,0.3640,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (982,26,13,2014,5,7,0,12,0.4170,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (983,26,14,2014,5,8,0,13,0.3850,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (984,26,15,2014,5,9,0,14,0.3570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (985,26,16,2014,6,9,0,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (986,26,17,2014,6,10,0,16,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (987,27,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (988,27,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (989,27,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (990,27,4,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (991,27,5,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (992,27,6,2014,2,3,0,5,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (993,27,7,2014,2,4,0,6,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (994,27,8,2014,3,4,0,7,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (995,27,9,2014,4,4,0,8,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (996,27,10,2014,4,5,0,9,0.4440,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (997,27,11,2014,4,6,0,10,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (998,27,12,2014,4,7,0,11,0.3640,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (999,27,13,2014,5,7,0,12,0.4170,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1000,27,14,2014,5,8,0,13,0.3850,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1001,27,15,2014,6,8,0,14,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1002,27,16,2014,6,9,0,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1003,27,17,2014,7,9,0,16,0.4380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1004,28,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1005,28,2,2014,0,2,0,2,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1006,28,3,2014,0,3,0,3,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1007,28,4,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1008,28,5,2014,1,4,0,5,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1009,28,6,2014,1,5,0,6,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1010,28,7,2014,1,5,0,6,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1011,28,8,2014,1,6,0,7,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1012,28,9,2014,1,7,0,8,0.1250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1013,28,10,2014,1,8,0,9,0.1110,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1014,28,11,2014,2,8,0,10,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1015,28,12,2014,2,9,0,11,0.1820,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1016,28,13,2014,2,10,0,12,0.1670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1017,28,14,2014,2,11,0,13,0.1540,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1018,28,15,2014,2,12,0,14,0.1430,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1019,28,16,2014,2,13,0,15,0.1330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1020,28,17,2014,2,14,0,16,0.1250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1021,29,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1022,29,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1023,29,3,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1024,29,4,2014,2,1,0,3,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1025,29,5,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1026,29,6,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1027,29,7,2014,3,3,0,6,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1028,29,8,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1029,29,9,2014,5,3,0,8,0.6250,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1030,29,10,2014,6,3,0,9,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1031,29,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1032,29,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1033,29,13,2014,8,4,0,12,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1034,29,14,2014,9,4,0,13,0.6920,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1035,29,15,2014,10,4,0,14,0.7140,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1036,29,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1037,29,17,2014,12,4,0,16,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1038,30,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1039,30,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1040,30,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1041,30,4,2014,2,2,0,4,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1042,30,5,2014,3,2,0,5,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1043,30,6,2014,4,2,0,6,0.6670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1044,30,7,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1045,30,8,2014,4,3,0,7,0.5710,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1046,30,9,2014,4,4,0,8,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1047,30,10,2014,5,4,0,9,0.5560,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1048,30,11,2014,6,4,0,10,0.6000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1049,30,12,2014,7,4,0,11,0.6360,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1050,30,13,2014,7,5,0,12,0.5830,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1051,30,14,2014,7,6,0,13,0.5380,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1052,30,15,2014,7,7,0,14,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1053,30,16,2014,7,8,0,15,0.4670,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1054,30,17,2014,8,8,0,16,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1055,31,1,2014,1,0,0,1,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1056,31,2,2014,2,0,0,2,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1057,31,3,2014,3,0,0,3,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1058,31,4,2014,3,0,0,3,1.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1059,31,5,2014,3,1,0,4,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1060,31,6,2014,4,1,0,5,0.8000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1061,31,7,2014,5,1,0,6,0.8330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1062,31,8,2014,6,1,0,7,0.8570,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1063,31,9,2014,7,1,0,8,0.8750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1064,31,10,2014,8,1,0,9,0.8890,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1065,31,11,2014,9,1,0,10,0.9000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1066,31,12,2014,9,2,0,11,0.8180,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1067,31,13,2014,9,3,0,12,0.7500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1068,31,14,2014,10,3,0,13,0.7690,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1069,31,15,2014,11,3,0,14,0.7860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1070,31,16,2014,11,4,0,15,0.7330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1071,31,17,2014,11,5,0,16,0.6880,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1072,32,1,2014,0,1,0,1,0.0000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1073,32,2,2014,1,1,0,2,0.5000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1074,32,3,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1075,32,4,2014,1,2,0,3,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1076,32,5,2014,1,3,0,4,0.2500,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1077,32,6,2014,1,4,0,5,0.2000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1078,32,7,2014,2,4,0,6,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1079,32,8,2014,2,5,0,7,0.2860,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1080,32,9,2014,3,5,0,8,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1081,32,10,2014,3,6,0,9,0.3330,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1082,32,11,2014,4,6,0,10,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1083,32,12,2014,4,7,0,11,0.3640,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1084,32,13,2014,5,7,0,12,0.4170,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1085,32,14,2014,6,7,0,13,0.4620,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1086,32,15,2014,6,8,0,14,0.4290,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1087,32,16,2014,6,9,0,15,0.4000,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1088,32,17,2014,6,10,0,16,0.3750,'2015-09-04 16:14:17',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1089,1,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1090,1,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1091,1,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1092,1,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1093,1,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1094,1,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1095,1,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1096,1,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1097,1,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1098,1,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1099,1,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1100,1,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1101,1,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1102,1,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1103,1,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1104,1,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1105,1,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1106,2,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1107,2,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1108,2,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1109,2,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1110,2,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1111,2,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1112,2,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1113,2,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1114,2,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1115,2,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1116,2,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1117,2,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1118,2,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1119,2,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1120,2,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1121,2,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1122,2,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1123,3,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1124,3,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1125,3,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1126,3,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1127,3,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1128,3,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1129,3,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1130,3,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1131,3,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1132,3,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1133,3,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1134,3,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1135,3,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1136,3,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1137,3,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1138,3,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1139,3,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1140,4,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1141,4,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1142,4,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1143,4,4,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1144,4,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1145,4,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1146,4,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1147,4,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1148,4,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1149,4,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1150,4,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1151,4,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1152,4,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1153,4,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1154,4,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1155,4,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1156,4,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1157,5,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1158,5,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1159,5,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1160,5,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1161,5,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1162,5,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1163,5,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1164,5,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1165,5,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1166,5,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1167,5,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1168,5,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1169,5,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1170,5,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1171,5,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1172,5,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1173,5,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1174,6,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1175,6,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1176,6,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1177,6,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1178,6,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1179,6,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1180,6,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1181,6,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1182,6,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1183,6,10,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1184,6,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1185,6,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1186,6,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1187,6,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1188,6,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1189,6,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1190,6,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1191,7,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1192,7,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1193,7,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1194,7,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1195,7,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1196,7,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1197,7,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1198,7,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1199,7,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1200,7,10,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1201,7,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1202,7,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1203,7,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1204,7,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1205,7,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1206,7,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1207,7,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1208,8,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1209,8,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1210,8,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1211,8,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1212,8,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1213,8,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1214,8,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1215,8,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1216,8,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1217,8,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1218,8,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1219,8,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1220,8,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1221,8,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1222,8,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1223,8,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1224,8,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1225,9,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1226,9,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1227,9,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1228,9,4,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1229,9,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1230,9,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1231,9,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1232,9,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1233,9,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1234,9,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1235,9,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1236,9,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1237,9,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1238,9,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1239,9,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1240,9,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1241,9,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1242,10,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1243,10,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1244,10,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1245,10,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1246,10,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1247,10,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1248,10,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1249,10,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1250,10,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1251,10,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1252,10,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1253,10,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1254,10,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1255,10,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1256,10,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1257,10,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1258,10,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1259,11,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1260,11,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1261,11,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1262,11,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1263,11,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1264,11,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1265,11,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1266,11,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1267,11,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1268,11,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1269,11,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1270,11,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1271,11,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1272,11,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1273,11,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1274,11,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1275,11,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1276,12,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1277,12,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1278,12,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1279,12,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1280,12,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1281,12,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1282,12,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1283,12,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1284,12,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1285,12,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1286,12,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1287,12,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1288,12,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1289,12,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1290,12,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1291,12,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1292,12,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1293,13,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1294,13,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1295,13,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1296,13,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1297,13,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1298,13,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1299,13,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1300,13,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1301,13,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1302,13,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1303,13,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1304,13,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1305,13,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1306,13,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1307,13,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1308,13,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1309,13,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1310,14,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1311,14,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1312,14,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1313,14,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1314,14,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1315,14,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1316,14,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1317,14,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1318,14,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1319,14,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1320,14,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1321,14,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1322,14,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1323,14,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1324,14,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1325,14,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1326,14,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1327,15,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1328,15,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1329,15,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1330,15,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1331,15,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1332,15,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1333,15,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1334,15,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1335,15,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1336,15,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1337,15,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1338,15,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1339,15,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1340,15,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1341,15,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1342,15,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1343,15,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1344,16,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1345,16,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1346,16,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1347,16,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1348,16,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1349,16,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1350,16,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1351,16,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1352,16,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1353,16,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1354,16,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1355,16,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1356,16,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1357,16,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1358,16,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1359,16,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1360,16,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1361,17,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1362,17,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1363,17,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1364,17,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1365,17,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1366,17,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1367,17,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1368,17,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1369,17,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1370,17,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1371,17,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1372,17,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1373,17,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1374,17,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1375,17,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1376,17,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1377,17,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1378,18,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1379,18,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1380,18,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1381,18,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1382,18,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1383,18,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1384,18,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1385,18,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1386,18,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1387,18,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1388,18,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1389,18,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1390,18,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1391,18,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1392,18,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1393,18,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1394,18,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1395,19,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1396,19,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1397,19,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1398,19,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1399,19,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1400,19,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1401,19,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1402,19,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1403,19,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1404,19,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1405,19,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1406,19,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1407,19,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1408,19,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1409,19,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1410,19,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1411,19,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1412,20,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1413,20,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1414,20,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1415,20,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1416,20,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1417,20,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1418,20,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1419,20,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1420,20,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1421,20,10,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1422,20,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1423,20,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1424,20,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1425,20,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1426,20,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1427,20,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1428,20,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1429,21,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1430,21,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1431,21,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1432,21,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1433,21,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1434,21,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1435,21,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1436,21,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1437,21,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1438,21,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1439,21,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1440,21,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1441,21,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1442,21,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1443,21,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1444,21,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1445,21,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1446,22,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1447,22,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1448,22,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1449,22,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1450,22,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1451,22,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1452,22,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1453,22,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1454,22,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1455,22,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1456,22,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1457,22,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1458,22,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1459,22,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1460,22,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1461,22,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1462,22,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1463,23,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1464,23,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1465,23,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1466,23,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1467,23,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1468,23,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1469,23,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1470,23,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1471,23,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1472,23,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1473,23,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1474,23,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1475,23,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1476,23,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1477,23,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1478,23,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1479,23,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1480,24,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1481,24,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1482,24,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1483,24,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1484,24,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1485,24,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1486,24,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1487,24,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1488,24,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1489,24,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1490,24,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1491,24,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1492,24,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1493,24,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1494,24,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1495,24,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1496,24,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1497,25,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1498,25,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1499,25,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1500,25,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1501,25,5,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1502,25,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1503,25,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1504,25,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1505,25,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1506,25,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1507,25,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1508,25,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1509,25,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1510,25,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1511,25,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1512,25,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1513,25,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1514,26,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1515,26,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1516,26,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1517,26,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1518,26,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1519,26,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1520,26,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1521,26,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1522,26,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1523,26,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1524,26,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1525,26,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1526,26,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1527,26,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1528,26,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1529,26,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1530,26,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1531,27,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1532,27,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1533,27,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1534,27,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1535,27,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1536,27,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1537,27,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1538,27,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1539,27,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1540,27,10,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1541,27,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1542,27,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1543,27,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1544,27,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1545,27,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1546,27,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1547,27,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1548,28,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1549,28,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1550,28,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1551,28,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1552,28,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1553,28,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1554,28,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1555,28,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1556,28,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1557,28,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1558,28,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1559,28,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1560,28,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1561,28,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1562,28,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1563,28,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1564,28,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1565,29,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1566,29,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1567,29,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1568,29,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1569,29,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1570,29,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1571,29,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1572,29,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1573,29,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1574,29,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1575,29,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1576,29,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1577,29,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1578,29,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1579,29,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1580,29,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1581,29,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1582,30,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1583,30,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1584,30,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1585,30,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1586,30,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1587,30,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1588,30,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1589,30,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1590,30,9,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1591,30,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1592,30,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1593,30,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1594,30,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1595,30,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1596,30,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1597,30,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1598,30,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1599,31,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1600,31,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1601,31,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1602,31,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1603,31,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1604,31,6,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1605,31,7,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1606,31,8,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1607,31,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1608,31,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1609,31,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1610,31,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1611,31,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1612,31,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1613,31,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1614,31,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1615,31,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1616,32,1,2015,0,0,0,1,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1617,32,2,2015,0,0,0,2,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1618,32,3,2015,0,0,0,3,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1619,32,4,2015,0,0,0,4,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1620,32,5,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1621,32,6,2015,0,0,0,5,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1622,32,7,2015,0,0,0,6,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1623,32,8,2015,0,0,0,7,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1624,32,9,2015,0,0,0,8,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1625,32,10,2015,0,0,0,9,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1626,32,11,2015,0,0,0,10,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1627,32,12,2015,0,0,0,11,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1628,32,13,2015,0,0,0,12,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1629,32,14,2015,0,0,0,13,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1630,32,15,2015,0,0,0,14,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1631,32,16,2015,0,0,0,15,0.0000,'2015-09-04 16:20:56',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1632,32,17,2015,0,0,0,16,0.0000,'2015-09-04 16:20:56',NULL);
/*!40000 ALTER TABLE `teamweekstatstbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-05 15:53:49
