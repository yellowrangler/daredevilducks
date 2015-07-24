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
-- used command line mysqldump -u tarryc -p ddd > ddd-dump.sql
--

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
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestbl`
--

LOCK TABLES `gamestbl` WRITE;
/*!40000 ALTER TABLE `gamestbl` DISABLE KEYS */;
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
INSERT INTO `gametvtbl` VALUES (1,'FOX'),(2,'CBS'),(3,'NBC'),(4,'NFL'),(5,'ESPN');
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
INSERT INTO `gametypetbl` VALUES (1,'Regular'),(2,'Playoffs'),(3,'Superbowl');
/*!40000 ALTER TABLE `gametypetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teambyetbl`
--

DROP TABLE IF EXISTS `teambyetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teambyetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teambyetbl`
--

LOCK TABLES `teambyetbl` WRITE;
/*!40000 ALTER TABLE `teambyetbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `teambyetbl` ENABLE KEYS */;
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
INSERT INTO `teamgamestbl` VALUES (1,29,1,'H',36,NULL,NULL),(2,24,1,'A',16,NULL,NULL),(3,26,2,'H',37,NULL,NULL),(4,27,2,'A',34,NULL,NULL);
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
INSERT INTO `teamstbl` VALUES (1,'Miami Dolphins',NULL,'NFL','AFC','East','mia.png',1,NULL,NULL,NULL,NULL),(2,'New York Jets',NULL,'NFL','AFC','East','nyj.png',2,NULL,NULL,NULL,NULL),(3,'Buffalo Bills',NULL,'NFL','AFC','East','buf.png',3,NULL,NULL,NULL,NULL),(4,'New England Patriots',NULL,'NFL','AFC','East','ne.png',4,NULL,NULL,NULL,NULL),(5,'Cincinnati Bengals',NULL,'NFL','AFC','North','cin.png',1,NULL,NULL,NULL,NULL),(6,'Pittsburgh Steelers',NULL,'NFL','AFC','North','pit.png',2,NULL,NULL,NULL,NULL),(7,'Cleveland Browns',NULL,'NFL','AFC','North','cle.png',3,NULL,NULL,NULL,NULL),(8,'Baltimore Ravens',NULL,'NFL','AFC','North','bal.png',4,NULL,NULL,NULL,NULL),(9,'Tennessee Titans',NULL,'NFL','AFC','South','ten.png',1,NULL,NULL,NULL,NULL),(10,'Houston Texans',NULL,'NFL','AFC','South','hou.png',2,NULL,NULL,NULL,NULL),(11,'Jacksonville Jaguars',NULL,'NFL','AFC','South','jac.png',3,NULL,NULL,NULL,NULL),(12,'Indianapolis Colts',NULL,'NFL','AFC','South','ind.png',4,NULL,NULL,NULL,NULL),(13,'Denver Broncos',NULL,'NFL','AFC','West','den.png',1,NULL,NULL,NULL,NULL),(14,'San Diego Chargers',NULL,'NFL','AFC','West','sd.png',2,NULL,NULL,NULL,NULL),(15,'Oakland Raiders',NULL,'NFL','AFC','West','oak.png',3,NULL,NULL,NULL,NULL),(16,'Kansas City Chiefs',NULL,'NFL','AFC','West','kc.png',4,NULL,NULL,NULL,NULL),(17,'Philadelphia Eagles',NULL,'NFL','NFC','East','phi.png',1,NULL,NULL,NULL,NULL),(18,'Washington Redskins',NULL,'NFL','NFC','East','was.png',2,NULL,NULL,NULL,NULL),(19,'Dallas Cowboys',NULL,'NFL','NFC','East','dal.png',3,NULL,NULL,NULL,NULL),(20,'New York Giants',NULL,'NFL','NFC','East','nyg.png',4,NULL,NULL,NULL,NULL),(21,'Minnesota Vikings',NULL,'NFL','NFC','North','min.png',1,NULL,NULL,NULL,NULL),(22,'Detroit Lions',NULL,'NFL','NFC','North','det.png',2,NULL,NULL,NULL,NULL),(23,'Chicago Bears',NULL,'NFL','NFC','North','chi.png',3,NULL,NULL,NULL,NULL),(24,'Green Bay Packers',NULL,'NFL','NFC','North','gb.png',4,NULL,NULL,NULL,NULL),(25,'Carolina Panthers',NULL,'NFL','NFC','South','car.png',1,NULL,NULL,NULL,NULL),(26,'Atlanta Falcons',NULL,'NFL','NFC','South','atl.png',2,NULL,NULL,NULL,NULL),(27,'New Orleans Saints',NULL,'NFL','NFC','South','car.png',3,NULL,NULL,NULL,NULL),(28,'Tampa Bay Buccaneers',NULL,'NFL','NFC','South','tb.png',4,NULL,NULL,NULL,NULL),(29,'Seattle Seahawks',NULL,'NFL','NFC','West','sea.png',1,NULL,NULL,NULL,NULL),(30,'San Francisco 49ers',NULL,'NFL','NFC','West','sf.png',2,NULL,NULL,NULL,NULL),(31,'Arizona Cardinals',NULL,'NFL','NFC','West','ari.png',3,NULL,NULL,NULL,NULL),(32,'St. Louis Rams',NULL,'NFL','NFC','West','stl.png',4,NULL,NULL,NULL,NULL);
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
INSERT INTO `usertbl` VALUES (1,'Tarrant Cutler','M','bluef150','admin','tarrant.cutler@gmail.com','7813420204','tarryc',NULL,NULL,NULL);
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

-- Dump completed on 2015-07-22 15:41:37
