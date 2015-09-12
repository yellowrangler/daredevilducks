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
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestbl`
--

LOCK TABLES `gamestbl` WRITE;
/*!40000 ALTER TABLE `gamestbl` DISABLE KEYS */;
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (1,2014,1,1,'Sep 4','Thu',3,'8:30 pm',29,24,36,16,2,'2014-09-04 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (2,2014,1,2,'Sep 7','Sun',1,'1:00 pm',26,27,37,34,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (3,2014,1,3,'Sep 7','Sun',1,'1:00 pm',23,3,20,23,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (4,2014,1,4,'Sep 7','Sun',2,'1:00 pm',16,9,10,26,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (5,2014,1,5,'Sep 7','Sun',1,'1:00 pm',32,21,6,34,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (6,2014,1,6,'Sep 7','Sun',2,'1:00 pm',1,4,33,20,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (7,2014,1,7,'Sep 7','Sun',2,'1:00 pm',2,15,19,14,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (8,2014,1,8,'Sep 7','Sun',2,'1:00 pm',17,11,34,17,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (9,2014,1,9,'Sep 7','Sun',2,'1:00 pm',6,7,30,27,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (10,2014,1,10,'Sep 7','Sun',2,'1:00 pm',8,5,16,23,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (11,2014,1,11,'Sep 7','Sun',1,'1:00 pm',10,18,17,6,2,'2014-09-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (12,2014,1,12,'Sep 7','Sun',1,'4:25 pm',19,30,17,28,2,'2014-09-07 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (13,2014,1,13,'Sep 7','Sun',1,'4:25 pm',28,25,14,20,2,'2014-09-07 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (14,2014,1,14,'Sep 7','Sun',3,'8:30 pm',13,12,31,24,2,'2014-09-07 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (15,2014,1,15,'Sep 8','Mon',5,'7:10 pm',22,20,35,14,2,'2014-09-08 19:10:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (16,2014,1,16,'Sep 8','Mon',5,'10:20 pm',31,14,18,17,2,'2014-09-08 22:20:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (17,2014,2,17,'Sep 11','Thu',2,'8:25 pm',8,6,26,6,2,'2014-09-11 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (18,2014,2,18,'Sep 14','Sun',2,'1:00 pm',3,1,29,10,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (19,2014,2,19,'Sep 14','Sun',2,'1:00 pm',5,26,24,10,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (20,2014,2,20,'Sep 14','Sun',1,'1:00 pm',7,27,26,24,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (21,2014,2,21,'Sep 14','Sun',1,'1:00 pm',9,19,10,26,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (22,2014,2,22,'Sep 14','Sun',2,'1:00 pm',21,4,7,30,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (23,2014,2,23,'Sep 14','Sun',1,'1:00 pm',20,31,14,25,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (24,2014,2,24,'Sep 14','Sun',2,'1:00 pm',18,11,41,10,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (25,2014,2,25,'Sep 14','Sun',1,'1:00 pm',25,22,24,7,2,'2014-09-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (26,2014,2,26,'Sep 14','Sun',1,'4:05 pm',14,29,30,21,2,'2014-09-14 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (27,2014,2,27,'Sep 14','Sun',1,'4:05 pm',28,32,17,19,2,'2014-09-14 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (28,2014,2,28,'Sep 14','Sun',2,'4:25 pm',13,16,24,17,2,'2014-09-14 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (29,2014,2,29,'Sep 14','Sun',2,'4:25 pm',24,2,31,24,2,'2014-09-14 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (30,2014,2,30,'Sep 14','Sun',2,'4:25 pm',15,10,14,30,2,'2014-09-14 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (31,2014,2,31,'Sep 14','Sun',3,'8:30 pm',30,23,20,28,2,'2014-09-14 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (32,2014,2,32,'Sep 15','Mon',5,'8:30 pm',12,17,27,30,2,'2014-09-15 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (33,2014,3,33,'Sep 18','Thu',2,'8:25 pm',26,28,56,14,2,'2014-09-18 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (34,2014,3,34,'Sep 21','Sun',2,'1:00 pm',3,14,10,22,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (35,2014,3,35,'Sep 21','Sun',2,'1:00 pm',5,9,33,7,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (36,2014,3,36,'Sep 21','Sun',2,'1:00 pm',7,8,21,23,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (37,2014,3,37,'Sep 21','Sun',1,'1:00 pm',22,24,19,7,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (38,2014,3,38,'Sep 21','Sun',1,'1:00 pm',32,19,31,34,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (39,2014,3,39,'Sep 21','Sun',2,'1:00 pm',4,15,16,9,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (40,2014,3,40,'Sep 21','Sun',1,'1:00 pm',27,21,20,9,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (41,2014,3,41,'Sep 21','Sun',2,'1:00 pm',20,10,30,17,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (42,2014,3,42,'Sep 21','Sun',1,'1:00 pm',17,18,37,34,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (43,2014,3,43,'Sep 21','Sun',2,'1:00 pm',11,12,17,44,2,'2014-09-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (44,2014,3,44,'Sep 21','Sun',1,'4:05 pm',31,30,23,14,2,'2014-09-21 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (45,2014,3,45,'Sep 21','Sun',2,'4:25 pm',1,16,15,34,2,'2014-09-21 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (46,2014,3,46,'Sep 21','Sun',2,'4:25 pm',29,13,26,20,2,'2014-09-21 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (47,2014,3,47,'Sep 21','Sun',3,'8:30 pm',25,6,19,37,2,'2014-09-21 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (48,2014,3,48,'Sep 22','Mon',5,'8:30 pm',2,23,19,27,2,'2014-09-22 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (49,2014,4,49,'Sep 25','Thu',2,'8:25 pm',18,20,14,45,2,'2014-09-25 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (50,2014,4,50,'Sep 28','Sun',1,'1:00 pm',23,24,17,38,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (51,2014,4,51,'Sep 28','Sun',2,'1:00 pm',12,9,41,17,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (52,2014,4,52,'Sep 28','Sun',2,'1:00 pm',15,1,14,38,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (53,2014,4,53,'Sep 28','Sun',1,'1:00 pm',2,22,17,24,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (54,2014,4,54,'Sep 28','Sun',1,'1:00 pm',6,28,24,27,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (55,2014,4,55,'Sep 28','Sun',2,'1:00 pm',8,25,38,10,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (56,2014,4,56,'Sep 28','Sun',2,'1:00 pm',10,3,23,17,2,'2014-09-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (57,2014,4,57,'Sep 28','Sun',2,'4:05 pm',14,11,33,14,2,'2014-09-28 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (58,2014,4,58,'Sep 28','Sun',1,'4:25 pm',21,26,41,28,2,'2014-09-28 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (59,2014,4,59,'Sep 28','Sun',1,'4:25 pm',30,17,26,21,2,'2014-09-28 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (60,2014,4,60,'Sep 28','Sun',3,'8:30 pm',19,27,38,17,2,'2014-09-28 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (61,2014,4,61,'Sep 29','Mon',5,'8:30 pm',16,4,41,14,2,'2014-09-29 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (62,2014,5,62,'Oct 2','Thu',2,'8:25 pm',24,21,42,10,2,'2014-10-02 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (63,2014,5,63,'Oct 5','Sun',2,'1:00 pm',19,10,20,17,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (64,2014,5,64,'Oct 5','Sun',1,'1:00 pm',22,3,14,17,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (65,2014,5,65,'Oct 5','Sun',2,'1:00 pm',9,7,28,29,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (66,2014,5,66,'Oct 5','Sun',2,'1:00 pm',12,8,20,13,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (67,2014,5,67,'Oct 5','Sun',1,'1:00 pm',27,28,37,31,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (68,2014,5,68,'Oct 5','Sun',1,'1:00 pm',20,26,30,20,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (69,2014,5,69,'Oct 5','Sun',1,'1:00 pm',17,32,34,28,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (70,2014,5,70,'Oct 5','Sun',1,'1:00 pm',25,23,31,24,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (71,2014,5,71,'Oct 5','Sun',2,'1:00 pm',11,6,9,17,2,'2014-10-05 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (72,2014,5,72,'Oct 5','Sun',1,'4:05 pm',13,31,41,20,2,'2014-10-05 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (73,2014,5,73,'Oct 5','Sun',2,'4:25 pm',14,2,31,0,2,'2014-10-05 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (74,2014,5,74,'Oct 5','Sun',2,'4:25 pm',30,16,22,17,2,'2014-10-05 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (75,2014,5,75,'Oct 5','Sun',3,'8:30 pm',4,5,43,17,2,'2014-10-05 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (76,2014,5,76,'Oct 6','Mon',5,'8:30 pm',18,29,17,27,2,'2014-10-06 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (77,2014,6,77,'Oct 9','Thu',2,'8:25 pm',10,12,28,33,2,'2014-10-09 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (78,2014,6,78,'Oct 12','Sun',1,'1:00 pm',26,23,13,27,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (79,2014,6,79,'Oct 12','Sun',2,'1:00 pm',3,4,22,37,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (80,2014,6,80,'Oct 12','Sun',1,'1:00 pm',5,25,37,37,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (81,2014,6,81,'Oct 12','Sun',2,'1:00 pm',7,6,31,10,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (82,2014,6,82,'Oct 12','Sun',2,'1:00 pm',9,11,16,14,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (83,2014,6,83,'Oct 12','Sun',1,'1:00 pm',1,24,24,27,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (84,2014,6,84,'Oct 12','Sun',1,'1:00 pm',21,22,3,17,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (85,2014,6,85,'Oct 12','Sun',2,'1:00 pm',2,13,17,31,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (86,2014,6,86,'Oct 12','Sun',2,'1:00 pm',28,8,17,48,2,'2014-10-12 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (87,2014,6,87,'Oct 12','Sun',2,'4:05 pm',15,14,28,31,2,'2014-10-12 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (88,2014,6,88,'Oct 12','Sun',1,'4:25 pm',31,18,30,20,2,'2014-10-12 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (89,2014,6,89,'Oct 12','Sun',1,'4:25 pm',29,19,23,30,2,'2014-10-12 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (90,2014,6,90,'Oct 12','Sun',3,'8:30 pm',17,20,27,0,2,'2014-10-12 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (91,2014,6,91,'Oct 13','Mon',5,'8:30 pm',32,30,17,31,2,'2014-10-13 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (92,2014,7,92,'Oct 16','Thu',2,'8:25 pm',4,2,27,25,2,'2014-10-16 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (93,2014,7,93,'Oct 19','Sun',1,'1:00 pm',3,21,17,16,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (94,2014,7,94,'Oct 19','Sun',2,'1:00 pm',23,1,14,27,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (95,2014,7,95,'Oct 19','Sun',1,'1:00 pm',22,27,24,23,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (96,2014,7,96,'Oct 19','Sun',1,'1:00 pm',24,25,38,17,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (97,2014,7,97,'Oct 19','Sun',2,'1:00 pm',12,5,27,0,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (98,2014,7,98,'Oct 19','Sun',1,'1:00 pm',32,29,28,26,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (99,2014,7,99,'Oct 19','Sun',2,'1:00 pm',18,9,19,17,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (100,2014,7,100,'Oct 19','Sun',2,'1:00 pm',11,7,24,6,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (101,2014,7,101,'Oct 19','Sun',1,'1:00 pm',8,26,29,7,2,'2014-10-19 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (102,2014,7,102,'Oct 19','Sun',2,'4:05 pm',14,16,20,23,2,'2014-10-19 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (103,2014,7,103,'Oct 19','Sun',1,'4:25 pm',19,20,31,21,2,'2014-10-19 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (104,2014,7,104,'Oct 19','Sun',1,'4:25 pm',15,31,13,24,2,'2014-10-19 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (105,2014,7,105,'Oct 19','Sun',3,'8:30 pm',13,30,42,17,2,'2014-10-19 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (106,2014,7,106,'Oct 20','Mon',5,'8:30 pm',6,10,30,23,2,'2014-10-20 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (107,2014,8,107,'Oct 23','Thu',2,'8:25 pm',13,14,35,21,2,'2014-10-23 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (108,2014,8,108,'Oct 26','Sun',1,'9:30 am',26,22,21,22,2,'2014-10-26 09:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (109,2014,8,109,'Oct 26','Sun',2,'1:00 pm',5,8,27,24,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (110,2014,8,110,'Oct 26','Sun',1,'1:00 pm',9,10,16,30,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (111,2014,8,111,'Oct 26','Sun',1,'1:00 pm',16,32,34,7,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (112,2014,8,112,'Oct 26','Sun',1,'1:00 pm',4,23,51,23,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (113,2014,8,113,'Oct 26','Sun',2,'1:00 pm',2,3,23,43,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (114,2014,8,114,'Oct 26','Sun',1,'1:00 pm',28,21,13,19,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (115,2014,8,115,'Oct 26','Sun',2,'1:00 pm',25,29,9,13,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (116,2014,8,116,'Oct 26','Sun',2,'1:00 pm',11,1,13,27,2,'2014-10-26 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (117,2014,8,117,'Oct 26','Sun',1,'4:05 pm',31,17,24,20,2,'2014-10-26 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (118,2014,8,118,'Oct 26','Sun',2,'4:25 pm',7,15,23,13,2,'2014-10-26 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (119,2014,8,119,'Oct 26','Sun',2,'4:25 pm',6,12,51,34,2,'2014-10-26 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (120,2014,8,120,'Oct 26','Sun',3,'8:30 pm',27,24,44,23,2,'2014-10-26 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (121,2014,8,121,'Oct 27','Mon',5,'8:30 pm',19,18,17,20,2,'2014-10-27 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (122,2014,9,122,'Oct 30','Thu',4,'8:25 pm',25,27,10,28,2,'2014-10-30 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (123,2014,9,123,'Nov 2','Sun',2,'1:00 pm',5,11,33,23,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (124,2014,9,124,'Nov 2','Sun',1,'1:00 pm',7,28,22,17,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (125,2014,9,125,'Nov 2','Sun',1,'1:00 pm',19,31,17,28,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (126,2014,9,126,'Nov 2','Sun',2,'1:00 pm',16,2,24,10,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (127,2014,9,127,'Nov 2','Sun',2,'1:00 pm',1,14,37,0,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (128,2014,9,128,'Nov 2','Sun',1,'1:00 pm',21,18,29,26,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (129,2014,9,129,'Nov 2','Sun',1,'1:00 pm',10,17,21,31,2,'2014-11-02 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (130,2014,9,130,'Nov 2','Sun',1,'4:05 pm',30,32,10,13,2,'2014-11-02 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (131,2014,9,131,'Nov 2','Sun',2,'4:25 pm',4,13,43,21,2,'2014-11-02 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (132,2014,9,132,'Nov 2','Sun',2,'4:25 pm',29,15,30,24,2,'2014-11-02 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (133,2014,9,133,'Nov 2','Sun',3,'8:30 pm',6,8,43,23,2,'2014-11-02 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (134,2014,9,134,'Nov 3','Mon',5,'8:30 pm',20,12,24,40,2,'2014-11-03 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (135,2014,10,135,'Nov 6','Thu',4,'8:25 pm',5,7,3,24,2,'2014-11-06 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (136,2014,10,136,'Nov 9','Sun',2,'1:00 pm',3,16,13,17,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (137,2014,10,137,'Nov 9','Sun',2,'1:00 pm',22,1,20,16,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (138,2014,10,138,'Nov 9','Sun',1,'1:00 pm',27,30,24,27,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (139,2014,10,139,'Nov 9','Sun',2,'1:00 pm',2,6,20,13,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (140,2014,10,140,'Nov 9','Sun',1,'1:00 pm',28,26,17,27,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (141,2014,10,141,'Nov 9','Sun',1,'1:00 pm',11,19,17,31,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (142,2014,10,142,'Nov 9','Sun',2,'1:00 pm',8,9,21,7,2,'2014-11-09 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (143,2014,10,143,'Nov 9','Sun',2,'4:05 pm',15,13,17,41,2,'2014-11-09 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (144,2014,10,144,'Nov 9','Sun',1,'4:25 pm',31,32,31,14,2,'2014-11-09 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (145,2014,10,145,'Nov 9','Sun',1,'4:25 pm',29,20,38,17,2,'2014-11-09 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (146,2014,10,146,'Nov 9','Sun',3,'8:30 pm',24,23,55,14,2,'2014-11-09 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (147,2014,10,147,'Nov 10','Mon',5,'8:30 pm',17,25,45,21,2,'2014-11-10 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (148,2014,11,148,'Nov 13','Thu',4,'8:25 pm',1,3,22,9,2,'2014-11-13 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (149,2014,11,149,'Nov 16','Sun',1,'1:00 pm',23,21,21,13,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (150,2014,11,150,'Nov 16','Sun',2,'1:00 pm',7,10,7,23,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (151,2014,11,151,'Nov 16','Sun',1,'1:00 pm',24,17,53,20,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (152,2014,11,152,'Nov 16','Sun',1,'1:00 pm',16,29,24,20,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (153,2014,11,153,'Nov 16','Sun',2,'1:00 pm',32,13,22,7,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (154,2014,11,154,'Nov 16','Sun',2,'1:00 pm',27,5,10,27,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (155,2014,11,155,'Nov 16','Sun',1,'1:00 pm',20,30,10,16,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (156,2014,11,156,'Nov 16','Sun',1,'1:00 pm',18,28,7,27,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (157,2014,11,157,'Nov 16','Sun',1,'1:00 pm',25,26,17,19,2,'2014-11-16 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (158,2014,11,158,'Nov 16','Sun',2,'4:05 pm',14,15,13,6,2,'2014-11-16 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (159,2014,11,159,'Nov 16','Sun',1,'4:25 pm',31,22,14,6,2,'2014-11-16 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (160,2014,11,160,'Nov 16','Sun',3,'8:30 pm',12,4,20,42,2,'2014-11-16 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (161,2014,11,161,'Nov 17','Mon',5,'8:30 pm',9,6,24,27,2,'2014-11-17 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (162,2014,12,162,'Nov 20','Thu',4,'8:25 pm',15,16,24,20,2,'2014-11-20 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (163,2014,12,163,'Nov 23','Sun',2,'1:00 pm',26,7,24,26,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (164,2014,12,164,'Nov 23','Sun',2,'1:00 pm',3,2,38,3,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (165,2014,12,165,'Nov 23','Sun',1,'1:00 pm',23,28,21,13,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (166,2014,12,166,'Nov 23','Sun',2,'1:00 pm',12,11,23,3,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (167,2014,12,167,'Nov 23','Sun',1,'1:00 pm',21,24,21,24,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (168,2014,12,168,'Nov 23','Sun',1,'1:00 pm',4,22,34,9,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (169,2014,12,169,'Nov 23','Sun',2,'1:00 pm',17,9,43,24,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (170,2014,12,170,'Nov 23','Sun',2,'1:00 pm',10,5,13,22,2,'2014-11-23 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (171,2014,12,171,'Nov 23','Sun',1,'4:05 pm',14,32,27,24,2,'2014-11-23 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (172,2014,12,172,'Nov 23','Sun',1,'4:05 pm',29,31,19,3,2,'2014-11-23 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (173,2014,12,173,'Nov 23','Sun',2,'4:25 pm',13,1,39,36,2,'2014-11-23 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (174,2014,12,174,'Nov 23','Sun',2,'4:25 pm',30,18,17,13,2,'2014-11-23 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (175,2014,12,175,'Nov 23','Sun',3,'8:30 pm',20,19,28,31,2,'2014-11-23 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (176,2014,12,176,'Nov 24','Mon',5,'8:30 pm',27,8,27,34,2,'2014-11-24 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (177,2014,13,177,'Nov 27','Thu',2,'12:30 pm',22,23,34,17,2,'2014-11-27 12:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (178,2014,13,178,'Nov 27','Thu',1,'4:30 pm',19,17,10,33,2,'2014-11-27 16:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (179,2014,13,179,'Nov 27','Thu',3,'8:30 pm',30,29,3,19,2,'2014-11-27 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (180,2014,13,180,'Nov 30','Sun',2,'1:00 pm',3,7,26,10,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (181,2014,13,181,'Nov 30','Sun',1,'1:00 pm',12,18,49,27,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (182,2014,13,182,'Nov 30','Sun',2,'1:00 pm',32,15,52,0,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (183,2014,13,183,'Nov 30','Sun',1,'1:00 pm',21,25,31,13,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (184,2014,13,184,'Nov 30','Sun',1,'1:00 pm',6,27,32,35,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (185,2014,13,185,'Nov 30','Sun',2,'1:00 pm',28,5,13,14,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (186,2014,13,186,'Nov 30','Sun',1,'1:00 pm',11,20,25,24,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (187,2014,13,187,'Nov 30','Sun',2,'1:00 pm',8,14,33,34,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (188,2014,13,188,'Nov 30','Sun',2,'1:00 pm',10,9,45,21,2,'2014-11-30 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (189,2014,13,189,'Nov 30','Sun',1,'4:05 pm',26,31,29,18,2,'2014-11-30 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (190,2014,13,190,'Nov 30','Sun',2,'4:25 pm',24,4,26,21,2,'2014-11-30 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (191,2014,13,191,'Nov 30','Sun',3,'8:30 pm',16,13,16,29,2,'2014-11-30 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (192,2014,13,192,'Dec 1','Mon',5,'8:30 pm',2,1,13,16,2,'2014-12-01 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (193,2014,14,193,'Dec 4','Thu',4,'8:25 pm',23,19,28,41,2,'2014-12-04 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (194,2014,14,194,'Dec 7','Sun',2,'1:00 pm',5,6,21,42,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (195,2014,14,195,'Dec 7','Sun',2,'1:00 pm',7,12,24,25,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (196,2014,14,196,'Dec 7','Sun',1,'1:00 pm',22,28,34,17,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (197,2014,14,197,'Dec 7','Sun',1,'1:00 pm',9,20,7,36,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (198,2014,14,198,'Dec 7','Sun',2,'1:00 pm',1,8,13,28,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (199,2014,14,199,'Dec 7','Sun',2,'1:00 pm',21,2,30,24,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (200,2014,14,200,'Dec 7','Sun',1,'1:00 pm',27,25,10,41,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (201,2014,14,201,'Dec 7','Sun',1,'1:00 pm',18,32,0,24,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (202,2014,14,202,'Dec 7','Sun',2,'1:00 pm',11,10,13,27,2,'2014-12-07 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (203,2014,14,203,'Dec 7','Sun',2,'4:05 pm',13,3,24,17,2,'2014-12-07 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (204,2014,14,204,'Dec 7','Sun',2,'4:05 pm',31,16,17,14,2,'2014-12-07 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (205,2014,14,205,'Dec 7','Sun',1,'4:25 pm',15,30,24,13,2,'2014-12-07 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (206,2014,14,206,'Dec 7','Sun',1,'4:25 pm',17,29,14,24,2,'2014-12-07 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (207,2014,14,207,'Dec 7','Sun',3,'8:30 pm',14,4,14,23,2,'2014-12-07 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (208,2014,14,208,'Dec 8','Mon',5,'8:30 pm',24,26,43,37,2,'2014-12-08 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (209,2014,15,209,'Dec 11','Thu',4,'8:25 pm',32,31,6,12,2,'2014-12-11 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (210,2014,15,210,'Dec 14','Sun',2,'1:00 pm',26,6,20,27,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (211,2014,15,211,'Dec 14','Sun',1,'1:00 pm',3,24,21,13,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (212,2014,15,212,'Dec 14','Sun',2,'1:00 pm',7,5,0,30,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (213,2014,15,213,'Dec 14','Sun',1,'1:00 pm',22,21,16,14,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (214,2014,15,214,'Dec 14','Sun',2,'1:00 pm',12,10,17,10,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (215,2014,15,215,'Dec 14','Sun',2,'1:00 pm',16,15,31,13,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (216,2014,15,216,'Dec 14','Sun',2,'1:00 pm',4,1,41,13,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (217,2014,15,217,'Dec 14','Sun',1,'1:00 pm',20,18,24,13,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (218,2014,15,218,'Dec 14','Sun',1,'1:00 pm',25,28,19,17,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (219,2014,15,219,'Dec 14','Sun',2,'1:00 pm',8,11,20,12,2,'2014-12-14 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (220,2014,15,220,'Dec 14','Sun',2,'4:05 pm',9,2,11,16,2,'2014-12-14 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (221,2014,15,221,'Dec 14','Sun',2,'4:05 pm',14,13,10,22,2,'2014-12-14 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (222,2014,15,222,'Dec 14','Sun',1,'4:25 pm',29,30,17,7,2,'2014-12-14 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (223,2014,15,223,'Dec 14','Sun',3,'8:30 pm',17,19,27,38,2,'2014-12-14 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (224,2014,15,224,'Dec 15','Mon',5,'8:30 pm',23,27,15,31,2,'2014-12-15 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (225,2014,16,225,'Dec 18','Thu',4,'8:25 pm',11,9,21,13,2,'2014-12-18 20:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (226,2014,16,226,'Dec 20','Sat',2,'4:30 pm',30,14,35,38,2,'2014-12-20 16:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (227,2014,16,227,'Dec 20','Sat',2,'4:30 pm',18,17,27,24,2,'2014-12-20 16:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (228,2014,16,228,'Dec 21','Sun',1,'1:00 pm',23,22,14,20,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (229,2014,16,229,'Dec 21','Sun',1,'1:00 pm',1,21,37,35,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (230,2014,16,230,'Dec 21','Sun',1,'1:00 pm',27,26,14,30,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (231,2014,16,231,'Dec 21','Sun',2,'1:00 pm',2,4,16,17,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (232,2014,16,232,'Dec 21','Sun',2,'1:00 pm',6,16,20,12,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (233,2014,16,233,'Dec 21','Sun',1,'1:00 pm',28,24,3,20,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (234,2014,16,234,'Dec 21','Sun',2,'1:00 pm',25,7,17,13,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (235,2014,16,235,'Dec 21','Sun',2,'1:00 pm',10,8,25,13,2,'2014-12-21 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (236,2014,16,236,'Dec 21','Sun',1,'4:05 pm',32,20,27,37,2,'2014-12-21 16:05:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (237,2014,16,237,'Dec 21','Sun',2,'4:25 pm',19,12,42,7,2,'2014-12-21 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (238,2014,16,238,'Dec 21','Sun',2,'4:25 pm',15,3,26,24,2,'2014-12-21 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (239,2014,16,239,'Dec 21','Sun',3,'8:30 pm',31,29,6,35,2,'2014-12-21 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (240,2014,16,240,'Dec 22','Mon',5,'8:30 pm',5,13,37,28,2,'2014-12-22 20:30:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (241,2014,17,241,'Dec 28','Sun',1,'1:00 pm',26,25,3,34,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (242,2014,17,242,'Dec 28','Sun',1,'1:00 pm',24,22,30,20,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (243,2014,17,243,'Dec 28','Sun',2,'1:00 pm',9,12,10,27,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (244,2014,17,244,'Dec 28','Sun',2,'1:00 pm',16,14,19,7,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (245,2014,17,245,'Dec 28','Sun',2,'1:00 pm',1,2,24,37,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (246,2014,17,246,'Dec 28','Sun',1,'1:00 pm',21,23,13,9,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (247,2014,17,247,'Dec 28','Sun',2,'1:00 pm',4,3,9,17,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (248,2014,17,248,'Dec 28','Sun',1,'1:00 pm',20,17,26,34,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (249,2014,17,249,'Dec 28','Sun',2,'1:00 pm',6,5,27,17,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (250,2014,17,250,'Dec 28','Sun',1,'1:00 pm',28,27,20,23,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (251,2014,17,251,'Dec 28','Sun',1,'1:00 pm',18,19,17,44,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (252,2014,17,252,'Dec 28','Sun',2,'1:00 pm',8,7,20,10,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (253,2014,17,253,'Dec 28','Sun',2,'1:00 pm',10,11,23,17,2,'2014-12-28 13:00:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (254,2014,17,254,'Dec 28','Sun',2,'4:25 pm',13,15,47,14,2,'2014-12-28 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (255,2014,17,255,'Dec 28','Sun',1,'4:25 pm',30,31,20,17,2,'2014-12-28 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (256,2014,17,256,'Dec 28','Sun',1,'4:25 pm',29,32,20,6,2,'2014-12-28 16:25:00','2015-08-12 21:27:47');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (257,2015,1,1,'10-Sep','Thu',0,'8:30 PM',4,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (258,2015,1,2,'13-Sep','Sun',0,'1:00 PM',23,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (259,2015,1,3,'13-Sep','Sun',0,'1:00 PM',10,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (260,2015,1,4,'13-Sep','Sun',0,'1:00 PM',2,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (261,2015,1,5,'13-Sep','Sun',0,'1:00 PM',3,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (262,2015,1,6,'13-Sep','Sun',0,'1:00 PM',18,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (263,2015,1,7,'13-Sep','Sun',0,'1:00 PM',11,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (264,2015,1,8,'13-Sep','Sun',0,'1:00 PM',32,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (265,2015,1,9,'13-Sep','Sun',0,'4:05 PM',31,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (266,2015,1,10,'13-Sep','Sun',0,'4:05 PM',14,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (267,2015,1,11,'13-Sep','Sun',0,'4:25 PM',28,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (268,2015,1,12,'13-Sep','Sun',0,'4:25 PM',15,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (269,2015,1,13,'13-Sep','Sun',0,'4:25 PM',13,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (270,2015,1,14,'13-Sep','Sun',0,'8:30 PM',19,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (271,2015,1,15,'14-Sep','Mon',0,'7:10 PM',26,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (272,2015,1,16,'14-Sep','Mon',0,'10:20 PM',30,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (273,2015,2,17,'17-Sep','Thu',0,'8:25 PM',16,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (274,2015,2,18,'20-Sep','Sun',0,'1:00 PM',25,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (275,2015,2,19,'20-Sep','Sun',0,'1:00 PM',6,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (276,2015,2,20,'20-Sep','Sun',0,'1:00 PM',27,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (277,2015,2,21,'20-Sep','Sun',0,'1:00 PM',21,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (278,2015,2,22,'20-Sep','Sun',0,'1:00 PM',23,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (279,2015,2,23,'20-Sep','Sun',0,'1:00 PM',3,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (280,2015,2,24,'20-Sep','Sun',0,'1:00 PM',5,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (281,2015,2,25,'20-Sep','Sun',0,'1:00 PM',7,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (282,2015,2,26,'20-Sep','Sun',0,'1:00 PM',20,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (283,2015,2,27,'20-Sep','Sun',0,'1:00 PM',18,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (284,2015,2,28,'20-Sep','Sun',0,'4:05 PM',11,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (285,2015,2,29,'20-Sep','Sun',0,'4:05 PM',15,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (286,2015,2,30,'20-Sep','Sun',0,'4:25 PM',17,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (287,2015,2,31,'20-Sep','Sun',0,'8:30 PM',24,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (288,2015,2,32,'21-Sep','Mon',0,'8:30 PM',12,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (289,2015,3,33,'24-Sep','Thu',0,'8:25 PM',20,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (290,2015,3,34,'27-Sep','Sun',0,'1:00 PM',19,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (291,2015,3,35,'27-Sep','Sun',0,'1:00 PM',9,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (292,2015,3,36,'27-Sep','Sun',0,'1:00 PM',7,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (293,2015,3,37,'27-Sep','Sun',0,'1:00 PM',8,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (294,2015,3,38,'27-Sep','Sun',0,'1:00 PM',4,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (295,2015,3,39,'27-Sep','Sun',0,'1:00 PM',25,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (296,2015,3,40,'27-Sep','Sun',0,'1:00 PM',2,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (297,2015,3,41,'27-Sep','Sun',0,'1:00 PM',10,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (298,2015,3,42,'27-Sep','Sun',0,'1:00 PM',21,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (299,2015,3,43,'27-Sep','Sun',0,'1:00 PM',32,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (300,2015,3,44,'27-Sep','Sun',0,'4:05 PM',31,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (301,2015,3,45,'27-Sep','Sun',0,'4:25 PM',1,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (302,2015,3,46,'27-Sep','Sun',0,'4:25 PM',29,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (303,2015,3,47,'27-Sep','Sun',0,'8:30 PM',22,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (304,2015,3,48,'28-Sep','Mon',0,'8:30 PM',24,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (305,2015,4,49,'1-Oct','Thu',0,'8:25 PM',6,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (306,2015,4,50,'4-Oct','Sun',0,'9:30 AM',1,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (307,2015,4,51,'4-Oct','Sun',0,'1:00 PM',12,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (308,2015,4,52,'4-Oct','Sun',0,'1:00 PM',3,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (309,2015,4,53,'4-Oct','Sun',0,'1:00 PM',28,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (310,2015,4,54,'4-Oct','Sun',0,'1:00 PM',18,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (311,2015,4,55,'4-Oct','Sun',0,'1:00 PM',23,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (312,2015,4,56,'4-Oct','Sun',0,'1:00 PM',26,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (313,2015,4,57,'4-Oct','Sun',0,'1:00 PM',5,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (314,2015,4,58,'4-Oct','Sun',0,'4:05 PM',14,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (315,2015,4,59,'4-Oct','Sun',0,'4:25 PM',30,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (316,2015,4,60,'4-Oct','Sun',0,'4:25 PM',31,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (317,2015,4,61,'4-Oct','Sun',0,'4:25 PM',13,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (318,2015,4,62,'4-Oct','Sun',0,'8:30 PM',27,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (319,2015,4,63,'5-Oct','Mon',0,'8:30 PM',29,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (320,2015,5,64,'8-Oct','Thu',0,'8:25 PM',10,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (321,2015,5,65,'11-Oct','Sun',0,'1:00 PM',16,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (322,2015,5,66,'11-Oct','Sun',0,'1:00 PM',5,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (323,2015,5,67,'11-Oct','Sun',0,'1:00 PM',26,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (324,2015,5,68,'11-Oct','Sun',0,'1:00 PM',28,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (325,2015,5,69,'11-Oct','Sun',0,'1:00 PM',17,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (326,2015,5,70,'11-Oct','Sun',0,'1:00 PM',8,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (327,2015,5,71,'11-Oct','Sun',0,'1:00 PM',24,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (328,2015,5,72,'11-Oct','Sun',0,'1:00 PM',9,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (329,2015,5,73,'11-Oct','Sun',0,'4:05 PM',22,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (330,2015,5,74,'11-Oct','Sun',0,'4:25 PM',19,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (331,2015,5,75,'11-Oct','Sun',0,'4:25 PM',15,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (332,2015,5,76,'11-Oct','Sun',0,'8:30 PM',20,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (333,2015,5,77,'12-Oct','Mon',0,'8:30 PM',14,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (334,2015,6,78,'15-Oct','Thu',0,'8:25 PM',27,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (335,2015,6,79,'18-Oct','Sun',0,'1:00 PM',2,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (336,2015,6,80,'18-Oct','Sun',0,'1:00 PM',6,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (337,2015,6,81,'18-Oct','Sun',0,'1:00 PM',21,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (338,2015,6,82,'18-Oct','Sun',0,'1:00 PM',3,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (339,2015,6,83,'18-Oct','Sun',0,'1:00 PM',22,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (340,2015,6,84,'18-Oct','Sun',0,'1:00 PM',7,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (341,2015,6,85,'18-Oct','Sun',0,'1:00 PM',11,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (342,2015,6,86,'18-Oct','Sun',0,'1:00 PM',9,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (343,2015,6,87,'18-Oct','Sun',0,'4:05 PM',29,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (344,2015,6,88,'18-Oct','Sun',0,'4:25 PM',24,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (345,2015,6,89,'18-Oct','Sun',0,'4:25 PM',30,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (346,2015,6,90,'18-Oct','Sun',0,'8:30 PM',12,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (347,2015,6,91,'19-Oct','Mon',0,'8:30 PM',17,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (348,2015,7,92,'22-Oct','Thu',0,'8:25 PM',30,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (349,2015,7,93,'25-Oct','Sun',0,'9:30 AM',11,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (350,2015,7,94,'25-Oct','Sun',0,'1:00 PM',18,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (351,2015,7,95,'25-Oct','Sun',0,'1:00 PM',9,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (352,2015,7,96,'25-Oct','Sun',0,'1:00 PM',12,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (353,2015,7,97,'25-Oct','Sun',0,'1:00 PM',22,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (354,2015,7,98,'25-Oct','Sun',0,'1:00 PM',16,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (355,2015,7,99,'25-Oct','Sun',0,'1:00 PM',32,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (356,2015,7,100,'25-Oct','Sun',0,'1:00 PM',1,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (357,2015,7,101,'25-Oct','Sun',0,'1:00 PM',4,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (358,2015,7,102,'25-Oct','Sun',0,'4:05 PM',14,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (359,2015,7,103,'25-Oct','Sun',0,'4:25 PM',20,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (360,2015,7,104,'25-Oct','Sun',0,'8:30 PM',25,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (361,2015,7,105,'26-Oct','Mon',0,'8:30 PM',31,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (362,2015,8,106,'29-Oct','Thu',0,'8:25 PM',4,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (363,2015,8,107,'1-Nov','Sun',0,'9:30 AM',16,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (364,2015,8,108,'1-Nov','Sun',0,'1:00 PM',26,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (365,2015,8,109,'1-Nov','Sun',0,'1:00 PM',7,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (366,2015,8,110,'1-Nov','Sun',0,'1:00 PM',32,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (367,2015,8,111,'1-Nov','Sun',0,'1:00 PM',27,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (368,2015,8,112,'1-Nov','Sun',0,'1:00 PM',23,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (369,2015,8,113,'1-Nov','Sun',0,'1:00 PM',8,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (370,2015,8,114,'1-Nov','Sun',0,'1:00 PM',6,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (371,2015,8,115,'1-Nov','Sun',0,'1:00 PM',10,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (372,2015,8,116,'1-Nov','Sun',0,'4:05 PM',15,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (373,2015,8,117,'1-Nov','Sun',0,'4:25 PM',19,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (374,2015,8,118,'1-Nov','Sun',0,'8:30 PM',13,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (375,2015,8,119,'2-Nov','Mon',0,'8:30 PM',25,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (376,2015,9,120,'5-Nov','Thu',0,'8:25 PM',5,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (377,2015,9,121,'8-Nov','Sun',0,'1:00 PM',25,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (378,2015,9,122,'8-Nov','Sun',0,'1:00 PM',4,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (379,2015,9,123,'8-Nov','Sun',0,'1:00 PM',27,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (380,2015,9,124,'8-Nov','Sun',0,'1:00 PM',3,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (381,2015,9,125,'8-Nov','Sun',0,'1:00 PM',21,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (382,2015,9,126,'8-Nov','Sun',0,'1:00 PM',2,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (383,2015,9,127,'8-Nov','Sun',0,'1:00 PM',6,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (384,2015,9,128,'8-Nov','Sun',0,'4:05 PM',28,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (385,2015,9,129,'8-Nov','Sun',0,'4:05 PM',30,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (386,2015,9,130,'8-Nov','Sun',0,'4:25 PM',12,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (387,2015,9,131,'8-Nov','Sun',0,'8:30 PM',19,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (388,2015,9,132,'9-Nov','Mon',0,'8:30 PM',14,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (389,2015,10,133,'12-Nov','Thu',0,'8:25 PM',2,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (390,2015,10,134,'15-Nov','Sun',0,'1:00 PM',24,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (391,2015,10,135,'15-Nov','Sun',0,'1:00 PM',28,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (392,2015,10,136,'15-Nov','Sun',0,'1:00 PM',9,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (393,2015,10,137,'15-Nov','Sun',0,'1:00 PM',32,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (394,2015,10,138,'15-Nov','Sun',0,'1:00 PM',18,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (395,2015,10,139,'15-Nov','Sun',0,'1:00 PM',17,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (396,2015,10,140,'15-Nov','Sun',0,'1:00 PM',6,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (397,2015,10,141,'15-Nov','Sun',0,'1:00 PM',8,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (398,2015,10,142,'15-Nov','Sun',0,'4:05 PM',15,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (399,2015,10,143,'15-Nov','Sun',0,'4:25 PM',20,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (400,2015,10,144,'15-Nov','Sun',0,'4:25 PM',13,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (401,2015,10,145,'15-Nov','Sun',0,'8:30 PM',29,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (402,2015,10,146,'16-Nov','Mon',0,'8:30 PM',5,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (403,2015,11,147,'19-Nov','Thu',0,'8:25 PM',11,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (404,2015,11,148,'22-Nov','Sun',0,'1:00 PM',22,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (405,2015,11,149,'22-Nov','Sun',0,'1:00 PM',26,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (406,2015,11,150,'22-Nov','Sun',0,'1:00 PM',10,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (407,2015,11,151,'22-Nov','Sun',0,'1:00 PM',17,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (408,2015,11,152,'22-Nov','Sun',0,'1:00 PM',23,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (409,2015,11,153,'22-Nov','Sun',0,'1:00 PM',21,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (410,2015,11,154,'22-Nov','Sun',0,'1:00 PM',8,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (411,2015,11,155,'22-Nov','Sun',0,'1:00 PM',1,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (412,2015,11,156,'22-Nov','Sun',0,'1:00 PM',25,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (413,2015,11,157,'22-Nov','Sun',0,'4:05 PM',31,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (414,2015,11,158,'22-Nov','Sun',0,'4:25 PM',29,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (415,2015,11,159,'22-Nov','Sun',0,'8:30 PM',14,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (416,2015,11,160,'23-Nov','Mon',0,'8:30 PM',4,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (417,2015,12,161,'26-Nov','Thu',0,'12:30 PM ',22,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (418,2015,12,162,'26-Nov','Thu',0,'4:30 PM',19,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (419,2015,12,163,'26-Nov','Thu',0,'8:30 PM',24,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (420,2015,12,164,'29-Nov','Sun',0,'1:00 PM',10,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (421,2015,12,165,'29-Nov','Sun',0,'1:00 PM',5,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (422,2015,12,166,'29-Nov','Sun',0,'1:00 PM',26,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (423,2015,12,167,'29-Nov','Sun',0,'1:00 PM',18,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (424,2015,12,168,'29-Nov','Sun',0,'1:00 PM',12,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (425,2015,12,169,'29-Nov','Sun',0,'1:00 PM',16,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (426,2015,12,170,'29-Nov','Sun',0,'1:00 PM',9,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (427,2015,12,171,'29-Nov','Sun',0,'1:00 PM',11,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (428,2015,12,172,'29-Nov','Sun',0,'1:00 PM',2,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (429,2015,12,173,'29-Nov','Sun',0,'4:05 PM',30,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (430,2015,12,174,'29-Nov','Sun',0,'4:25 PM',29,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (431,2015,12,175,'29-Nov','Sun',0,'8:30 PM',13,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (432,2015,12,176,'30-Nov','Mon',0,'8:30 PM',7,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (433,2015,13,177,'3-Dec','Thu',0,'8:25 PM',22,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (434,2015,13,178,'6-Dec','Sun',0,'1:00 PM',20,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (435,2015,13,179,'6-Dec','Sun',0,'1:00 PM',32,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (436,2015,13,180,'6-Dec','Sun',0,'1:00 PM',28,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (437,2015,13,181,'6-Dec','Sun',0,'1:00 PM',27,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (438,2015,13,182,'6-Dec','Sun',0,'1:00 PM',21,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (439,2015,13,183,'6-Dec','Sun',0,'1:00 PM',3,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (440,2015,13,184,'6-Dec','Sun',0,'1:00 PM',1,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (441,2015,13,185,'6-Dec','Sun',0,'1:00 PM',7,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (442,2015,13,186,'6-Dec','Sun',0,'1:00 PM',9,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (443,2015,13,187,'6-Dec','Sun',0,'1:00 PM',23,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (444,2015,13,188,'6-Dec','Sun',0,'4:05 PM',14,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (445,2015,13,189,'6-Dec','Sun',0,'4:05 PM',15,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (446,2015,13,190,'6-Dec','Sun',0,'4:25 PM',4,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (447,2015,13,191,'6-Dec','Sun',0,'8:30 PM',6,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (448,2015,13,192,'7-Dec','Mon',0,'8:30 PM',18,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (449,2015,14,193,'10-Dec','Thu',0,'8:25 PM',31,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (450,2015,14,194,'13-Dec','Sun',0,'1:00 PM',17,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (451,2015,14,195,'13-Dec','Sun',0,'1:00 PM',7,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (452,2015,14,196,'13-Dec','Sun',0,'1:00 PM',32,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (453,2015,14,197,'13-Dec','Sun',0,'1:00 PM',28,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (454,2015,14,198,'13-Dec','Sun',0,'1:00 PM',2,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (455,2015,14,199,'13-Dec','Sun',0,'1:00 PM',5,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (456,2015,14,200,'13-Dec','Sun',0,'1:00 PM',10,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (457,2015,14,201,'13-Dec','Sun',0,'1:00 PM',11,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (458,2015,14,202,'13-Dec','Sun',0,'1:00 PM',16,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (459,2015,14,203,'13-Dec','Sun',0,'1:00 PM',23,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (460,2015,14,204,'13-Dec','Sun',0,'1:00 PM',25,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (461,2015,14,205,'13-Dec','Sun',0,'4:05 PM',13,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (462,2015,14,206,'13-Dec','Sun',0,'4:25 PM',24,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (463,2015,14,207,'13-Dec','Sun',0,'8:30 PM',8,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (464,2015,14,208,'14-Dec','Mon',0,'8:30 PM',1,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (465,2015,15,209,'17-Dec','Thu',0,'8:25 PM',32,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (466,2015,15,210,'19-Dec','Sat',0,'8:25 PM',19,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (467,2015,15,211,'20-Dec','Sun',0,'1:00 PM',21,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (468,2015,15,212,'20-Dec','Sun',0,'1:00 PM',11,26,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (469,2015,15,213,'20-Dec','Sun',0,'1:00 PM',12,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (470,2015,15,214,'20-Dec','Sun',0,'1:00 PM',17,31,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (471,2015,15,215,'20-Dec','Sun',0,'1:00 PM',20,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (472,2015,15,216,'20-Dec','Sun',0,'1:00 PM',4,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (473,2015,15,217,'20-Dec','Sun',0,'1:00 PM',18,3,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (474,2015,15,218,'20-Dec','Sun',0,'1:00 PM',8,16,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (475,2015,15,219,'20-Dec','Sun',0,'4:05 PM',29,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (476,2015,15,220,'20-Dec','Sun',0,'4:05 PM',15,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (477,2015,15,221,'20-Dec','Sun',0,'4:25 PM',6,13,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (478,2015,15,222,'20-Dec','Sun',0,'4:25 PM',14,1,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (479,2015,15,223,'20-Dec','Sun',0,'8:30 PM',30,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (480,2015,15,224,'21-Dec','Mon',0,'8:30 PM',27,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (481,2015,16,225,'24-Dec','Thu',0,'8:25 PM',15,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (482,2015,16,226,'26-Dec','Sat',0,'8:25 PM',17,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (483,2015,16,227,'27-Dec','Sun',0,'1:00 PM',2,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (484,2015,16,228,'27-Dec','Sun',0,'1:00 PM',9,10,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (485,2015,16,229,'27-Dec','Sun',0,'1:00 PM',16,7,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (486,2015,16,230,'27-Dec','Sun',0,'1:00 PM',1,12,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (487,2015,16,231,'27-Dec','Sun',0,'1:00 PM',27,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (488,2015,16,232,'27-Dec','Sun',0,'1:00 PM',22,30,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (489,2015,16,233,'27-Dec','Sun',0,'1:00 PM',3,19,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (490,2015,16,234,'27-Dec','Sun',0,'1:00 PM',28,23,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (491,2015,16,235,'27-Dec','Sun',0,'1:00 PM',26,25,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (492,2015,16,236,'27-Dec','Sun',0,'1:00 PM',21,20,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (493,2015,16,237,'27-Dec','Sun',0,'4:25 PM',29,32,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (494,2015,16,238,'27-Dec','Sun',0,'4:25 PM',31,24,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (495,2015,16,239,'27-Dec','Sun',0,'8:30 PM',8,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (496,2015,16,240,'28-Dec','Mon',0,'8:30 PM',13,5,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (497,2015,17,241,'3-Jan','Sun',0,'1:00 PM',3,2,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (498,2015,17,242,'3-Jan','Sun',0,'1:00 PM',1,4,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (499,2015,17,243,'3-Jan','Sun',0,'1:00 PM',25,28,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (500,2015,17,244,'3-Jan','Sun',0,'1:00 PM',26,27,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (501,2015,17,245,'3-Jan','Sun',0,'1:00 PM',5,8,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (502,2015,17,246,'3-Jan','Sun',0,'1:00 PM',7,6,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (503,2015,17,247,'3-Jan','Sun',0,'1:00 PM',10,11,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (504,2015,17,248,'3-Jan','Sun',0,'1:00 PM',12,9,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (505,2015,17,249,'3-Jan','Sun',0,'1:00 PM',16,15,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (506,2015,17,250,'3-Jan','Sun',0,'1:00 PM',19,18,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (507,2015,17,251,'3-Jan','Sun',0,'1:00 PM',20,17,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (508,2015,17,252,'3-Jan','Sun',0,'1:00 PM',23,22,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (509,2015,17,253,'3-Jan','Sun',0,'1:00 PM',24,21,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (510,2015,17,254,'3-Jan','Sun',0,'4:25 PM',13,14,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (511,2015,17,255,'3-Jan','Sun',0,'4:25 PM',31,29,0,0,1,NULL,NULL);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (512,2015,17,256,'3-Jan','Sun',0,'4:25 PM',30,32,0,0,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=big5;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberpickstbl`
--

LOCK TABLES `memberpickstbl` WRITE;
/*!40000 ALTER TABLE `memberpickstbl` DISABLE KEYS */;
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (1,2014,2,1,17,8,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (2,2014,2,1,25,22,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (3,2014,2,1,22,21,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (4,2014,2,1,19,5,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (5,2014,2,1,20,7,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (6,2014,2,1,24,11,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (7,2014,2,1,23,31,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (8,2014,2,1,18,1,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (9,2014,2,1,21,19,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (10,2014,2,1,26,14,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (11,2014,2,1,27,28,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (12,2014,2,1,29,24,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (13,2014,2,1,30,15,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (14,2014,2,1,28,16,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (15,2014,2,1,31,23,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (16,2014,2,1,32,12,'2015-08-16 19:11:46');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (17,2014,17,1,249,6,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (18,2014,17,1,242,24,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (19,2014,17,1,252,8,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (20,2014,17,1,246,21,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (21,2014,17,1,253,10,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (22,2014,17,1,241,26,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (23,2014,17,1,243,9,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (24,2014,17,1,250,28,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (25,2014,17,1,244,16,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (26,2014,17,1,245,1,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (27,2014,17,1,248,20,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (28,2014,17,1,247,4,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (29,2014,17,1,251,18,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (30,2014,17,1,255,30,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (31,2014,17,1,254,13,'2015-08-17 03:49:26');
INSERT INTO `memberpickstbl` (`id`, `season`, `week`, `memberid`, `gamenbr`, `teamid`, `enterdate`) VALUES (32,2014,17,1,256,29,'2015-08-17 03:49:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstatstbl`
--

LOCK TABLES `teamstatstbl` WRITE;
/*!40000 ALTER TABLE `teamstatstbl` DISABLE KEYS */;
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1,1,2014,8,8,0,16,0.5000,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2,2,2014,4,12,0,16,0.2500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (3,3,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (4,4,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (5,5,2014,10,5,1,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (6,6,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (7,7,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (8,8,2014,10,6,0,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (9,9,2014,2,14,0,16,0.1300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (10,10,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (11,11,2014,3,13,0,16,0.1900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (12,12,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (13,13,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (14,14,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (15,17,2014,10,6,0,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (16,18,2014,4,12,0,16,0.2500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (17,19,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (18,20,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (19,21,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (20,22,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (21,23,2014,5,11,0,16,0.3100,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (22,24,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (23,25,2014,7,8,1,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (24,26,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (25,27,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (26,28,2014,2,14,0,16,0.1300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (27,29,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (28,30,2014,8,8,0,16,0.5000,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (29,15,2014,3,13,0,16,0.1900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (30,31,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (31,16,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (32,32,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
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
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (27,'Saints','New Orleans','New Orleans','LA','NFL','NFC','South','car.png',3,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamweekstatstbl`
--

LOCK TABLES `teamweekstatstbl` WRITE;
/*!40000 ALTER TABLE `teamweekstatstbl` DISABLE KEYS */;
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1,1,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2,1,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (3,1,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (4,1,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (5,1,5,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (6,1,6,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (7,1,7,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (8,1,8,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (9,1,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (10,1,10,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (11,1,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (12,1,12,2014,6,5,0,11,0.5450,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (13,1,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (14,1,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (15,1,15,2014,7,7,0,14,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (16,1,16,2014,8,7,0,15,0.5330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (17,1,17,2014,8,8,0,16,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (18,2,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (19,2,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (20,2,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (21,2,4,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (22,2,5,2014,1,4,0,5,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (23,2,6,2014,1,5,0,6,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (24,2,7,2014,1,6,0,7,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (25,2,8,2014,1,7,0,8,0.1250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (26,2,9,2014,1,8,0,9,0.1110,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (27,2,10,2014,2,8,0,10,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (28,2,11,2014,2,8,0,10,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (29,2,12,2014,2,9,0,11,0.1820,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (30,2,13,2014,2,10,0,12,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (31,2,14,2014,2,11,0,13,0.1540,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (32,2,15,2014,3,11,0,14,0.2140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (33,2,16,2014,3,12,0,15,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (34,2,17,2014,4,12,0,16,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (35,3,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (36,3,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (37,3,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (38,3,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (39,3,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (40,3,6,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (41,3,7,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (42,3,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (43,3,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (44,3,10,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (45,3,11,2014,5,5,0,10,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (46,3,12,2014,6,5,0,11,0.5450,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (47,3,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (48,3,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (49,3,15,2014,8,6,0,14,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (50,3,16,2014,8,7,0,15,0.5330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (51,3,17,2014,9,7,0,16,0.5630,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (52,4,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (53,4,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (54,4,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (55,4,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (56,4,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (57,4,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (58,4,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (59,4,8,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (60,4,9,2014,7,2,0,9,0.7780,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (61,4,10,2014,7,2,0,9,0.7780,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (62,4,11,2014,8,2,0,10,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (63,4,12,2014,9,2,0,11,0.8180,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (64,4,13,2014,9,3,0,12,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (65,4,14,2014,10,3,0,13,0.7690,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (66,4,15,2014,11,3,0,14,0.7860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (67,4,16,2014,12,3,0,15,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (68,4,17,2014,12,4,0,16,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (69,5,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (70,5,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (71,5,3,2014,3,0,0,3,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (72,5,4,2014,3,0,0,3,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (73,5,5,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (74,5,6,2014,3,1,1,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (75,5,7,2014,3,2,1,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (76,5,8,2014,4,2,1,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (77,5,9,2014,5,2,1,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (78,5,10,2014,5,3,1,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (79,5,11,2014,6,3,1,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (80,5,12,2014,7,3,1,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (81,5,13,2014,8,3,1,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (82,5,14,2014,8,4,1,13,0.6150,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (83,5,15,2014,9,4,1,14,0.6430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (84,5,16,2014,10,4,1,15,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (85,5,17,2014,10,5,1,16,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (86,6,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (87,6,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (88,6,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (89,6,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (90,6,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (91,6,6,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (92,6,7,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (93,6,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (94,6,9,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (95,6,10,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (96,6,11,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (97,6,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (98,6,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (99,6,14,2014,8,5,0,13,0.6150,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (100,6,15,2014,9,5,0,14,0.6430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (101,6,16,2014,10,5,0,15,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (102,6,17,2014,11,5,0,16,0.6880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (103,7,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (104,7,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (105,7,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (106,7,4,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (107,7,5,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (108,7,6,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (109,7,7,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (110,7,8,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (111,7,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (112,7,10,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (113,7,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (114,7,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (115,7,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (116,7,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (117,7,15,2014,7,7,0,14,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (118,7,16,2014,7,8,0,15,0.4670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (119,7,17,2014,7,9,0,16,0.4380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (120,8,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (121,8,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (122,8,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (123,8,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (124,8,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (125,8,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (126,8,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (127,8,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (128,8,9,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (129,8,10,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (130,8,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (131,8,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (132,8,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (133,8,14,2014,8,5,0,13,0.6150,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (134,8,15,2014,9,5,0,14,0.6430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (135,8,16,2014,9,6,0,15,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (136,8,17,2014,10,6,0,16,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (137,9,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (138,9,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (139,9,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (140,9,4,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (141,9,5,2014,1,4,0,5,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (142,9,6,2014,2,4,0,6,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (143,9,7,2014,2,5,0,7,0.2860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (144,9,8,2014,2,6,0,8,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (145,9,9,2014,2,6,0,8,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (146,9,10,2014,2,7,0,9,0.2220,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (147,9,11,2014,2,8,0,10,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (148,9,12,2014,2,9,0,11,0.1820,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (149,9,13,2014,2,10,0,12,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (150,9,14,2014,2,11,0,13,0.1540,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (151,9,15,2014,2,12,0,14,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (152,9,16,2014,2,13,0,15,0.1330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (153,9,17,2014,2,14,0,16,0.1250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (154,10,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (155,10,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (156,10,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (157,10,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (158,10,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (159,10,6,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (160,10,7,2014,3,4,0,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (161,10,8,2014,4,4,0,8,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (162,10,9,2014,4,5,0,9,0.4440,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (163,10,10,2014,4,5,0,9,0.4440,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (164,10,11,2014,5,5,0,10,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (165,10,12,2014,5,6,0,11,0.4550,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (166,10,13,2014,6,6,0,12,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (167,10,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (168,10,15,2014,7,7,0,14,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (169,10,16,2014,8,7,0,15,0.5330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (170,10,17,2014,9,7,0,16,0.5630,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (171,11,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (172,11,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (173,11,3,2014,0,3,0,3,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (174,11,4,2014,0,4,0,4,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (175,11,5,2014,0,5,0,5,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (176,11,6,2014,0,6,0,6,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (177,11,7,2014,1,6,0,7,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (178,11,8,2014,1,7,0,8,0.1250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (179,11,9,2014,1,8,0,9,0.1110,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (180,11,10,2014,1,9,0,10,0.1000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (181,11,11,2014,1,9,0,10,0.1000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (182,11,12,2014,1,10,0,11,0.0910,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (183,11,13,2014,2,10,0,12,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (184,11,14,2014,2,11,0,13,0.1540,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (185,11,15,2014,2,12,0,14,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (186,11,16,2014,3,12,0,15,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (187,11,17,2014,3,13,0,16,0.1880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (188,12,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (189,12,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (190,12,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (191,12,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (192,12,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (193,12,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (194,12,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (195,12,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (196,12,9,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (197,12,10,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (198,12,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (199,12,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (200,12,13,2014,8,4,0,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (201,12,14,2014,9,4,0,13,0.6920,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (202,12,15,2014,10,4,0,14,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (203,12,16,2014,10,5,0,15,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (204,12,17,2014,11,5,0,16,0.6880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (205,13,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (206,13,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (207,13,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (208,13,4,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (209,13,5,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (210,13,6,2014,4,1,0,5,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (211,13,7,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (212,13,8,2014,6,1,0,7,0.8570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (213,13,9,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (214,13,10,2014,7,2,0,9,0.7780,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (215,13,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (216,13,12,2014,8,3,0,11,0.7270,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (217,13,13,2014,9,3,0,12,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (218,13,14,2014,10,3,0,13,0.7690,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (219,13,15,2014,11,3,0,14,0.7860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (220,13,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (221,13,17,2014,12,4,0,16,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (222,14,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (223,14,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (224,14,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (225,14,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (226,14,5,2014,4,1,0,5,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (227,14,6,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (228,14,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (229,14,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (230,14,9,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (231,14,10,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (232,14,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (233,14,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (234,14,13,2014,8,4,0,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (235,14,14,2014,8,5,0,13,0.6150,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (236,14,15,2014,8,6,0,14,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (237,14,16,2014,9,6,0,15,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (238,14,17,2014,9,7,0,16,0.5630,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (239,15,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (240,15,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (241,15,3,2014,0,3,0,3,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (242,15,4,2014,0,4,0,4,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (243,15,5,2014,0,4,0,4,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (244,15,6,2014,0,5,0,5,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (245,15,7,2014,0,6,0,6,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (246,15,8,2014,0,7,0,7,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (247,15,9,2014,0,8,0,8,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (248,15,10,2014,0,9,0,9,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (249,15,11,2014,0,10,0,10,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (250,15,12,2014,1,10,0,11,0.0910,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (251,15,13,2014,1,11,0,12,0.0830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (252,15,14,2014,2,11,0,13,0.1540,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (253,15,15,2014,2,12,0,14,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (254,15,16,2014,3,12,0,15,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (255,15,17,2014,3,13,0,16,0.1880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (256,16,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (257,16,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (258,16,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (259,16,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (260,16,5,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (261,16,6,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (262,16,7,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (263,16,8,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (264,16,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (265,16,10,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (266,16,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (267,16,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (268,16,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (269,16,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (270,16,15,2014,8,6,0,14,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (271,16,16,2014,8,7,0,15,0.5330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (272,16,17,2014,9,7,0,16,0.5630,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (273,17,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (274,17,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (275,17,3,2014,3,0,0,3,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (276,17,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (277,17,5,2014,4,1,0,5,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (278,17,6,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (279,17,7,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (280,17,8,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (281,17,9,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (282,17,10,2014,7,2,0,9,0.7780,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (283,17,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (284,17,12,2014,8,3,0,11,0.7270,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (285,17,13,2014,9,3,0,12,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (286,17,14,2014,9,4,0,13,0.6920,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (287,17,15,2014,9,5,0,14,0.6430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (288,17,16,2014,9,6,0,15,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (289,17,17,2014,10,6,0,16,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (290,18,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (291,18,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (292,18,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (293,18,4,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (294,18,5,2014,1,4,0,5,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (295,18,6,2014,1,5,0,6,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (296,18,7,2014,2,5,0,7,0.2860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (297,18,8,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (298,18,9,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (299,18,10,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (300,18,11,2014,3,7,0,10,0.3000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (301,18,12,2014,3,8,0,11,0.2730,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (302,18,13,2014,3,9,0,12,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (303,18,14,2014,3,10,0,13,0.2310,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (304,18,15,2014,3,11,0,14,0.2140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (305,18,16,2014,4,11,0,15,0.2670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (306,18,17,2014,4,12,0,16,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (307,19,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (308,19,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (309,19,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (310,19,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (311,19,5,2014,4,1,0,5,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (312,19,6,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (313,19,7,2014,6,1,0,7,0.8570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (314,19,8,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (315,19,9,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (316,19,10,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (317,19,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (318,19,12,2014,8,3,0,11,0.7270,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (319,19,13,2014,8,4,0,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (320,19,14,2014,9,4,0,13,0.6920,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (321,19,15,2014,10,4,0,14,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (322,19,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (323,19,17,2014,12,4,0,16,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (324,20,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (325,20,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (326,20,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (327,20,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (328,20,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (329,20,6,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (330,20,7,2014,3,4,0,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (331,20,8,2014,3,4,0,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (332,20,9,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (333,20,10,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (334,20,11,2014,3,7,0,10,0.3000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (335,20,12,2014,3,8,0,11,0.2730,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (336,20,13,2014,3,9,0,12,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (337,20,14,2014,4,9,0,13,0.3080,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (338,20,15,2014,5,9,0,14,0.3570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (339,20,16,2014,6,9,0,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (340,20,17,2014,6,10,0,16,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (341,21,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (342,21,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (343,21,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (344,21,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (345,21,5,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (346,21,6,2014,2,4,0,6,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (347,21,7,2014,2,5,0,7,0.2860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (348,21,8,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (349,21,9,2014,4,5,0,9,0.4440,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (350,21,10,2014,4,5,0,9,0.4440,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (351,21,11,2014,4,6,0,10,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (352,21,12,2014,4,7,0,11,0.3640,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (353,21,13,2014,5,7,0,12,0.4170,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (354,21,14,2014,6,7,0,13,0.4620,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (355,21,15,2014,6,8,0,14,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (356,21,16,2014,6,9,0,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (357,21,17,2014,7,9,0,16,0.4380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (358,22,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (359,22,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (360,22,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (361,22,4,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (362,22,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (363,22,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (364,22,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (365,22,8,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (366,22,9,2014,6,2,0,8,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (367,22,10,2014,7,2,0,9,0.7780,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (368,22,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (369,22,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (370,22,13,2014,8,4,0,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (371,22,14,2014,9,4,0,13,0.6920,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (372,22,15,2014,10,4,0,14,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (373,22,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (374,22,17,2014,11,5,0,16,0.6880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (375,23,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (376,23,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (377,23,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (378,23,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (379,23,5,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (380,23,6,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (381,23,7,2014,3,4,0,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (382,23,8,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (383,23,9,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (384,23,10,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (385,23,11,2014,4,6,0,10,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (386,23,12,2014,5,6,0,11,0.4550,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (387,23,13,2014,5,7,0,12,0.4170,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (388,23,14,2014,5,8,0,13,0.3850,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (389,23,15,2014,5,9,0,14,0.3570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (390,23,16,2014,5,10,0,15,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (391,23,17,2014,5,11,0,16,0.3130,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (392,24,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (393,24,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (394,24,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (395,24,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (396,24,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (397,24,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (398,24,7,2014,5,2,0,7,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (399,24,8,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (400,24,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (401,24,10,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (402,24,11,2014,7,3,0,10,0.7000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (403,24,12,2014,8,3,0,11,0.7270,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (404,24,13,2014,9,3,0,12,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (405,24,14,2014,10,3,0,13,0.7690,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (406,24,15,2014,10,4,0,14,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (407,24,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (408,24,17,2014,12,4,0,16,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (409,25,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (410,25,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (411,25,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (412,25,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (413,25,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (414,25,6,2014,3,2,1,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (415,25,7,2014,3,3,1,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (416,25,8,2014,3,4,1,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (417,25,9,2014,3,5,1,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (418,25,10,2014,3,6,1,10,0.3000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (419,25,11,2014,3,7,1,11,0.2730,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (420,25,12,2014,3,7,1,11,0.2730,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (421,25,13,2014,3,8,1,12,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (422,25,14,2014,4,8,1,13,0.3080,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (423,25,15,2014,5,8,1,14,0.3570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (424,25,16,2014,6,8,1,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (425,25,17,2014,7,8,1,16,0.4380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (426,26,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (427,26,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (428,26,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (429,26,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (430,26,5,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (431,26,6,2014,2,4,0,6,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (432,26,7,2014,2,5,0,7,0.2860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (433,26,8,2014,2,6,0,8,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (434,26,9,2014,2,6,0,8,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (435,26,10,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (436,26,11,2014,4,6,0,10,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (437,26,12,2014,4,7,0,11,0.3640,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (438,26,13,2014,5,7,0,12,0.4170,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (439,26,14,2014,5,8,0,13,0.3850,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (440,26,15,2014,5,9,0,14,0.3570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (441,26,16,2014,6,9,0,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (442,26,17,2014,6,10,0,16,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (443,27,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (444,27,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (445,27,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (446,27,4,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (447,27,5,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (448,27,6,2014,2,3,0,5,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (449,27,7,2014,2,4,0,6,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (450,27,8,2014,3,4,0,7,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (451,27,9,2014,4,4,0,8,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (452,27,10,2014,4,5,0,9,0.4440,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (453,27,11,2014,4,6,0,10,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (454,27,12,2014,4,7,0,11,0.3640,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (455,27,13,2014,5,7,0,12,0.4170,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (456,27,14,2014,5,8,0,13,0.3850,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (457,27,15,2014,6,8,0,14,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (458,27,16,2014,6,9,0,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (459,27,17,2014,7,9,0,16,0.4380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (460,28,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (461,28,2,2014,0,2,0,2,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (462,28,3,2014,0,3,0,3,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (463,28,4,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (464,28,5,2014,1,4,0,5,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (465,28,6,2014,1,5,0,6,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (466,28,7,2014,1,5,0,6,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (467,28,8,2014,1,6,0,7,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (468,28,9,2014,1,7,0,8,0.1250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (469,28,10,2014,1,8,0,9,0.1110,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (470,28,11,2014,2,8,0,10,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (471,28,12,2014,2,9,0,11,0.1820,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (472,28,13,2014,2,10,0,12,0.1670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (473,28,14,2014,2,11,0,13,0.1540,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (474,28,15,2014,2,12,0,14,0.1430,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (475,28,16,2014,2,13,0,15,0.1330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (476,28,17,2014,2,14,0,16,0.1250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (477,29,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (478,29,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (479,29,3,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (480,29,4,2014,2,1,0,3,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (481,29,5,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (482,29,6,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (483,29,7,2014,3,3,0,6,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (484,29,8,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (485,29,9,2014,5,3,0,8,0.6250,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (486,29,10,2014,6,3,0,9,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (487,29,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (488,29,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (489,29,13,2014,8,4,0,12,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (490,29,14,2014,9,4,0,13,0.6920,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (491,29,15,2014,10,4,0,14,0.7140,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (492,29,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (493,29,17,2014,12,4,0,16,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (494,30,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (495,30,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (496,30,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (497,30,4,2014,2,2,0,4,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (498,30,5,2014,3,2,0,5,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (499,30,6,2014,4,2,0,6,0.6670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (500,30,7,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (501,30,8,2014,4,3,0,7,0.5710,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (502,30,9,2014,4,4,0,8,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (503,30,10,2014,5,4,0,9,0.5560,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (504,30,11,2014,6,4,0,10,0.6000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (505,30,12,2014,7,4,0,11,0.6360,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (506,30,13,2014,7,5,0,12,0.5830,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (507,30,14,2014,7,6,0,13,0.5380,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (508,30,15,2014,7,7,0,14,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (509,30,16,2014,7,8,0,15,0.4670,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (510,30,17,2014,8,8,0,16,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (511,31,1,2014,1,0,0,1,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (512,31,2,2014,2,0,0,2,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (513,31,3,2014,3,0,0,3,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (514,31,4,2014,3,0,0,3,1.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (515,31,5,2014,3,1,0,4,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (516,31,6,2014,4,1,0,5,0.8000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (517,31,7,2014,5,1,0,6,0.8330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (518,31,8,2014,6,1,0,7,0.8570,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (519,31,9,2014,7,1,0,8,0.8750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (520,31,10,2014,8,1,0,9,0.8890,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (521,31,11,2014,9,1,0,10,0.9000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (522,31,12,2014,9,2,0,11,0.8180,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (523,31,13,2014,9,3,0,12,0.7500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (524,31,14,2014,10,3,0,13,0.7690,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (525,31,15,2014,11,3,0,14,0.7860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (526,31,16,2014,11,4,0,15,0.7330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (527,31,17,2014,11,5,0,16,0.6880,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (528,32,1,2014,0,1,0,1,0.0000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (529,32,2,2014,1,1,0,2,0.5000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (530,32,3,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (531,32,4,2014,1,2,0,3,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (532,32,5,2014,1,3,0,4,0.2500,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (533,32,6,2014,1,4,0,5,0.2000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (534,32,7,2014,2,4,0,6,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (535,32,8,2014,2,5,0,7,0.2860,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (536,32,9,2014,3,5,0,8,0.3750,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (537,32,10,2014,3,6,0,9,0.3330,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (538,32,11,2014,4,6,0,10,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (539,32,12,2014,4,7,0,11,0.3640,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (540,32,13,2014,5,7,0,12,0.4170,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (541,32,14,2014,6,7,0,13,0.4620,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (542,32,15,2014,6,8,0,14,0.4290,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (543,32,16,2014,6,9,0,15,0.4000,'2015-08-17 03:47:51',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (544,32,17,2014,6,10,0,16,0.3750,'2015-08-17 03:47:51',NULL);
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

-- Dump completed on 2015-09-04  9:50:14
