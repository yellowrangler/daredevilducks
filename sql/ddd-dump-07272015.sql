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

-- mysqldump --extended-insert=FALSE --complete-insert=TRUE  -u tarryc -p ddd > ddd-dump-07272015.sql

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
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamebyetbl`
--

LOCK TABLES `gamebyetbl` WRITE;
/*!40000 ALTER TABLE `gamebyetbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamebyetbl` ENABLE KEYS */;
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
  `tv` int(11) DEFAULT NULL,
  `gametime` varchar(25) DEFAULT NULL,
  `hometeamid` int(11) DEFAULT NULL,
  `awayteamid` int(11) DEFAULT NULL,
  `hometeamscore` int(11) DEFAULT NULL,
  `awayteamscore` int(11) DEFAULT NULL,
  `winningteamid` int(11) DEFAULT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestbl`
--

LOCK TABLES `gamestbl` WRITE;
/*!40000 ALTER TABLE `gamestbl` DISABLE KEYS */;
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (1,2014,1,1,'SEP 4','THU',3,'8:30 PM',29,24,36,16,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (2,2014,1,2,'SEP 7','SUN',1,'1:00 PM',26,27,37,34,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (3,2014,1,3,'SEP 7','SUN',1,'1:00 PM',23,3,20,23,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (4,2014,1,4,'SEP 7','SUN',2,'1:00 PM',16,9,10,26,9,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (5,2014,1,5,'SEP 7','SUN',1,'1:00 PM',32,21,6,34,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (6,2014,1,6,'SEP 7','SUN',2,'1:00 PM',1,4,33,20,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (7,2014,1,7,'SEP 7','SUN',2,'1:00 PM',2,15,19,14,2,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (8,2014,1,8,'SEP 7','SUN',2,'1:00 PM',17,11,34,17,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (9,2014,1,9,'SEP 7','SUN',2,'1:00 PM',6,7,30,27,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (10,2014,1,10,'SEP 7','SUN',2,'1:00 PM',8,5,16,23,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (11,2014,1,11,'SEP 7','SUN',1,'1:00 PM',10,18,17,6,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (12,2014,1,12,'SEP 7','SUN',1,'4:25 PM',19,30,17,28,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (13,2014,1,13,'SEP 7','SUN',1,'4:25 PM',28,25,14,20,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (14,2014,1,14,'SEP 7','SUN',3,'8:30 PM',13,12,31,24,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (15,2014,1,15,'SEP 8','MON',5,'7:10 PM',22,20,35,14,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (16,2014,1,16,'SEP 8','MON',5,'10:20 PM',31,14,18,17,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (17,2014,2,17,'SEP 11','THU',2,'8:25 PM',8,6,26,6,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (18,2014,2,18,'SEP 14','SUN',2,'1:00 PM',3,1,29,10,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (19,2014,2,19,'SEP 14','SUN',2,'1:00 PM',5,26,24,10,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (20,2014,2,20,'SEP 14','SUN',1,'1:00 PM',7,27,26,24,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (21,2014,2,21,'SEP 14','SUN',1,'1:00 PM',9,19,10,26,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (22,2014,2,22,'SEP 14','SUN',2,'1:00 PM',21,4,7,30,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (23,2014,2,23,'SEP 14','SUN',1,'1:00 PM',20,31,14,25,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (24,2014,2,24,'SEP 14','SUN',2,'1:00 PM',18,11,41,10,18,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (25,2014,2,25,'SEP 14','SUN',1,'1:00 PM',25,22,24,7,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (26,2014,2,26,'SEP 14','SUN',1,'4:05 PM',14,29,30,21,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (27,2014,2,27,'SEP 14','SUN',1,'4:05 PM',28,32,17,19,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (28,2014,2,28,'SEP 14','SUN',2,'4:25 PM',13,16,24,17,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (29,2014,2,29,'SEP 14','SUN',2,'4:25 PM',24,2,31,24,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (30,2014,2,30,'SEP 14','SUN',2,'4:25 PM',15,10,14,30,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (31,2014,2,31,'SEP 14','SUN',3,'8:30 PM',30,23,20,28,23,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (32,2014,2,32,'SEP 15','MON',5,'8:30 PM',12,17,27,30,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (33,2014,3,33,'SEP 18','THU',2,'8:25 PM',26,28,56,14,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (34,2014,3,34,'SEP 21','SUN',2,'1:00 PM',3,14,10,22,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (35,2014,3,35,'SEP 21','SUN',2,'1:00 PM',5,9,33,7,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (36,2014,3,36,'SEP 21','SUN',2,'1:00 PM',7,8,21,23,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (37,2014,3,37,'SEP 21','SUN',1,'1:00 PM',22,24,19,7,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (38,2014,3,38,'SEP 21','SUN',1,'1:00 PM',32,19,31,34,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (39,2014,3,39,'SEP 21','SUN',2,'1:00 PM',4,15,16,9,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (40,2014,3,40,'SEP 21','SUN',1,'1:00 PM',27,21,20,9,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (41,2014,3,41,'SEP 21','SUN',2,'1:00 PM',20,10,30,17,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (42,2014,3,42,'SEP 21','SUN',1,'1:00 PM',17,18,37,34,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (43,2014,3,43,'SEP 21','SUN',2,'1:00 PM',11,12,17,44,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (44,2014,3,44,'SEP 21','SUN',1,'4:05 PM',31,30,23,14,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (45,2014,3,45,'SEP 21','SUN',2,'4:25 PM',1,16,15,34,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (46,2014,3,46,'SEP 21','SUN',2,'4:25 PM',29,13,26,20,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (47,2014,3,47,'SEP 21','SUN',3,'8:30 PM',25,6,19,37,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (48,2014,3,48,'SEP 22','MON',5,'8:30 PM',2,23,19,27,23,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (49,2014,4,49,'SEP 25','THU',2,'8:25 PM',18,20,14,45,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (50,2014,4,50,'SEP 28','SUN',1,'1:00 PM',23,24,17,38,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (51,2014,4,51,'SEP 28','SUN',2,'1:00 PM',12,9,41,17,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (52,2014,4,52,'SEP 28','SUN',2,'1:00 PM',15,1,14,38,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (53,2014,4,53,'SEP 28','SUN',1,'1:00 PM',2,22,17,24,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (54,2014,4,54,'SEP 28','SUN',1,'1:00 PM',6,28,24,27,28,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (55,2014,4,55,'SEP 28','SUN',2,'1:00 PM',8,25,38,10,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (56,2014,4,56,'SEP 28','SUN',2,'1:00 PM',10,3,23,17,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (57,2014,4,57,'SEP 28','SUN',2,'4:05 PM',14,11,33,14,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (58,2014,4,58,'SEP 28','SUN',1,'4:25 PM',21,26,41,28,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (59,2014,4,59,'SEP 28','SUN',1,'4:25 PM',30,17,26,21,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (60,2014,4,60,'SEP 28','SUN',3,'8:30 PM',19,27,38,17,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (61,2014,4,61,'SEP 29','MON',5,'8:30 PM',16,4,41,14,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (62,2014,5,62,'OCT 2','THU',2,'8:25 PM',24,21,42,10,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (63,2014,5,63,'OCT 5','SUN',2,'1:00 PM',19,10,20,17,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (64,2014,5,64,'OCT 5','SUN',1,'1:00 PM',22,3,14,17,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (65,2014,5,65,'OCT 5','SUN',2,'1:00 PM',9,7,28,29,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (66,2014,5,66,'OCT 5','SUN',2,'1:00 PM',12,8,20,13,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (67,2014,5,67,'OCT 5','SUN',1,'1:00 PM',27,28,37,31,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (68,2014,5,68,'OCT 5','SUN',1,'1:00 PM',20,26,30,20,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (69,2014,5,69,'OCT 5','SUN',1,'1:00 PM',17,32,34,28,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (70,2014,5,70,'OCT 5','SUN',1,'1:00 PM',25,23,31,24,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (71,2014,5,71,'OCT 5','SUN',2,'1:00 PM',11,6,9,17,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (72,2014,5,72,'OCT 5','SUN',1,'4:05 PM',13,31,41,20,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (73,2014,5,73,'OCT 5','SUN',2,'4:25 PM',14,2,31,0,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (74,2014,5,74,'OCT 5','SUN',2,'4:25 PM',30,16,22,17,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (75,2014,5,75,'OCT 5','SUN',3,'8:30 PM',4,5,43,17,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (76,2014,5,76,'OCT 6','MON',5,'8:30 PM',18,29,17,27,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (77,2014,6,77,'OCT 9','THU',2,'8:25 PM',10,12,28,33,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (78,2014,6,78,'OCT 12','SUN',1,'1:00 PM',26,23,13,27,23,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (79,2014,6,79,'OCT 12','SUN',2,'1:00 PM',3,4,22,37,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (80,2014,6,80,'OCT 12','SUN',1,'1:00 PM',5,25,37,37,0,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (81,2014,6,81,'OCT 12','SUN',2,'1:00 PM',7,6,31,10,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (82,2014,6,82,'OCT 12','SUN',2,'1:00 PM',9,11,16,14,9,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (83,2014,6,83,'OCT 12','SUN',1,'1:00 PM',1,24,24,27,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (84,2014,6,84,'OCT 12','SUN',1,'1:00 PM',21,22,3,17,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (85,2014,6,85,'OCT 12','SUN',2,'1:00 PM',2,13,17,31,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (86,2014,6,86,'OCT 12','SUN',2,'1:00 PM',28,8,17,48,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (87,2014,6,87,'OCT 12','SUN',2,'4:05 PM',15,14,28,31,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (88,2014,6,88,'OCT 12','SUN',1,'4:25 PM',31,18,30,20,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (89,2014,6,89,'OCT 12','SUN',1,'4:25 PM',29,19,23,30,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (90,2014,6,90,'OCT 12','SUN',3,'8:30 PM',17,20,27,0,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (91,2014,6,91,'OCT 13','MON',5,'8:30 PM',32,30,17,31,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (92,2014,7,92,'OCT 16','THU',2,'8:25 PM',4,2,27,25,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (93,2014,7,93,'OCT 19','SUN',1,'1:00 PM',3,21,17,16,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (94,2014,7,94,'OCT 19','SUN',2,'1:00 PM',23,1,14,27,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (95,2014,7,95,'OCT 19','SUN',1,'1:00 PM',22,27,24,23,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (96,2014,7,96,'OCT 19','SUN',1,'1:00 PM',24,25,38,17,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (97,2014,7,97,'OCT 19','SUN',2,'1:00 PM',12,5,27,0,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (98,2014,7,98,'OCT 19','SUN',1,'1:00 PM',32,29,28,26,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (99,2014,7,99,'OCT 19','SUN',2,'1:00 PM',18,9,19,17,18,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (100,2014,7,100,'OCT 19','SUN',2,'1:00 PM',11,7,24,6,11,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (101,2014,7,101,'OCT 19','SUN',1,'1:00 PM',8,26,29,7,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (102,2014,7,102,'OCT 19','SUN',2,'4:05 PM',14,16,20,23,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (103,2014,7,103,'OCT 19','SUN',1,'4:25 PM',19,20,31,21,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (104,2014,7,104,'OCT 19','SUN',1,'4:25 PM',15,31,13,24,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (105,2014,7,105,'OCT 19','SUN',3,'8:30 PM',13,30,42,17,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (106,2014,7,106,'OCT 20','MON',5,'8:30 PM',6,10,30,23,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (107,2014,8,107,'OCT 23','THU',2,'8:25 PM',13,14,35,21,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (108,2014,8,108,'OCT 26','SUN',1,'9:30 AM',26,22,21,22,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (109,2014,8,109,'OCT 26','SUN',2,'1:00 PM',5,8,27,24,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (110,2014,8,110,'OCT 26','SUN',1,'1:00 PM',9,10,16,30,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (111,2014,8,111,'OCT 26','SUN',1,'1:00 PM',16,32,34,7,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (112,2014,8,112,'OCT 26','SUN',1,'1:00 PM',4,23,51,23,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (113,2014,8,113,'OCT 26','SUN',2,'1:00 PM',2,3,23,43,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (114,2014,8,114,'OCT 26','SUN',1,'1:00 PM',28,21,13,19,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (115,2014,8,115,'OCT 26','SUN',2,'1:00 PM',25,29,9,13,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (116,2014,8,116,'OCT 26','SUN',2,'1:00 PM',11,1,13,27,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (117,2014,8,117,'OCT 26','SUN',1,'4:05 PM',31,17,24,20,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (118,2014,8,118,'OCT 26','SUN',2,'4:25 PM',7,15,23,13,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (119,2014,8,119,'OCT 26','SUN',2,'4:25 PM',6,12,51,34,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (120,2014,8,120,'OCT 26','SUN',3,'8:30 PM',27,24,44,23,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (121,2014,8,121,'OCT 27','MON',5,'8:30 PM',19,18,17,20,18,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (122,2014,9,122,'OCT 30','THU',4,'8:25 PM',25,27,10,28,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (123,2014,9,123,'NOV 2','SUN',2,'1:00 PM',5,11,33,23,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (124,2014,9,124,'NOV 2','SUN',1,'1:00 PM',7,28,22,17,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (125,2014,9,125,'NOV 2','SUN',1,'1:00 PM',19,31,17,28,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (126,2014,9,126,'NOV 2','SUN',2,'1:00 PM',16,2,24,10,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (127,2014,9,127,'NOV 2','SUN',2,'1:00 PM',1,14,37,0,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (128,2014,9,128,'NOV 2','SUN',1,'1:00 PM',21,18,29,26,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (129,2014,9,129,'NOV 2','SUN',1,'1:00 PM',10,17,21,31,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (130,2014,9,130,'NOV 2','SUN',1,'4:05 PM',30,32,10,13,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (131,2014,9,131,'NOV 2','SUN',2,'4:25 PM',4,13,43,21,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (132,2014,9,132,'NOV 2','SUN',2,'4:25 PM',29,15,30,24,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (133,2014,9,133,'NOV 2','SUN',3,'8:30 PM',6,8,43,23,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (134,2014,9,134,'NOV 3','MON',5,'8:30 PM',20,12,24,40,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (135,2014,10,135,'NOV 6','THU',4,'8:25 PM',5,7,3,24,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (136,2014,10,136,'NOV 9','SUN',2,'1:00 PM',3,16,13,17,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (137,2014,10,137,'NOV 9','SUN',2,'1:00 PM',22,1,20,16,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (138,2014,10,138,'NOV 9','SUN',1,'1:00 PM',27,30,24,27,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (139,2014,10,139,'NOV 9','SUN',2,'1:00 PM',2,6,20,13,2,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (140,2014,10,140,'NOV 9','SUN',1,'1:00 PM',28,26,17,27,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (141,2014,10,141,'NOV 9','SUN',1,'1:00 PM',11,19,17,31,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (142,2014,10,142,'NOV 9','SUN',2,'1:00 PM',8,9,21,7,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (143,2014,10,143,'NOV 9','SUN',2,'4:05 PM',15,13,17,41,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (144,2014,10,144,'NOV 9','SUN',1,'4:25 PM',31,32,31,14,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (145,2014,10,145,'NOV 9','SUN',1,'4:25 PM',29,20,38,17,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (146,2014,10,146,'NOV 9','SUN',3,'8:30 PM',24,23,55,14,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (147,2014,10,147,'NOV 10','MON',5,'8:30 PM',17,25,45,21,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (148,2014,11,148,'NOV 13','THU',4,'8:25 PM',1,3,22,9,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (149,2014,11,149,'NOV 16','SUN',1,'1:00 PM',23,21,21,13,23,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (150,2014,11,150,'NOV 16','SUN',2,'1:00 PM',7,10,7,23,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (151,2014,11,151,'NOV 16','SUN',1,'1:00 PM',24,17,53,20,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (152,2014,11,152,'NOV 16','SUN',1,'1:00 PM',16,29,24,20,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (153,2014,11,153,'NOV 16','SUN',2,'1:00 PM',32,13,22,7,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (154,2014,11,154,'NOV 16','SUN',2,'1:00 PM',27,5,10,27,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (155,2014,11,155,'NOV 16','SUN',1,'1:00 PM',20,30,10,16,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (156,2014,11,156,'NOV 16','SUN',1,'1:00 PM',18,28,7,27,28,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (157,2014,11,157,'NOV 16','SUN',1,'1:00 PM',25,26,17,19,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (158,2014,11,158,'NOV 16','SUN',2,'4:05 PM',14,15,13,6,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (159,2014,11,159,'NOV 16','SUN',1,'4:25 PM',31,22,14,6,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (160,2014,11,160,'NOV 16','SUN',3,'8:30 PM',12,4,20,42,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (161,2014,11,161,'NOV 17','MON',5,'8:30 PM',9,6,24,27,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (162,2014,12,162,'NOV 20','THU',4,'8:25 PM',15,16,24,20,15,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (163,2014,12,163,'NOV 23','SUN',2,'1:00 PM',26,7,24,26,7,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (164,2014,12,164,'NOV 23','SUN',2,'1:00 PM',3,2,38,3,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (165,2014,12,165,'NOV 23','SUN',1,'1:00 PM',23,28,21,13,23,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (166,2014,12,166,'NOV 23','SUN',2,'1:00 PM',12,11,23,3,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (167,2014,12,167,'NOV 23','SUN',1,'1:00 PM',21,24,21,24,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (168,2014,12,168,'NOV 23','SUN',1,'1:00 PM',4,22,34,9,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (169,2014,12,169,'NOV 23','SUN',2,'1:00 PM',17,9,43,24,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (170,2014,12,170,'NOV 23','SUN',2,'1:00 PM',10,5,13,22,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (171,2014,12,171,'NOV 23','SUN',1,'4:05 PM',14,32,27,24,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (172,2014,12,172,'NOV 23','SUN',1,'4:05 PM',29,31,19,3,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (173,2014,12,173,'NOV 23','SUN',2,'4:25 PM',13,1,39,36,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (174,2014,12,174,'NOV 23','SUN',2,'4:25 PM',30,18,17,13,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (175,2014,12,175,'NOV 23','SUN',3,'8:30 PM',20,19,28,31,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (176,2014,12,176,'NOV 24','MON',5,'8:30 PM',27,8,27,34,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (177,2014,13,177,'NOV 27','THU',2,'12:30 PM',22,23,34,17,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (178,2014,13,178,'NOV 27','THU',1,'4:30 PM',19,17,10,33,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (179,2014,13,179,'NOV 27','THU',3,'8:30 PM',30,29,3,19,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (180,2014,13,180,'NOV 30','SUN',2,'1:00 PM',3,7,26,10,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (181,2014,13,181,'NOV 30','SUN',1,'1:00 PM',12,18,49,27,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (182,2014,13,182,'NOV 30','SUN',2,'1:00 PM',32,15,52,0,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (183,2014,13,183,'NOV 30','SUN',1,'1:00 PM',21,25,31,13,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (184,2014,13,184,'NOV 30','SUN',1,'1:00 PM',6,27,32,35,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (185,2014,13,185,'NOV 30','SUN',2,'1:00 PM',28,5,13,14,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (186,2014,13,186,'NOV 30','SUN',1,'1:00 PM',11,20,25,24,11,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (187,2014,13,187,'NOV 30','SUN',2,'1:00 PM',8,14,33,34,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (188,2014,13,188,'NOV 30','SUN',2,'1:00 PM',10,9,45,21,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (189,2014,13,189,'NOV 30','SUN',1,'4:05 PM',26,31,29,18,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (190,2014,13,190,'NOV 30','SUN',2,'4:25 PM',24,4,26,21,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (191,2014,13,191,'NOV 30','SUN',3,'8:30 PM',16,13,16,29,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (192,2014,13,192,'DEC 1','MON',5,'8:30 PM',2,1,13,16,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (193,2014,14,193,'DEC 4','THU',4,'8:25 PM',23,19,28,41,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (194,2014,14,194,'DEC 7','SUN',2,'1:00 PM',5,6,21,42,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (195,2014,14,195,'DEC 7','SUN',2,'1:00 PM',7,12,24,25,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (196,2014,14,196,'DEC 7','SUN',1,'1:00 PM',22,28,34,17,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (197,2014,14,197,'DEC 7','SUN',1,'1:00 PM',9,20,7,36,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (198,2014,14,198,'DEC 7','SUN',2,'1:00 PM',1,8,13,28,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (199,2014,14,199,'DEC 7','SUN',2,'1:00 PM',21,2,30,24,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (200,2014,14,200,'DEC 7','SUN',1,'1:00 PM',27,25,10,41,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (201,2014,14,201,'DEC 7','SUN',1,'1:00 PM',18,32,0,24,32,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (202,2014,14,202,'DEC 7','SUN',2,'1:00 PM',11,10,13,27,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (203,2014,14,203,'DEC 7','SUN',2,'4:05 PM',13,3,24,17,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (204,2014,14,204,'DEC 7','SUN',2,'4:05 PM',31,16,17,14,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (205,2014,14,205,'DEC 7','SUN',1,'4:25 PM',15,30,24,13,15,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (206,2014,14,206,'DEC 7','SUN',1,'4:25 PM',17,29,14,24,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (207,2014,14,207,'DEC 7','SUN',3,'8:30 PM',14,4,14,23,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (208,2014,14,208,'DEC 8','MON',5,'8:30 PM',24,26,43,37,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (209,2014,15,209,'DEC 11','THU',4,'8:25 PM',32,31,6,12,31,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (210,2014,15,210,'DEC 14','SUN',2,'1:00 PM',26,6,20,27,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (211,2014,15,211,'DEC 14','SUN',1,'1:00 PM',3,24,21,13,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (212,2014,15,212,'DEC 14','SUN',2,'1:00 PM',7,5,0,30,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (213,2014,15,213,'DEC 14','SUN',1,'1:00 PM',22,21,16,14,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (214,2014,15,214,'DEC 14','SUN',2,'1:00 PM',12,10,17,10,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (215,2014,15,215,'DEC 14','SUN',2,'1:00 PM',16,15,31,13,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (216,2014,15,216,'DEC 14','SUN',2,'1:00 PM',4,1,41,13,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (217,2014,15,217,'DEC 14','SUN',1,'1:00 PM',20,18,24,13,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (218,2014,15,218,'DEC 14','SUN',1,'1:00 PM',25,28,19,17,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (219,2014,15,219,'DEC 14','SUN',2,'1:00 PM',8,11,20,12,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (220,2014,15,220,'DEC 14','SUN',2,'4:05 PM',9,2,11,16,2,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (221,2014,15,221,'DEC 14','SUN',2,'4:05 PM',14,13,10,22,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (222,2014,15,222,'DEC 14','SUN',1,'4:25 PM',29,30,17,7,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (223,2014,15,223,'DEC 14','SUN',3,'8:30 PM',17,19,27,38,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (224,2014,15,224,'DEC 15','MON',5,'8:30 PM',23,27,15,31,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (225,2014,16,225,'DEC 18','THU',4,'8:25 PM',11,9,21,13,11,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (226,2014,16,226,'DEC 20','SAT',2,'TBD',30,14,35,38,14,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (227,2014,16,227,'DEC 20','SAT',2,'TBD',18,17,27,24,18,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (228,2014,16,228,'DEC 21','SUN',1,'1:00 PM',23,22,14,20,22,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (229,2014,16,229,'DEC 21','SUN',1,'1:00 PM',1,21,37,35,1,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (230,2014,16,230,'DEC 21','SUN',1,'1:00 PM',27,26,14,30,26,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (231,2014,16,231,'DEC 21','SUN',2,'1:00 PM',2,4,16,17,4,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (232,2014,16,232,'DEC 21','SUN',2,'1:00 PM',6,16,20,12,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (233,2014,16,233,'DEC 21','SUN',1,'1:00 PM',28,24,3,20,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (234,2014,16,234,'DEC 21','SUN',2,'1:00 PM',25,7,17,13,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (235,2014,16,235,'DEC 21','SUN',2,'1:00 PM',10,8,25,13,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (236,2014,16,236,'DEC 21','SUN',1,'4:05 PM',32,20,27,37,20,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (237,2014,16,237,'DEC 21','SUN',2,'4:25 PM',19,12,42,7,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (238,2014,16,238,'DEC 21','SUN',2,'4:25 PM',15,3,26,24,15,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (239,2014,16,239,'DEC 21','SUN',3,'8:30 PM',31,29,6,35,29,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (240,2014,16,240,'DEC 22','MON',5,'8:30 PM',5,13,37,28,5,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (241,2014,17,241,'DEC 28','SUN',1,'1:00 PM',26,25,3,34,25,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (242,2014,17,242,'DEC 28','SUN',1,'1:00 PM',24,22,30,20,24,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (243,2014,17,243,'DEC 28','SUN',2,'1:00 PM',9,12,10,27,12,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (244,2014,17,244,'DEC 28','SUN',2,'1:00 PM',16,14,19,7,16,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (245,2014,17,245,'DEC 28','SUN',2,'1:00 PM',1,2,24,37,2,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (246,2014,17,246,'DEC 28','SUN',1,'1:00 PM',21,23,13,9,21,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (247,2014,17,247,'DEC 28','SUN',2,'1:00 PM',4,3,9,17,3,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (248,2014,17,248,'DEC 28','SUN',1,'1:00 PM',20,17,26,34,17,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (249,2014,17,249,'DEC 28','SUN',2,'1:00 PM',6,5,27,17,6,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (250,2014,17,250,'DEC 28','SUN',1,'1:00 PM',28,27,20,23,27,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (251,2014,17,251,'DEC 28','SUN',1,'1:00 PM',18,19,17,44,19,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (252,2014,17,252,'DEC 28','SUN',2,'1:00 PM',8,7,20,10,8,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (253,2014,17,253,'DEC 28','SUN',2,'1:00 PM',10,11,23,17,10,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (254,2014,17,254,'DEC 28','SUN',2,'4:25 PM',13,15,47,14,13,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (255,2014,17,255,'DEC 28','SUN',1,'4:25 PM',30,31,20,17,30,1);
INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameday`, `tv`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `winningteamid`, `gametypeid`) VALUES (256,2014,17,256,'DEC 28','SUN',1,'4:25 PM',29,32,20,6,29,1);
/*!40000 ALTER TABLE `gamestbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametvtbl`
--

DROP TABLE IF EXISTS `gametvtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametvtbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tv` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametvtbl`
--

LOCK TABLES `gametvtbl` WRITE;
/*!40000 ALTER TABLE `gametvtbl` DISABLE KEYS */;
INSERT INTO `gametvtbl` (`id`, `tv`) VALUES (1,'FOX');
INSERT INTO `gametvtbl` (`id`, `tv`) VALUES (2,'CBS');
INSERT INTO `gametvtbl` (`id`, `tv`) VALUES (3,'NBC');
INSERT INTO `gametvtbl` (`id`, `tv`) VALUES (4,'NFL');
INSERT INTO `gametvtbl` (`id`, `tv`) VALUES (5,'ESPN');
/*!40000 ALTER TABLE `gametvtbl` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametypetbl`
--

LOCK TABLES `gametypetbl` WRITE;
/*!40000 ALTER TABLE `gametypetbl` DISABLE KEYS */;
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (1,'Regular');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (2,'Playoffs');
INSERT INTO `gametypetbl` (`id`, `gametype`) VALUES (3,'Superbowl');
/*!40000 ALTER TABLE `gametypetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamgamestbl`
--

DROP TABLE IF EXISTS `teamgamestbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamgamestbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(11) DEFAULT NULL,
  `gamenbr` int(11) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `teamscore` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamgamestbl`
--

LOCK TABLES `teamgamestbl` WRITE;
/*!40000 ALTER TABLE `teamgamestbl` DISABLE KEYS */;
INSERT INTO `teamgamestbl` (`id`, `teamid`, `gamenbr`, `location`, `teamscore`, `enterdate`, `createdate`) VALUES (1,29,1,'H',36,NULL,NULL);
INSERT INTO `teamgamestbl` (`id`, `teamid`, `gamenbr`, `location`, `teamscore`, `enterdate`, `createdate`) VALUES (2,24,1,'A',16,NULL,NULL);
INSERT INTO `teamgamestbl` (`id`, `teamid`, `gamenbr`, `location`, `teamscore`, `enterdate`, `createdate`) VALUES (3,26,2,'H',37,NULL,NULL);
INSERT INTO `teamgamestbl` (`id`, `teamid`, `gamenbr`, `location`, `teamscore`, `enterdate`, `createdate`) VALUES (4,27,2,'A',34,NULL,NULL);
/*!40000 ALTER TABLE `teamgamestbl` ENABLE KEYS */;
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
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstatstbl`
--

LOCK TABLES `teamstatstbl` WRITE;
/*!40000 ALTER TABLE `teamstatstbl` DISABLE KEYS */;
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
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (4,'Patriots','New England','Foxborough','MA','NFL','AFC','East','ne.png',4,NULL,NULL,NULL,NULL);
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
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (15,'Raiders','Oakland','Oakland','CA','NFL','NFC','West','oak.png',3,NULL,NULL,NULL,NULL);
INSERT INTO `teamstbl` (`id`, `name`, `location`, `city`, `state`, `league`, `conference`, `division`, `teamiconname`, `teamorder`, `teamurl`, `status`, `enterdate`, `createdate`) VALUES (16,'Chiefs','Kansas City','Kansas City','MO','NFL','NFC','West','kc.png',4,NULL,NULL,NULL,NULL);
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
-- Table structure for table `userpickstbl`
--

DROP TABLE IF EXISTS `userpickstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `gamesid` int(11) DEFAULT NULL,
  `pick` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickstbl`
--

LOCK TABLES `userpickstbl` WRITE;
/*!40000 ALTER TABLE `userpickstbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstatstbl`
--

DROP TABLE IF EXISTS `userstatstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstatstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `seasonyear` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstatstbl`
--

LOCK TABLES `userstatstbl` WRITE;
/*!40000 ALTER TABLE `userstatstbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `userstatstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` (`id`, `fullname`, `gender`, `username`, `role`, `email`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','M','bluef150','admin','tarrant.cutler@gmail.com','7813420204','tarryc',NULL,NULL,NULL);
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-27 23:14:24
