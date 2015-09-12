-- MySQL dump 10.14  Distrib 5.5.41-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	5.5.41-MariaDB

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
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (1,2014,1,1,'Sep 4','Thu',3,'8:30 pm',29,24,36,16,2,'2014-09-04 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (2,2014,1,2,'Sep 7','Sun',1,'1:00 pm',26,27,37,34,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (3,2014,1,3,'Sep 7','Sun',1,'1:00 pm',23,3,20,23,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (4,2014,1,4,'Sep 7','Sun',2,'1:00 pm',16,9,10,26,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (5,2014,1,5,'Sep 7','Sun',1,'1:00 pm',32,21,6,34,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (6,2014,1,6,'Sep 7','Sun',2,'1:00 pm',1,4,33,20,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (7,2014,1,7,'Sep 7','Sun',2,'1:00 pm',2,15,19,14,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (8,2014,1,8,'Sep 7','Sun',2,'1:00 pm',17,11,34,17,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (9,2014,1,9,'Sep 7','Sun',2,'1:00 pm',6,7,30,27,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (10,2014,1,10,'Sep 7','Sun',2,'1:00 pm',8,5,16,23,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (11,2014,1,11,'Sep 7','Sun',1,'1:00 pm',10,18,17,6,2,'2014-09-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (12,2014,1,12,'Sep 7','Sun',1,'4:25 pm',19,30,17,28,2,'2014-09-07 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (13,2014,1,13,'Sep 7','Sun',1,'4:25 pm',28,25,14,20,2,'2014-09-07 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (14,2014,1,14,'Sep 7','Sun',3,'8:30 pm',13,12,31,24,2,'2014-09-07 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (15,2014,1,15,'Sep 8','Mon',5,'7:10 pm',22,20,35,14,2,'2014-09-08 19:10:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (16,2014,1,16,'Sep 8','Mon',5,'10:20 pm',31,14,18,17,2,'2014-09-08 22:20:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (17,2014,2,17,'Sep 11','Thu',2,'8:25 pm',8,6,26,6,2,'2014-09-11 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (18,2014,2,18,'Sep 14','Sun',2,'1:00 pm',3,1,29,10,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (19,2014,2,19,'Sep 14','Sun',2,'1:00 pm',5,26,24,10,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (20,2014,2,20,'Sep 14','Sun',1,'1:00 pm',7,27,26,24,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (21,2014,2,21,'Sep 14','Sun',1,'1:00 pm',9,19,10,26,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (22,2014,2,22,'Sep 14','Sun',2,'1:00 pm',21,4,7,30,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (23,2014,2,23,'Sep 14','Sun',1,'1:00 pm',20,31,14,25,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (24,2014,2,24,'Sep 14','Sun',2,'1:00 pm',18,11,41,10,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (25,2014,2,25,'Sep 14','Sun',1,'1:00 pm',25,22,24,7,2,'2014-09-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (26,2014,2,26,'Sep 14','Sun',1,'4:05 pm',14,29,30,21,2,'2014-09-14 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (27,2014,2,27,'Sep 14','Sun',1,'4:05 pm',28,32,17,19,2,'2014-09-14 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (28,2014,2,28,'Sep 14','Sun',2,'4:25 pm',13,16,24,17,2,'2014-09-14 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (29,2014,2,29,'Sep 14','Sun',2,'4:25 pm',24,2,31,24,2,'2014-09-14 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (30,2014,2,30,'Sep 14','Sun',2,'4:25 pm',15,10,14,30,2,'2014-09-14 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (31,2014,2,31,'Sep 14','Sun',3,'8:30 pm',30,23,20,28,2,'2014-09-14 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (32,2014,2,32,'Sep 15','Mon',5,'8:30 pm',12,17,27,30,2,'2014-09-15 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (33,2014,3,33,'Sep 18','Thu',2,'8:25 pm',26,28,56,14,2,'2014-09-18 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (34,2014,3,34,'Sep 21','Sun',2,'1:00 pm',3,14,10,22,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (35,2014,3,35,'Sep 21','Sun',2,'1:00 pm',5,9,33,7,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (36,2014,3,36,'Sep 21','Sun',2,'1:00 pm',7,8,21,23,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (37,2014,3,37,'Sep 21','Sun',1,'1:00 pm',22,24,19,7,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (38,2014,3,38,'Sep 21','Sun',1,'1:00 pm',32,19,31,34,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (39,2014,3,39,'Sep 21','Sun',2,'1:00 pm',4,15,16,9,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (40,2014,3,40,'Sep 21','Sun',1,'1:00 pm',27,21,20,9,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (41,2014,3,41,'Sep 21','Sun',2,'1:00 pm',20,10,30,17,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (42,2014,3,42,'Sep 21','Sun',1,'1:00 pm',17,18,37,34,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (43,2014,3,43,'Sep 21','Sun',2,'1:00 pm',11,12,17,44,2,'2014-09-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (44,2014,3,44,'Sep 21','Sun',1,'4:05 pm',31,30,23,14,2,'2014-09-21 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (45,2014,3,45,'Sep 21','Sun',2,'4:25 pm',1,16,15,34,2,'2014-09-21 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (46,2014,3,46,'Sep 21','Sun',2,'4:25 pm',29,13,26,20,2,'2014-09-21 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (47,2014,3,47,'Sep 21','Sun',3,'8:30 pm',25,6,19,37,2,'2014-09-21 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (48,2014,3,48,'Sep 22','Mon',5,'8:30 pm',2,23,19,27,2,'2014-09-22 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (49,2014,4,49,'Sep 25','Thu',2,'8:25 pm',18,20,14,45,2,'2014-09-25 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (50,2014,4,50,'Sep 28','Sun',1,'1:00 pm',23,24,17,38,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (51,2014,4,51,'Sep 28','Sun',2,'1:00 pm',12,9,41,17,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (52,2014,4,52,'Sep 28','Sun',2,'1:00 pm',15,1,14,38,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (53,2014,4,53,'Sep 28','Sun',1,'1:00 pm',2,22,17,24,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (54,2014,4,54,'Sep 28','Sun',1,'1:00 pm',6,28,24,27,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (55,2014,4,55,'Sep 28','Sun',2,'1:00 pm',8,25,38,10,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (56,2014,4,56,'Sep 28','Sun',2,'1:00 pm',10,3,23,17,2,'2014-09-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (57,2014,4,57,'Sep 28','Sun',2,'4:05 pm',14,11,33,14,2,'2014-09-28 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (58,2014,4,58,'Sep 28','Sun',1,'4:25 pm',21,26,41,28,2,'2014-09-28 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (59,2014,4,59,'Sep 28','Sun',1,'4:25 pm',30,17,26,21,2,'2014-09-28 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (60,2014,4,60,'Sep 28','Sun',3,'8:30 pm',19,27,38,17,2,'2014-09-28 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (61,2014,4,61,'Sep 29','Mon',5,'8:30 pm',16,4,41,14,2,'2014-09-29 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (62,2014,5,62,'Oct 2','Thu',2,'8:25 pm',24,21,42,10,2,'2014-10-02 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (63,2014,5,63,'Oct 5','Sun',2,'1:00 pm',19,10,20,17,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (64,2014,5,64,'Oct 5','Sun',1,'1:00 pm',22,3,14,17,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (65,2014,5,65,'Oct 5','Sun',2,'1:00 pm',9,7,28,29,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (66,2014,5,66,'Oct 5','Sun',2,'1:00 pm',12,8,20,13,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (67,2014,5,67,'Oct 5','Sun',1,'1:00 pm',27,28,37,31,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (68,2014,5,68,'Oct 5','Sun',1,'1:00 pm',20,26,30,20,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (69,2014,5,69,'Oct 5','Sun',1,'1:00 pm',17,32,34,28,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (70,2014,5,70,'Oct 5','Sun',1,'1:00 pm',25,23,31,24,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (71,2014,5,71,'Oct 5','Sun',2,'1:00 pm',11,6,9,17,2,'2014-10-05 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (72,2014,5,72,'Oct 5','Sun',1,'4:05 pm',13,31,41,20,2,'2014-10-05 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (73,2014,5,73,'Oct 5','Sun',2,'4:25 pm',14,2,31,0,2,'2014-10-05 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (74,2014,5,74,'Oct 5','Sun',2,'4:25 pm',30,16,22,17,2,'2014-10-05 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (75,2014,5,75,'Oct 5','Sun',3,'8:30 pm',4,5,43,17,2,'2014-10-05 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (76,2014,5,76,'Oct 6','Mon',5,'8:30 pm',18,29,17,27,2,'2014-10-06 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (77,2014,6,77,'Oct 9','Thu',2,'8:25 pm',10,12,28,33,2,'2014-10-09 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (78,2014,6,78,'Oct 12','Sun',1,'1:00 pm',26,23,13,27,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (79,2014,6,79,'Oct 12','Sun',2,'1:00 pm',3,4,22,37,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (80,2014,6,80,'Oct 12','Sun',1,'1:00 pm',5,25,37,37,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (81,2014,6,81,'Oct 12','Sun',2,'1:00 pm',7,6,31,10,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (82,2014,6,82,'Oct 12','Sun',2,'1:00 pm',9,11,16,14,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (83,2014,6,83,'Oct 12','Sun',1,'1:00 pm',1,24,24,27,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (84,2014,6,84,'Oct 12','Sun',1,'1:00 pm',21,22,3,17,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (85,2014,6,85,'Oct 12','Sun',2,'1:00 pm',2,13,17,31,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (86,2014,6,86,'Oct 12','Sun',2,'1:00 pm',28,8,17,48,2,'2014-10-12 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (87,2014,6,87,'Oct 12','Sun',2,'4:05 pm',15,14,28,31,2,'2014-10-12 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (88,2014,6,88,'Oct 12','Sun',1,'4:25 pm',31,18,30,20,2,'2014-10-12 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (89,2014,6,89,'Oct 12','Sun',1,'4:25 pm',29,19,23,30,2,'2014-10-12 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (90,2014,6,90,'Oct 12','Sun',3,'8:30 pm',17,20,27,0,2,'2014-10-12 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (91,2014,6,91,'Oct 13','Mon',5,'8:30 pm',32,30,17,31,2,'2014-10-13 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (92,2014,7,92,'Oct 16','Thu',2,'8:25 pm',4,2,27,25,2,'2014-10-16 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (93,2014,7,93,'Oct 19','Sun',1,'1:00 pm',3,21,17,16,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (94,2014,7,94,'Oct 19','Sun',2,'1:00 pm',23,1,14,27,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (95,2014,7,95,'Oct 19','Sun',1,'1:00 pm',22,27,24,23,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (96,2014,7,96,'Oct 19','Sun',1,'1:00 pm',24,25,38,17,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (97,2014,7,97,'Oct 19','Sun',2,'1:00 pm',12,5,27,0,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (98,2014,7,98,'Oct 19','Sun',1,'1:00 pm',32,29,28,26,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (99,2014,7,99,'Oct 19','Sun',2,'1:00 pm',18,9,19,17,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (100,2014,7,100,'Oct 19','Sun',2,'1:00 pm',11,7,24,6,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (101,2014,7,101,'Oct 19','Sun',1,'1:00 pm',8,26,29,7,2,'2014-10-19 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (102,2014,7,102,'Oct 19','Sun',2,'4:05 pm',14,16,20,23,2,'2014-10-19 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (103,2014,7,103,'Oct 19','Sun',1,'4:25 pm',19,20,31,21,2,'2014-10-19 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (104,2014,7,104,'Oct 19','Sun',1,'4:25 pm',15,31,13,24,2,'2014-10-19 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (105,2014,7,105,'Oct 19','Sun',3,'8:30 pm',13,30,42,17,2,'2014-10-19 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (106,2014,7,106,'Oct 20','Mon',5,'8:30 pm',6,10,30,23,2,'2014-10-20 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (107,2014,8,107,'Oct 23','Thu',2,'8:25 pm',13,14,35,21,2,'2014-10-23 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (108,2014,8,108,'Oct 26','Sun',1,'9:30 am',26,22,21,22,2,'2014-10-26 09:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (109,2014,8,109,'Oct 26','Sun',2,'1:00 pm',5,8,27,24,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (110,2014,8,110,'Oct 26','Sun',1,'1:00 pm',9,10,16,30,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (111,2014,8,111,'Oct 26','Sun',1,'1:00 pm',16,32,34,7,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (112,2014,8,112,'Oct 26','Sun',1,'1:00 pm',4,23,51,23,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (113,2014,8,113,'Oct 26','Sun',2,'1:00 pm',2,3,23,43,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (114,2014,8,114,'Oct 26','Sun',1,'1:00 pm',28,21,13,19,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (115,2014,8,115,'Oct 26','Sun',2,'1:00 pm',25,29,9,13,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (116,2014,8,116,'Oct 26','Sun',2,'1:00 pm',11,1,13,27,2,'2014-10-26 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (117,2014,8,117,'Oct 26','Sun',1,'4:05 pm',31,17,24,20,2,'2014-10-26 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (118,2014,8,118,'Oct 26','Sun',2,'4:25 pm',7,15,23,13,2,'2014-10-26 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (119,2014,8,119,'Oct 26','Sun',2,'4:25 pm',6,12,51,34,2,'2014-10-26 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (120,2014,8,120,'Oct 26','Sun',3,'8:30 pm',27,24,44,23,2,'2014-10-26 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (121,2014,8,121,'Oct 27','Mon',5,'8:30 pm',19,18,17,20,2,'2014-10-27 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (122,2014,9,122,'Oct 30','Thu',4,'8:25 pm',25,27,10,28,2,'2014-10-30 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (123,2014,9,123,'Nov 2','Sun',2,'1:00 pm',5,11,33,23,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (124,2014,9,124,'Nov 2','Sun',1,'1:00 pm',7,28,22,17,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (125,2014,9,125,'Nov 2','Sun',1,'1:00 pm',19,31,17,28,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (126,2014,9,126,'Nov 2','Sun',2,'1:00 pm',16,2,24,10,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (127,2014,9,127,'Nov 2','Sun',2,'1:00 pm',1,14,37,0,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (128,2014,9,128,'Nov 2','Sun',1,'1:00 pm',21,18,29,26,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (129,2014,9,129,'Nov 2','Sun',1,'1:00 pm',10,17,21,31,2,'2014-11-02 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (130,2014,9,130,'Nov 2','Sun',1,'4:05 pm',30,32,10,13,2,'2014-11-02 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (131,2014,9,131,'Nov 2','Sun',2,'4:25 pm',4,13,43,21,2,'2014-11-02 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (132,2014,9,132,'Nov 2','Sun',2,'4:25 pm',29,15,30,24,2,'2014-11-02 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (133,2014,9,133,'Nov 2','Sun',3,'8:30 pm',6,8,43,23,2,'2014-11-02 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (134,2014,9,134,'Nov 3','Mon',5,'8:30 pm',20,12,24,40,2,'2014-11-03 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (135,2014,10,135,'Nov 6','Thu',4,'8:25 pm',5,7,3,24,2,'2014-11-06 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (136,2014,10,136,'Nov 9','Sun',2,'1:00 pm',3,16,13,17,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (137,2014,10,137,'Nov 9','Sun',2,'1:00 pm',22,1,20,16,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (138,2014,10,138,'Nov 9','Sun',1,'1:00 pm',27,30,24,27,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (139,2014,10,139,'Nov 9','Sun',2,'1:00 pm',2,6,20,13,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (140,2014,10,140,'Nov 9','Sun',1,'1:00 pm',28,26,17,27,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (141,2014,10,141,'Nov 9','Sun',1,'1:00 pm',11,19,17,31,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (142,2014,10,142,'Nov 9','Sun',2,'1:00 pm',8,9,21,7,2,'2014-11-09 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (143,2014,10,143,'Nov 9','Sun',2,'4:05 pm',15,13,17,41,2,'2014-11-09 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (144,2014,10,144,'Nov 9','Sun',1,'4:25 pm',31,32,31,14,2,'2014-11-09 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (145,2014,10,145,'Nov 9','Sun',1,'4:25 pm',29,20,38,17,2,'2014-11-09 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (146,2014,10,146,'Nov 9','Sun',3,'8:30 pm',24,23,55,14,2,'2014-11-09 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (147,2014,10,147,'Nov 10','Mon',5,'8:30 pm',17,25,45,21,2,'2014-11-10 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (148,2014,11,148,'Nov 13','Thu',4,'8:25 pm',1,3,22,9,2,'2014-11-13 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (149,2014,11,149,'Nov 16','Sun',1,'1:00 pm',23,21,21,13,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (150,2014,11,150,'Nov 16','Sun',2,'1:00 pm',7,10,7,23,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (151,2014,11,151,'Nov 16','Sun',1,'1:00 pm',24,17,53,20,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (152,2014,11,152,'Nov 16','Sun',1,'1:00 pm',16,29,24,20,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (153,2014,11,153,'Nov 16','Sun',2,'1:00 pm',32,13,22,7,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (154,2014,11,154,'Nov 16','Sun',2,'1:00 pm',27,5,10,27,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (155,2014,11,155,'Nov 16','Sun',1,'1:00 pm',20,30,10,16,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (156,2014,11,156,'Nov 16','Sun',1,'1:00 pm',18,28,7,27,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (157,2014,11,157,'Nov 16','Sun',1,'1:00 pm',25,26,17,19,2,'2014-11-16 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (158,2014,11,158,'Nov 16','Sun',2,'4:05 pm',14,15,13,6,2,'2014-11-16 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (159,2014,11,159,'Nov 16','Sun',1,'4:25 pm',31,22,14,6,2,'2014-11-16 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (160,2014,11,160,'Nov 16','Sun',3,'8:30 pm',12,4,20,42,2,'2014-11-16 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (161,2014,11,161,'Nov 17','Mon',5,'8:30 pm',9,6,24,27,2,'2014-11-17 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (162,2014,12,162,'Nov 20','Thu',4,'8:25 pm',15,16,24,20,2,'2014-11-20 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (163,2014,12,163,'Nov 23','Sun',2,'1:00 pm',26,7,24,26,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (164,2014,12,164,'Nov 23','Sun',2,'1:00 pm',3,2,38,3,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (165,2014,12,165,'Nov 23','Sun',1,'1:00 pm',23,28,21,13,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (166,2014,12,166,'Nov 23','Sun',2,'1:00 pm',12,11,23,3,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (167,2014,12,167,'Nov 23','Sun',1,'1:00 pm',21,24,21,24,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (168,2014,12,168,'Nov 23','Sun',1,'1:00 pm',4,22,34,9,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (169,2014,12,169,'Nov 23','Sun',2,'1:00 pm',17,9,43,24,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (170,2014,12,170,'Nov 23','Sun',2,'1:00 pm',10,5,13,22,2,'2014-11-23 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (171,2014,12,171,'Nov 23','Sun',1,'4:05 pm',14,32,27,24,2,'2014-11-23 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (172,2014,12,172,'Nov 23','Sun',1,'4:05 pm',29,31,19,3,2,'2014-11-23 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (173,2014,12,173,'Nov 23','Sun',2,'4:25 pm',13,1,39,36,2,'2014-11-23 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (174,2014,12,174,'Nov 23','Sun',2,'4:25 pm',30,18,17,13,2,'2014-11-23 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (175,2014,12,175,'Nov 23','Sun',3,'8:30 pm',20,19,28,31,2,'2014-11-23 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (176,2014,12,176,'Nov 24','Mon',5,'8:30 pm',27,8,27,34,2,'2014-11-24 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (177,2014,13,177,'Nov 27','Thu',2,'12:30 pm',22,23,34,17,2,'2014-11-27 12:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (178,2014,13,178,'Nov 27','Thu',1,'4:30 pm',19,17,10,33,2,'2014-11-27 16:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (179,2014,13,179,'Nov 27','Thu',3,'8:30 pm',30,29,3,19,2,'2014-11-27 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (180,2014,13,180,'Nov 30','Sun',2,'1:00 pm',3,7,26,10,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (181,2014,13,181,'Nov 30','Sun',1,'1:00 pm',12,18,49,27,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (182,2014,13,182,'Nov 30','Sun',2,'1:00 pm',32,15,52,0,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (183,2014,13,183,'Nov 30','Sun',1,'1:00 pm',21,25,31,13,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (184,2014,13,184,'Nov 30','Sun',1,'1:00 pm',6,27,32,35,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (185,2014,13,185,'Nov 30','Sun',2,'1:00 pm',28,5,13,14,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (186,2014,13,186,'Nov 30','Sun',1,'1:00 pm',11,20,25,24,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (187,2014,13,187,'Nov 30','Sun',2,'1:00 pm',8,14,33,34,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (188,2014,13,188,'Nov 30','Sun',2,'1:00 pm',10,9,45,21,2,'2014-11-30 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (189,2014,13,189,'Nov 30','Sun',1,'4:05 pm',26,31,29,18,2,'2014-11-30 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (190,2014,13,190,'Nov 30','Sun',2,'4:25 pm',24,4,26,21,2,'2014-11-30 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (191,2014,13,191,'Nov 30','Sun',3,'8:30 pm',16,13,16,29,2,'2014-11-30 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (192,2014,13,192,'Dec 1','Mon',5,'8:30 pm',2,1,13,16,2,'2014-12-01 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (193,2014,14,193,'Dec 4','Thu',4,'8:25 pm',23,19,28,41,2,'2014-12-04 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (194,2014,14,194,'Dec 7','Sun',2,'1:00 pm',5,6,21,42,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (195,2014,14,195,'Dec 7','Sun',2,'1:00 pm',7,12,24,25,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (196,2014,14,196,'Dec 7','Sun',1,'1:00 pm',22,28,34,17,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (197,2014,14,197,'Dec 7','Sun',1,'1:00 pm',9,20,7,36,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (198,2014,14,198,'Dec 7','Sun',2,'1:00 pm',1,8,13,28,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (199,2014,14,199,'Dec 7','Sun',2,'1:00 pm',21,2,30,24,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (200,2014,14,200,'Dec 7','Sun',1,'1:00 pm',27,25,10,41,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (201,2014,14,201,'Dec 7','Sun',1,'1:00 pm',18,32,0,24,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (202,2014,14,202,'Dec 7','Sun',2,'1:00 pm',11,10,13,27,2,'2014-12-07 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (203,2014,14,203,'Dec 7','Sun',2,'4:05 pm',13,3,24,17,2,'2014-12-07 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (204,2014,14,204,'Dec 7','Sun',2,'4:05 pm',31,16,17,14,2,'2014-12-07 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (205,2014,14,205,'Dec 7','Sun',1,'4:25 pm',15,30,24,13,2,'2014-12-07 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (206,2014,14,206,'Dec 7','Sun',1,'4:25 pm',17,29,14,24,2,'2014-12-07 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (207,2014,14,207,'Dec 7','Sun',3,'8:30 pm',14,4,14,23,2,'2014-12-07 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (208,2014,14,208,'Dec 8','Mon',5,'8:30 pm',24,26,43,37,2,'2014-12-08 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (209,2014,15,209,'Dec 11','Thu',4,'8:25 pm',32,31,6,12,2,'2014-12-11 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (210,2014,15,210,'Dec 14','Sun',2,'1:00 pm',26,6,20,27,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (211,2014,15,211,'Dec 14','Sun',1,'1:00 pm',3,24,21,13,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (212,2014,15,212,'Dec 14','Sun',2,'1:00 pm',7,5,0,30,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (213,2014,15,213,'Dec 14','Sun',1,'1:00 pm',22,21,16,14,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (214,2014,15,214,'Dec 14','Sun',2,'1:00 pm',12,10,17,10,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (215,2014,15,215,'Dec 14','Sun',2,'1:00 pm',16,15,31,13,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (216,2014,15,216,'Dec 14','Sun',2,'1:00 pm',4,1,41,13,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (217,2014,15,217,'Dec 14','Sun',1,'1:00 pm',20,18,24,13,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (218,2014,15,218,'Dec 14','Sun',1,'1:00 pm',25,28,19,17,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (219,2014,15,219,'Dec 14','Sun',2,'1:00 pm',8,11,20,12,2,'2014-12-14 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (220,2014,15,220,'Dec 14','Sun',2,'4:05 pm',9,2,11,16,2,'2014-12-14 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (221,2014,15,221,'Dec 14','Sun',2,'4:05 pm',14,13,10,22,2,'2014-12-14 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (222,2014,15,222,'Dec 14','Sun',1,'4:25 pm',29,30,17,7,2,'2014-12-14 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (223,2014,15,223,'Dec 14','Sun',3,'8:30 pm',17,19,27,38,2,'2014-12-14 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (224,2014,15,224,'Dec 15','Mon',5,'8:30 pm',23,27,15,31,2,'2014-12-15 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (225,2014,16,225,'Dec 18','Thu',4,'8:25 pm',11,9,21,13,2,'2014-12-18 20:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (226,2014,16,226,'Dec 20','Sat',2,'4:30 pm',30,14,35,38,2,'2014-12-20 16:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (227,2014,16,227,'Dec 20','Sat',2,'4:30 pm',18,17,27,24,2,'2014-12-20 16:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (228,2014,16,228,'Dec 21','Sun',1,'1:00 pm',23,22,14,20,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (229,2014,16,229,'Dec 21','Sun',1,'1:00 pm',1,21,37,35,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (230,2014,16,230,'Dec 21','Sun',1,'1:00 pm',27,26,14,30,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (231,2014,16,231,'Dec 21','Sun',2,'1:00 pm',2,4,16,17,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (232,2014,16,232,'Dec 21','Sun',2,'1:00 pm',6,16,20,12,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (233,2014,16,233,'Dec 21','Sun',1,'1:00 pm',28,24,3,20,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (234,2014,16,234,'Dec 21','Sun',2,'1:00 pm',25,7,17,13,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (235,2014,16,235,'Dec 21','Sun',2,'1:00 pm',10,8,25,13,2,'2014-12-21 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (236,2014,16,236,'Dec 21','Sun',1,'4:05 pm',32,20,27,37,2,'2014-12-21 16:05:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (237,2014,16,237,'Dec 21','Sun',2,'4:25 pm',19,12,42,7,2,'2014-12-21 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (238,2014,16,238,'Dec 21','Sun',2,'4:25 pm',15,3,26,24,2,'2014-12-21 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (239,2014,16,239,'Dec 21','Sun',3,'8:30 pm',31,29,6,35,2,'2014-12-21 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (240,2014,16,240,'Dec 22','Mon',5,'8:30 pm',5,13,37,28,2,'2014-12-22 20:30:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (241,2014,17,241,'Dec 28','Sun',1,'1:00 pm',26,25,3,34,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (242,2014,17,242,'Dec 28','Sun',1,'1:00 pm',24,22,30,20,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (243,2014,17,243,'Dec 28','Sun',2,'1:00 pm',9,12,10,27,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (244,2014,17,244,'Dec 28','Sun',2,'1:00 pm',16,14,19,7,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (245,2014,17,245,'Dec 28','Sun',2,'1:00 pm',1,2,24,37,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (246,2014,17,246,'Dec 28','Sun',1,'1:00 pm',21,23,13,9,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (247,2014,17,247,'Dec 28','Sun',2,'1:00 pm',4,3,9,17,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (248,2014,17,248,'Dec 28','Sun',1,'1:00 pm',20,17,26,34,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (249,2014,17,249,'Dec 28','Sun',2,'1:00 pm',6,5,27,17,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (250,2014,17,250,'Dec 28','Sun',1,'1:00 pm',28,27,20,23,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (251,2014,17,251,'Dec 28','Sun',1,'1:00 pm',18,19,17,44,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (252,2014,17,252,'Dec 28','Sun',2,'1:00 pm',8,7,20,10,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (253,2014,17,253,'Dec 28','Sun',2,'1:00 pm',10,11,23,17,2,'2014-12-28 13:00:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (254,2014,17,254,'Dec 28','Sun',2,'4:25 pm',13,15,47,14,2,'2014-12-28 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (255,2014,17,255,'Dec 28','Sun',1,'4:25 pm',30,31,20,17,2,'2014-12-28 16:25:00','2015-08-09 14:32:55');
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (256,2014,17,256,'Dec 28','Sun',1,'4:25 pm',29,32,20,6,2,'2014-12-28 16:25:00','2015-08-09 14:32:55');
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
-- Table structure for table `memberpickstbl`
--

DROP TABLE IF EXISTS `memberpickstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberpickstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `gamesid` int(11) DEFAULT NULL,
  `pick` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberpickstbl`
--

LOCK TABLES `memberpickstbl` WRITE;
/*!40000 ALTER TABLE `memberpickstbl` DISABLE KEYS */;
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
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','bluef150','Male','Donald Duck Flying on Lightening Bolt 2.png','admin','tarrant.cutler@gmail.com','68 Barley Neck Road','Manchester','MA','01944','781-342-0204','tarryc','active','2015-08-03 03:12:08',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (2,'Tammy Jamieson','ducky','Female','ddt.png','admin','tzjamieson@yahoo.com','36 Pleasant Ridge','Camden','ME','04843','978-239-2650','123','active','2015-08-03 03:12:22',NULL);
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
  `seasonyear` int(11) DEFAULT NULL,
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
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (1,1,2014,8,8,0,16,0.5000,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (2,2,2014,4,12,0,16,0.2500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (3,3,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (4,4,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (5,5,2014,10,5,1,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (6,6,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (7,7,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (8,8,2014,10,6,0,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (9,9,2014,2,14,0,16,0.1300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (10,10,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (11,11,2014,3,13,0,16,0.1900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (12,12,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (13,13,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (14,14,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (15,17,2014,10,6,0,16,0.6300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (16,18,2014,4,12,0,16,0.2500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (17,19,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (18,20,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (19,21,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (20,22,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (21,23,2014,5,11,0,16,0.3100,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (22,24,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (23,25,2014,7,8,1,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (24,26,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (25,27,2014,7,9,0,16,0.4400,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (26,28,2014,2,14,0,16,0.1300,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (27,29,2014,12,4,0,16,0.7500,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (28,30,2014,8,8,0,16,0.5000,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (29,15,2014,3,13,0,16,0.1900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (30,31,2014,11,5,0,16,0.6900,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (31,16,2014,9,7,0,16,0.5600,'2015-07-29 14:18:35',NULL);
INSERT INTO `teamstatstbl` (`id`, `teamid`, `seasonyear`, `wins`, `losses`, `ties`, `totalgames`, `percent`, `enterdate`, `createdate`) VALUES (32,32,2014,6,10,0,16,0.3800,'2015-07-29 14:18:35',NULL);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-09 10:57:30
