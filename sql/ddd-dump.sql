-- MySQL dump 10.13  Distrib 5.5.35, for Linux (i686)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	5.5.35

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
-- used command line mysqldump -u tarryc -p ddd > ddd-dumo.sql
--
-- Table structure for table `gamestbl`
--

DROP TABLE IF EXISTS `gamestbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamestbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seasonyear` int(11) DEFAULT NULL,
  `weeknbr` int(11) DEFAULT NULL,
  `gamenbr` int(11) DEFAULT NULL,
  `gamedate` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `hometeamid` int(11) DEFAULT NULL,
  `awayteamid` int(11) DEFAULT NULL,
  `hometeamscore` int(11) DEFAULT NULL,
  `awayteamscore` int(11) DEFAULT NULL,
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
  `teamurl` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstbl`
--

LOCK TABLES `teamstbl` WRITE;
/*!40000 ALTER TABLE `teamstbl` DISABLE KEYS */;
INSERT INTO `teamstbl` VALUES (1,'Miami Dolphins','','NFL','AFC','East','mia.png',NULL,NULL,NULL,NULL),(2,'New York Jets',NULL,'NFL','AFC','East','nyj.png','',0,'0000-00-00 00:00:00',NULL);
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
INSERT INTO `usertbl` VALUES (1,'Tarrant Cutler','M','bluef150','tarrant.cutler@gmail.com','7813420204','tarryc',NULL,NULL,NULL);
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

-- Dump completed on 2015-05-23 11:53:53
