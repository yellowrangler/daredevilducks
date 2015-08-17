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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=big5;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=big5;
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
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--

LOCK TABLES `membertbl` WRITE;
/*!40000 ALTER TABLE `membertbl` DISABLE KEYS */;
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','bedouin','Male','airstream.png','admin','tarrant.cutler@gmail.com','68 Barley Neck Road','Manchester','MA','01944','781-342-0204','tarryc','active','2015-08-11 00:32:18',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (2,'Tammy Jamieson','ducky','Female','','admin','tzjamieson@yahoo.com','36 Pleasant Ridge','Camden','ME','04843','978-239-2650','123','active','2015-08-11 01:50:20',NULL);
/*!40000 ALTER TABLE `membertbl` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2145 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE teamweekstatstbl AUTO_INCREMENT = 1

--
-- Dumping data for table `teamweekstatstbl`
--

LOCK TABLES `teamweekstatstbl` WRITE;
/*!40000 ALTER TABLE `teamweekstatstbl` DISABLE KEYS */;
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (577,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (578,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (579,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (580,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (581,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (582,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (583,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (584,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (585,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (586,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (587,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (588,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (589,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (590,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (591,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (592,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (593,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (594,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (595,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (596,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (597,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (598,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (599,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (600,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (601,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (602,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (603,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (604,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (605,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (606,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (607,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (608,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (609,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (610,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (611,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (612,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (613,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (614,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (615,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (616,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (617,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (618,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (619,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (620,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (621,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (622,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (623,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (624,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (625,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (626,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (627,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (628,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (629,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (630,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (631,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (632,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (633,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (634,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (635,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (636,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (637,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (638,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (639,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (640,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (641,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (642,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (643,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (644,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (645,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (646,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (647,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (648,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (649,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (650,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (651,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (652,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (653,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (654,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (655,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (656,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (657,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (658,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (659,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (660,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (661,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (662,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (663,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (664,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (665,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (666,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (667,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (668,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (669,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (670,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (671,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (672,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (673,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (674,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (675,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (676,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (677,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (678,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (679,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (680,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (681,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (682,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (683,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (684,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (685,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (686,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (687,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (688,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (689,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (690,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (691,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (692,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (693,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (694,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (695,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (696,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (697,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (698,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (699,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (700,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (701,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (702,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (703,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (704,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (705,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (706,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (707,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (708,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (709,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (710,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (711,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (712,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (713,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (714,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (715,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (716,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (717,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (718,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (719,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (720,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (721,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (722,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (723,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (724,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (725,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (726,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (727,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (728,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (729,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (730,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (731,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (732,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (733,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (734,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (735,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (736,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (737,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (738,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (739,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (740,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (741,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (742,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (743,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (744,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (745,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (746,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (747,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (748,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (749,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (750,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (751,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (752,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (753,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (754,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (755,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (756,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (757,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (758,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (759,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (760,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (761,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (762,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (763,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (764,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (765,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (766,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (767,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (768,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (769,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (770,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (771,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (772,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (773,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (774,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (775,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (776,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (777,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (778,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (779,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (780,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (781,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (782,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (783,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (784,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (785,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (786,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (787,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (788,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (789,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (790,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (791,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (792,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (793,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (794,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (795,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (796,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (797,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (798,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (799,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (800,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (801,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (802,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (803,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (804,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (805,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (806,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (807,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (808,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (809,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (810,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (811,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (812,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (813,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (814,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (815,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (816,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (817,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (818,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (819,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (820,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (821,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (822,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (823,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (824,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (825,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (826,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (827,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (828,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (829,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (830,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (831,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (832,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (833,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (834,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (835,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (836,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (837,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (838,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (839,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (840,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (841,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (842,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (843,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (844,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (845,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (846,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (847,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (848,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (849,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (850,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (851,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (852,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (853,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (854,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (855,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (856,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (857,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (858,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (859,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (860,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (861,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (862,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (863,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (864,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (865,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (866,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (867,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (868,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (869,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (870,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (871,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (872,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (873,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (874,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (875,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (876,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (877,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (878,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (879,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (880,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (881,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (882,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (883,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (884,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (885,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (886,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (887,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (888,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (889,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (890,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (891,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (892,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (893,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (894,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (895,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (896,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (897,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (898,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (899,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (900,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (901,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (902,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (903,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (904,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (905,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (906,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (907,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (908,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (909,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (910,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (911,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (912,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (913,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (914,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (915,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (916,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (917,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (918,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (919,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (920,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (921,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (922,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (923,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (924,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (925,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (926,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (927,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (928,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (929,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (930,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (931,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (932,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (933,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (934,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (935,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (936,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (937,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (938,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (939,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (940,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (941,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (942,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (943,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (944,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (945,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (946,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (947,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (948,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (949,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (950,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (951,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (952,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (953,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (954,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (955,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (956,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (957,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (958,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (959,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (960,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (961,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (962,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (963,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (964,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (965,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (966,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (967,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (968,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (969,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (970,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (971,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (972,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (973,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (974,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (975,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (976,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (977,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (978,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (979,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (980,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (981,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (982,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (983,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (984,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (985,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (986,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (987,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (988,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (989,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (990,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (991,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (992,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (993,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (994,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (995,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (996,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (997,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (998,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (999,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1000,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1001,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1002,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1003,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1004,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1005,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1006,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1007,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1008,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1009,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1010,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1011,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1012,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1013,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1014,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1015,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1016,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1017,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1018,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1019,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1020,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1021,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1022,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1023,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1024,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1025,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1026,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1027,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1028,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1029,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1030,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1031,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1032,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1033,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1034,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1035,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1036,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1037,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1038,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1039,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1040,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1041,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1042,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1043,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1044,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1045,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1046,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1047,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1048,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1049,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1050,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1051,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1052,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1053,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1054,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1055,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1056,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1057,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1058,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1059,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1060,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1061,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1062,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1063,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1064,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1065,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1066,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1067,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1068,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1069,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1070,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1071,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1072,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1073,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1074,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1075,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1076,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1077,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1078,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1079,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1080,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1081,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1082,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1083,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1084,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1085,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1086,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1087,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1088,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1089,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1090,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1091,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1092,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1093,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1094,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1095,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1096,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1097,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1098,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1099,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1100,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1101,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1102,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1103,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1104,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1105,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1106,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1107,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1108,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1109,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1110,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1111,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1112,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1113,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1114,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1115,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1116,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1117,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1118,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1119,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1120,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1121,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1122,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1123,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1124,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1125,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1126,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1127,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1128,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1129,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1130,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1131,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1132,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1133,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1134,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1135,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1136,1,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1137,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1138,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1139,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1140,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1141,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1142,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1143,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1144,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1145,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1146,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1147,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1148,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1149,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1150,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1151,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1152,2,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1153,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1154,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1155,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1156,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1157,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1158,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1159,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1160,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1161,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1162,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1163,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1164,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1165,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1166,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1167,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1168,3,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1169,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1170,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1171,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1172,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1173,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1174,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1175,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1176,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1177,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1178,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1179,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1180,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1181,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1182,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1183,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1184,4,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1185,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1186,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1187,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1188,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1189,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1190,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1191,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1192,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1193,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1194,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1195,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1196,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1197,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1198,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1199,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1200,5,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1201,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1202,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1203,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1204,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1205,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1206,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1207,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1208,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1209,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1210,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1211,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1212,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1213,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1214,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1215,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1216,6,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1217,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1218,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1219,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1220,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1221,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1222,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1223,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1224,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1225,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1226,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1227,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1228,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1229,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1230,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1231,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1232,7,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1233,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1234,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1235,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1236,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1237,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1238,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1239,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1240,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1241,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1242,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1243,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1244,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1245,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1246,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1247,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1248,8,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1249,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1250,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1251,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1252,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1253,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1254,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1255,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1256,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1257,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1258,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1259,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1260,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1261,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1262,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1263,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1264,9,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1265,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1266,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1267,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1268,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1269,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1270,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1271,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1272,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1273,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1274,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1275,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1276,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1277,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1278,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1279,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1280,10,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1281,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1282,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1283,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1284,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1285,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1286,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1287,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1288,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1289,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1290,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1291,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1292,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1293,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1294,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1295,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1296,11,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1297,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1298,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1299,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1300,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1301,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1302,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1303,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1304,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1305,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1306,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1307,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1308,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1309,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1310,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1311,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1312,12,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1313,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1314,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1315,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1316,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1317,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1318,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1319,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1320,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1321,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1322,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1323,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1324,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1325,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1326,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1327,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1328,13,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1329,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1330,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1331,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1332,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1333,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1334,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1335,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1336,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1337,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1338,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1339,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1340,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1341,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1342,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1343,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1344,14,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1345,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1346,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1347,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1348,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1349,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1350,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1351,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1352,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1353,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1354,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1355,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1356,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1357,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1358,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1359,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1360,15,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1361,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1362,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1363,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1364,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1365,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1366,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1367,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1368,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1369,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1370,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1371,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1372,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1373,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1374,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1375,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1376,16,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1377,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1378,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1379,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1380,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1381,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1382,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1383,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1384,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1385,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1386,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1387,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1388,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1389,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1390,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1391,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1392,17,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1393,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1394,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1395,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1396,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1397,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1398,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1399,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1400,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1401,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1402,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1403,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1404,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1405,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1406,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1407,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1408,18,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1409,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1410,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1411,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1412,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1413,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1414,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1415,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1416,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1417,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1418,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1419,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1420,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1421,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1422,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1423,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1424,19,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1425,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1426,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1427,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1428,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1429,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1430,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1431,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1432,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1433,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1434,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1435,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1436,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1437,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1438,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1439,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1440,20,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1441,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1442,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1443,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1444,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1445,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1446,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1447,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1448,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1449,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1450,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1451,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1452,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1453,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1454,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1455,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1456,21,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1457,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1458,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1459,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1460,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1461,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1462,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1463,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1464,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1465,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1466,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1467,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1468,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1469,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1470,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1471,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1472,22,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1473,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1474,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1475,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1476,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1477,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1478,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1479,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1480,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1481,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1482,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1483,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1484,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1485,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1486,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1487,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1488,23,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1489,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1490,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1491,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1492,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1493,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1494,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1495,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1496,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1497,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1498,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1499,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1500,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1501,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1502,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1503,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1504,24,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1505,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1506,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1507,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1508,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1509,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1510,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1511,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1512,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1513,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1514,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1515,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1516,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1517,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1518,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1519,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1520,25,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1521,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1522,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1523,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1524,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1525,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1526,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1527,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1528,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1529,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1530,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1531,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1532,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1533,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1534,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1535,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1536,26,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1537,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1538,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1539,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1540,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1541,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1542,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1543,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1544,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1545,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1546,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1547,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1548,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1549,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1550,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1551,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1552,27,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1553,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1554,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1555,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1556,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1557,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1558,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1559,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1560,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1561,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1562,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1563,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1564,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1565,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1566,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1567,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1568,28,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1569,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1570,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1571,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1572,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1573,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1574,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1575,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1576,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1577,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1578,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1579,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1580,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1581,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1582,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1583,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1584,29,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1585,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1586,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1587,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1588,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1589,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1590,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1591,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1592,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1593,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1594,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1595,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1596,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1597,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1598,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1599,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1600,30,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1601,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1602,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1603,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1604,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1605,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1606,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1607,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1608,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1609,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1610,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1611,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1612,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1613,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1614,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1615,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1616,31,1,2014,1,0,0,1,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1617,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1618,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1619,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1620,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1621,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1622,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1623,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1624,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1625,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1626,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1627,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1628,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1629,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1630,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1631,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1632,32,1,2014,0,1,0,1,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1633,1,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1634,1,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1635,1,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1636,1,5,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1637,1,6,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1638,1,7,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1639,1,8,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1640,1,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1641,1,10,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1642,1,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1643,1,12,2014,6,5,0,11,0.5450,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1644,1,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1645,1,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1646,1,15,2014,7,7,0,14,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1647,1,16,2014,8,7,0,15,0.5330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1648,1,17,2014,8,8,0,16,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1649,2,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1650,2,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1651,2,4,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1652,2,5,2014,1,4,0,5,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1653,2,6,2014,1,5,0,6,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1654,2,7,2014,1,6,0,7,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1655,2,8,2014,1,7,0,8,0.1250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1656,2,9,2014,1,8,0,9,0.1110,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1657,2,10,2014,2,8,0,10,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1658,2,11,2014,2,8,0,10,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1659,2,12,2014,2,9,0,11,0.1820,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1660,2,13,2014,2,10,0,12,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1661,2,14,2014,2,11,0,13,0.1540,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1662,2,15,2014,3,11,0,14,0.2140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1663,2,16,2014,3,12,0,15,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1664,2,17,2014,4,12,0,16,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1665,3,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1666,3,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1667,3,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1668,3,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1669,3,6,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1670,3,7,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1671,3,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1672,3,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1673,3,10,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1674,3,11,2014,5,5,0,10,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1675,3,12,2014,6,5,0,11,0.5450,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1676,3,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1677,3,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1678,3,15,2014,8,6,0,14,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1679,3,16,2014,8,7,0,15,0.5330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1680,3,17,2014,9,7,0,16,0.5630,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1681,4,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1682,4,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1683,4,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1684,4,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1685,4,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1686,4,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1687,4,8,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1688,4,9,2014,7,2,0,9,0.7780,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1689,4,10,2014,7,2,0,9,0.7780,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1690,4,11,2014,8,2,0,10,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1691,4,12,2014,9,2,0,11,0.8180,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1692,4,13,2014,9,3,0,12,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1693,4,14,2014,10,3,0,13,0.7690,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1694,4,15,2014,11,3,0,14,0.7860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1695,4,16,2014,12,3,0,15,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1696,4,17,2014,12,4,0,16,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1697,5,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1698,5,3,2014,3,0,0,3,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1699,5,4,2014,3,0,0,3,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1700,5,5,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1701,5,6,2014,3,1,1,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1702,5,7,2014,3,2,1,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1703,5,8,2014,4,2,1,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1704,5,9,2014,5,2,1,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1705,5,10,2014,5,3,1,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1706,5,11,2014,6,3,1,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1707,5,12,2014,7,3,1,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1708,5,13,2014,8,3,1,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1709,5,14,2014,8,4,1,13,0.6150,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1710,5,15,2014,9,4,1,14,0.6430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1711,5,16,2014,10,4,1,15,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1712,5,17,2014,10,5,1,16,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1713,6,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1714,6,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1715,6,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1716,6,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1717,6,6,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1718,6,7,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1719,6,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1720,6,9,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1721,6,10,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1722,6,11,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1723,6,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1724,6,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1725,6,14,2014,8,5,0,13,0.6150,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1726,6,15,2014,9,5,0,14,0.6430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1727,6,16,2014,10,5,0,15,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1728,6,17,2014,11,5,0,16,0.6880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1729,7,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1730,7,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1731,7,4,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1732,7,5,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1733,7,6,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1734,7,7,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1735,7,8,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1736,7,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1737,7,10,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1738,7,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1739,7,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1740,7,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1741,7,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1742,7,15,2014,7,7,0,14,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1743,7,16,2014,7,8,0,15,0.4670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1744,7,17,2014,7,9,0,16,0.4380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1745,8,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1746,8,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1747,8,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1748,8,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1749,8,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1750,8,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1751,8,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1752,8,9,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1753,8,10,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1754,8,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1755,8,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1756,8,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1757,8,14,2014,8,5,0,13,0.6150,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1758,8,15,2014,9,5,0,14,0.6430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1759,8,16,2014,9,6,0,15,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1760,8,17,2014,10,6,0,16,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1761,9,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1762,9,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1763,9,4,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1764,9,5,2014,1,4,0,5,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1765,9,6,2014,2,4,0,6,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1766,9,7,2014,2,5,0,7,0.2860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1767,9,8,2014,2,6,0,8,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1768,9,9,2014,2,6,0,8,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1769,9,10,2014,2,7,0,9,0.2220,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1770,9,11,2014,2,8,0,10,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1771,9,12,2014,2,9,0,11,0.1820,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1772,9,13,2014,2,10,0,12,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1773,9,14,2014,2,11,0,13,0.1540,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1774,9,15,2014,2,12,0,14,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1775,9,16,2014,2,13,0,15,0.1330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1776,9,17,2014,2,14,0,16,0.1250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1777,10,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1778,10,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1779,10,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1780,10,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1781,10,6,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1782,10,7,2014,3,4,0,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1783,10,8,2014,4,4,0,8,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1784,10,9,2014,4,5,0,9,0.4440,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1785,10,10,2014,4,5,0,9,0.4440,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1786,10,11,2014,5,5,0,10,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1787,10,12,2014,5,6,0,11,0.4550,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1788,10,13,2014,6,6,0,12,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1789,10,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1790,10,15,2014,7,7,0,14,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1791,10,16,2014,8,7,0,15,0.5330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1792,10,17,2014,9,7,0,16,0.5630,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1793,11,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1794,11,3,2014,0,3,0,3,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1795,11,4,2014,0,4,0,4,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1796,11,5,2014,0,5,0,5,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1797,11,6,2014,0,6,0,6,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1798,11,7,2014,1,6,0,7,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1799,11,8,2014,1,7,0,8,0.1250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1800,11,9,2014,1,8,0,9,0.1110,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1801,11,10,2014,1,9,0,10,0.1000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1802,11,11,2014,1,9,0,10,0.1000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1803,11,12,2014,1,10,0,11,0.0910,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1804,11,13,2014,2,10,0,12,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1805,11,14,2014,2,11,0,13,0.1540,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1806,11,15,2014,2,12,0,14,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1807,11,16,2014,3,12,0,15,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1808,11,17,2014,3,13,0,16,0.1880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1809,12,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1810,12,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1811,12,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1812,12,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1813,12,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1814,12,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1815,12,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1816,12,9,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1817,12,10,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1818,12,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1819,12,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1820,12,13,2014,8,4,0,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1821,12,14,2014,9,4,0,13,0.6920,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1822,12,15,2014,10,4,0,14,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1823,12,16,2014,10,5,0,15,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1824,12,17,2014,11,5,0,16,0.6880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1825,13,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1826,13,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1827,13,4,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1828,13,5,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1829,13,6,2014,4,1,0,5,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1830,13,7,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1831,13,8,2014,6,1,0,7,0.8570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1832,13,9,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1833,13,10,2014,7,2,0,9,0.7780,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1834,13,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1835,13,12,2014,8,3,0,11,0.7270,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1836,13,13,2014,9,3,0,12,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1837,13,14,2014,10,3,0,13,0.7690,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1838,13,15,2014,11,3,0,14,0.7860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1839,13,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1840,13,17,2014,12,4,0,16,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1841,14,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1842,14,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1843,14,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1844,14,5,2014,4,1,0,5,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1845,14,6,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1846,14,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1847,14,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1848,14,9,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1849,14,10,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1850,14,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1851,14,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1852,14,13,2014,8,4,0,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1853,14,14,2014,8,5,0,13,0.6150,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1854,14,15,2014,8,6,0,14,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1855,14,16,2014,9,6,0,15,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1856,14,17,2014,9,7,0,16,0.5630,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1857,15,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1858,15,3,2014,0,3,0,3,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1859,15,4,2014,0,4,0,4,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1860,15,5,2014,0,4,0,4,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1861,15,6,2014,0,5,0,5,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1862,15,7,2014,0,6,0,6,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1863,15,8,2014,0,7,0,7,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1864,15,9,2014,0,8,0,8,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1865,15,10,2014,0,9,0,9,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1866,15,11,2014,0,10,0,10,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1867,15,12,2014,1,10,0,11,0.0910,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1868,15,13,2014,1,11,0,12,0.0830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1869,15,14,2014,2,11,0,13,0.1540,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1870,15,15,2014,2,12,0,14,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1871,15,16,2014,3,12,0,15,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1872,15,17,2014,3,13,0,16,0.1880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1873,16,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1874,16,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1875,16,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1876,16,5,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1877,16,6,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1878,16,7,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1879,16,8,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1880,16,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1881,16,10,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1882,16,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1883,16,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1884,16,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1885,16,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1886,16,15,2014,8,6,0,14,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1887,16,16,2014,8,7,0,15,0.5330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1888,16,17,2014,9,7,0,16,0.5630,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1889,17,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1890,17,3,2014,3,0,0,3,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1891,17,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1892,17,5,2014,4,1,0,5,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1893,17,6,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1894,17,7,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1895,17,8,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1896,17,9,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1897,17,10,2014,7,2,0,9,0.7780,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1898,17,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1899,17,12,2014,8,3,0,11,0.7270,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1900,17,13,2014,9,3,0,12,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1901,17,14,2014,9,4,0,13,0.6920,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1902,17,15,2014,9,5,0,14,0.6430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1903,17,16,2014,9,6,0,15,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1904,17,17,2014,10,6,0,16,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1905,18,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1906,18,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1907,18,4,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1908,18,5,2014,1,4,0,5,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1909,18,6,2014,1,5,0,6,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1910,18,7,2014,2,5,0,7,0.2860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1911,18,8,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1912,18,9,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1913,18,10,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1914,18,11,2014,3,7,0,10,0.3000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1915,18,12,2014,3,8,0,11,0.2730,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1916,18,13,2014,3,9,0,12,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1917,18,14,2014,3,10,0,13,0.2310,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1918,18,15,2014,3,11,0,14,0.2140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1919,18,16,2014,4,11,0,15,0.2670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1920,18,17,2014,4,12,0,16,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1921,19,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1922,19,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1923,19,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1924,19,5,2014,4,1,0,5,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1925,19,6,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1926,19,7,2014,6,1,0,7,0.8570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1927,19,8,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1928,19,9,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1929,19,10,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1930,19,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1931,19,12,2014,8,3,0,11,0.7270,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1932,19,13,2014,8,4,0,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1933,19,14,2014,9,4,0,13,0.6920,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1934,19,15,2014,10,4,0,14,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1935,19,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1936,19,17,2014,12,4,0,16,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1937,20,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1938,20,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1939,20,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1940,20,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1941,20,6,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1942,20,7,2014,3,4,0,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1943,20,8,2014,3,4,0,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1944,20,9,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1945,20,10,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1946,20,11,2014,3,7,0,10,0.3000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1947,20,12,2014,3,8,0,11,0.2730,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1948,20,13,2014,3,9,0,12,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1949,20,14,2014,4,9,0,13,0.3080,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1950,20,15,2014,5,9,0,14,0.3570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1951,20,16,2014,6,9,0,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1952,20,17,2014,6,10,0,16,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1953,21,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1954,21,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1955,21,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1956,21,5,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1957,21,6,2014,2,4,0,6,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1958,21,7,2014,2,5,0,7,0.2860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1959,21,8,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1960,21,9,2014,4,5,0,9,0.4440,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1961,21,10,2014,4,5,0,9,0.4440,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1962,21,11,2014,4,6,0,10,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1963,21,12,2014,4,7,0,11,0.3640,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1964,21,13,2014,5,7,0,12,0.4170,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1965,21,14,2014,6,7,0,13,0.4620,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1966,21,15,2014,6,8,0,14,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1967,21,16,2014,6,9,0,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1968,21,17,2014,7,9,0,16,0.4380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1969,22,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1970,22,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1971,22,4,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1972,22,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1973,22,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1974,22,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1975,22,8,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1976,22,9,2014,6,2,0,8,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1977,22,10,2014,7,2,0,9,0.7780,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1978,22,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1979,22,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1980,22,13,2014,8,4,0,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1981,22,14,2014,9,4,0,13,0.6920,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1982,22,15,2014,10,4,0,14,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1983,22,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1984,22,17,2014,11,5,0,16,0.6880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1985,23,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1986,23,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1987,23,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1988,23,5,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1989,23,6,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1990,23,7,2014,3,4,0,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1991,23,8,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1992,23,9,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1993,23,10,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1994,23,11,2014,4,6,0,10,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1995,23,12,2014,5,6,0,11,0.4550,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1996,23,13,2014,5,7,0,12,0.4170,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1997,23,14,2014,5,8,0,13,0.3850,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1998,23,15,2014,5,9,0,14,0.3570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1999,23,16,2014,5,10,0,15,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2000,23,17,2014,5,11,0,16,0.3130,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2001,24,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2002,24,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2003,24,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2004,24,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2005,24,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2006,24,7,2014,5,2,0,7,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2007,24,8,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2008,24,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2009,24,10,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2010,24,11,2014,7,3,0,10,0.7000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2011,24,12,2014,8,3,0,11,0.7270,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2012,24,13,2014,9,3,0,12,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2013,24,14,2014,10,3,0,13,0.7690,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2014,24,15,2014,10,4,0,14,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2015,24,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2016,24,17,2014,12,4,0,16,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2017,25,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2018,25,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2019,25,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2020,25,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2021,25,6,2014,3,2,1,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2022,25,7,2014,3,3,1,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2023,25,8,2014,3,4,1,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2024,25,9,2014,3,5,1,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2025,25,10,2014,3,6,1,10,0.3000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2026,25,11,2014,3,7,1,11,0.2730,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2027,25,12,2014,3,7,1,11,0.2730,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2028,25,13,2014,3,8,1,12,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2029,25,14,2014,4,8,1,13,0.3080,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2030,25,15,2014,5,8,1,14,0.3570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2031,25,16,2014,6,8,1,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2032,25,17,2014,7,8,1,16,0.4380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2033,26,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2034,26,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2035,26,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2036,26,5,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2037,26,6,2014,2,4,0,6,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2038,26,7,2014,2,5,0,7,0.2860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2039,26,8,2014,2,6,0,8,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2040,26,9,2014,2,6,0,8,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2041,26,10,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2042,26,11,2014,4,6,0,10,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2043,26,12,2014,4,7,0,11,0.3640,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2044,26,13,2014,5,7,0,12,0.4170,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2045,26,14,2014,5,8,0,13,0.3850,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2046,26,15,2014,5,9,0,14,0.3570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2047,26,16,2014,6,9,0,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2048,26,17,2014,6,10,0,16,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2049,27,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2050,27,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2051,27,4,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2052,27,5,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2053,27,6,2014,2,3,0,5,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2054,27,7,2014,2,4,0,6,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2055,27,8,2014,3,4,0,7,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2056,27,9,2014,4,4,0,8,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2057,27,10,2014,4,5,0,9,0.4440,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2058,27,11,2014,4,6,0,10,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2059,27,12,2014,4,7,0,11,0.3640,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2060,27,13,2014,5,7,0,12,0.4170,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2061,27,14,2014,5,8,0,13,0.3850,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2062,27,15,2014,6,8,0,14,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2063,27,16,2014,6,9,0,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2064,27,17,2014,7,9,0,16,0.4380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2065,28,2,2014,0,2,0,2,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2066,28,3,2014,0,3,0,3,0.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2067,28,4,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2068,28,5,2014,1,4,0,5,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2069,28,6,2014,1,5,0,6,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2070,28,7,2014,1,5,0,6,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2071,28,8,2014,1,6,0,7,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2072,28,9,2014,1,7,0,8,0.1250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2073,28,10,2014,1,8,0,9,0.1110,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2074,28,11,2014,2,8,0,10,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2075,28,12,2014,2,9,0,11,0.1820,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2076,28,13,2014,2,10,0,12,0.1670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2077,28,14,2014,2,11,0,13,0.1540,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2078,28,15,2014,2,12,0,14,0.1430,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2079,28,16,2014,2,13,0,15,0.1330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2080,28,17,2014,2,14,0,16,0.1250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2081,29,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2082,29,3,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2083,29,4,2014,2,1,0,3,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2084,29,5,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2085,29,6,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2086,29,7,2014,3,3,0,6,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2087,29,8,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2088,29,9,2014,5,3,0,8,0.6250,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2089,29,10,2014,6,3,0,9,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2090,29,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2091,29,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2092,29,13,2014,8,4,0,12,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2093,29,14,2014,9,4,0,13,0.6920,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2094,29,15,2014,10,4,0,14,0.7140,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2095,29,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2096,29,17,2014,12,4,0,16,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2097,30,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2098,30,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2099,30,4,2014,2,2,0,4,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2100,30,5,2014,3,2,0,5,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2101,30,6,2014,4,2,0,6,0.6670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2102,30,7,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2103,30,8,2014,4,3,0,7,0.5710,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2104,30,9,2014,4,4,0,8,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2105,30,10,2014,5,4,0,9,0.5560,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2106,30,11,2014,6,4,0,10,0.6000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2107,30,12,2014,7,4,0,11,0.6360,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2108,30,13,2014,7,5,0,12,0.5830,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2109,30,14,2014,7,6,0,13,0.5380,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2110,30,15,2014,7,7,0,14,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2111,30,16,2014,7,8,0,15,0.4670,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2112,30,17,2014,8,8,0,16,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2113,31,2,2014,2,0,0,2,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2114,31,3,2014,3,0,0,3,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2115,31,4,2014,3,0,0,3,1.0000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2116,31,5,2014,3,1,0,4,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2117,31,6,2014,4,1,0,5,0.8000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2118,31,7,2014,5,1,0,6,0.8330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2119,31,8,2014,6,1,0,7,0.8570,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2120,31,9,2014,7,1,0,8,0.8750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2121,31,10,2014,8,1,0,9,0.8890,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2122,31,11,2014,9,1,0,10,0.9000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2123,31,12,2014,9,2,0,11,0.8180,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2124,31,13,2014,9,3,0,12,0.7500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2125,31,14,2014,10,3,0,13,0.7690,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2126,31,15,2014,11,3,0,14,0.7860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2127,31,16,2014,11,4,0,15,0.7330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2128,31,17,2014,11,5,0,16,0.6880,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2129,32,2,2014,1,1,0,2,0.5000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2130,32,3,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2131,32,4,2014,1,2,0,3,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2132,32,5,2014,1,3,0,4,0.2500,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2133,32,6,2014,1,4,0,5,0.2000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2134,32,7,2014,2,4,0,6,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2135,32,8,2014,2,5,0,7,0.2860,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2136,32,9,2014,3,5,0,8,0.3750,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2137,32,10,2014,3,6,0,9,0.3330,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2138,32,11,2014,4,6,0,10,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2139,32,12,2014,4,7,0,11,0.3640,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2140,32,13,2014,5,7,0,12,0.4170,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2141,32,14,2014,6,7,0,13,0.4620,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2142,32,15,2014,6,8,0,14,0.4290,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2143,32,16,2014,6,9,0,15,0.4000,'2015-08-16 15:14:06',NULL);
INSERT INTO `teamweekstatstbl` (`id`, `teamid`, `week`, `season`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2144,32,17,2014,6,10,0,16,0.3750,'2015-08-16 15:14:06',NULL);
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

-- Dump completed on 2015-08-16 15:26:25
