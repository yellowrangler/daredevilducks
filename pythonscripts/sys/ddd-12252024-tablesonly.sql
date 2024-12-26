-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB
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
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamebyetbl`
--



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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamenetworktbl`
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
  `gameyear` varchar(25) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3241 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestbl`
--



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

INSERT INTO `gametypetbl` VALUES (1,'Total Season'),(2,'Regular Season'),(3,'Post Season');

--
-- Table structure for table `gameweekstbl`
--

DROP TABLE IF EXISTS `gameweekstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameweekstbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `weekstart` datetime DEFAULT NULL,
  `weekend` datetime DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameweekstbl`
--



--
-- Table structure for table `halloffametbl`
--

DROP TABLE IF EXISTS `halloffametbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halloffametbl` (
  `year` varchar(4) NOT NULL,
  `ord` int(11) NOT NULL,
  `photoA` varchar(225) DEFAULT NULL,
  `photoB` varchar(225) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`year`,`ord`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halloffametbl`
--



--
-- Table structure for table `hallofmemorytbl`
--

DROP TABLE IF EXISTS `hallofmemorytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallofmemorytbl` (
  `ordr` int(11) DEFAULT NULL,
  `memberid` int(11) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `photoA` varchar(225) DEFAULT NULL,
  `photoB` varchar(225) DEFAULT NULL,
  `titleA` varchar(500) DEFAULT NULL,
  `titleB` varchar(500) DEFAULT NULL,
  `detailA` varchar(500) DEFAULT NULL,
  `detailB` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallofmemorytbl`
--



--
-- Table structure for table `membergroupmembertbl`
--

DROP TABLE IF EXISTS `membergroupmembertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membergroupmembertbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `membergroupid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membergroupmembertbl`
--



--
-- Table structure for table `membergrouptbl`
--

DROP TABLE IF EXISTS `membergrouptbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membergrouptbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membergrouptbl`
--


--
-- Table structure for table `membermessagedeliveredtbl`
--

DROP TABLE IF EXISTS `membermessagedeliveredtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membermessagedeliveredtbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `deliverdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membermessagedeliveredtbl`
--


--
-- Table structure for table `membermessagetbl`
--

DROP TABLE IF EXISTS `membermessagetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membermessagetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `fontcolor` varchar(255) DEFAULT NULL,
  `fontname` varchar(255) DEFAULT NULL,
  `fontsize` varchar(255) DEFAULT NULL,
  `fontstyle` varchar(255) DEFAULT NULL,
  `fontweight` varchar(255) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membermessagetbl`
--


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
) ENGINE=InnoDB AUTO_INCREMENT=169663 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberpickstbl`
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
  `playerpickedgames` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `playerpickedpercent` decimal(8,4) NOT NULL,
  `totalgamespercent` decimal(8,4) NOT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2767 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `membertbl`
--

DROP TABLE IF EXISTS `membertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membertbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `membername` varchar(255) DEFAULT NULL,
  `membernameprofileind` int(11) DEFAULT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `genderprofileind` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailprofileind` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `addressprofileind` int(11) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `phonenumberprofileind` int(11) DEFAULT NULL,
  `favoriteteamid` int(11) DEFAULT NULL,
  `noemail` int(11) DEFAULT NULL,
  `biography` varchar(10000) DEFAULT NULL,
  `biographyprofileind` varchar(12) NOT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--



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
  `playerpickedgames` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `playerpickedpercent` decimal(8,4) NOT NULL,
  `totalgamespercent` decimal(8,4) NOT NULL,
  `gametypeid` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49130 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberweekstatstbl`
--



--
-- Table structure for table `nflrsstbl`
--

DROP TABLE IF EXISTS `nflrsstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nflrsstbl` (
  `id` bigint(20) unsigned NOT NULL,
  `rsssource` varchar(255) DEFAULT NULL,
  `rsslink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nflrsstbl`
--


--
-- Table structure for table `playerinjurytbl`
--

DROP TABLE IF EXISTS `playerinjurytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerinjurytbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `playername` varchar(100) DEFAULT NULL,
  `position` varchar(5) DEFAULT NULL,
  `injury` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25050 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `preplayofftbl`
--

DROP TABLE IF EXISTS `preplayofftbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preplayofftbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `playoffstatus` varchar(100) DEFAULT NULL,
  `afcposition` varchar(5) DEFAULT NULL,
  `afcteamname` varchar(255) DEFAULT NULL,
  `afcteamicon` varchar(255) DEFAULT NULL,
  `nfcposition` varchar(5) DEFAULT NULL,
  `nfcteamname` varchar(255) DEFAULT NULL,
  `nfcteamicon` varchar(255) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preplayofftbl`
--


--
-- Table structure for table `surveymemberanswerstbl`
--

DROP TABLE IF EXISTS `surveymemberanswerstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveymemberanswerstbl` (
  `surveyquestionanswerid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` bigint(20) DEFAULT NULL,
  `surveyid` bigint(20) DEFAULT NULL,
  `surveyquestionid` int(11) DEFAULT NULL,
  `surveyquestionanswerresponce` varchar(255) DEFAULT NULL,
  `surveyquestionanswercomment` varchar(1000) DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  PRIMARY KEY (`surveyquestionanswerid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveymemberanswerstbl`
--

DROP TABLE IF EXISTS `surveyquestiontbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestiontbl` (
  `surveyquestionid` bigint(20) NOT NULL,
  `surveyid` bigint(20) DEFAULT NULL,
  `questiontype` varchar(10) DEFAULT NULL,
  `questiontext` varchar(1000) DEFAULT NULL,
  `questiontip` varchar(1000) DEFAULT NULL,
  `questionpicurl` varchar(1000) DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `surveytbl`
--

DROP TABLE IF EXISTS `surveytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveytbl` (
  `surveyid` bigint(20) NOT NULL,
  `surveycurrent` int(11) DEFAULT NULL,
  `surveyyear` int(11) DEFAULT NULL,
  `surveyname` varchar(255) DEFAULT NULL,
  `surveydescription` varchar(1000) DEFAULT NULL,
  `surveytype` varchar(10) DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveytbl`
--

INSERT INTO `surveytbl` VALUES (1,1,2019,'Dare Devil Ducks Survey','','yesno','2019-04-23 00:00:00');

--
-- Table structure for table `teambrackettbl`
--

DROP TABLE IF EXISTS `teambrackettbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teambrackettbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imagename` varchar(100) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `final` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teambrackettbl`
--

DROP TABLE IF EXISTS `teamseasontbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamseasontbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `postseasonstatus` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `teamspostseasonstatustbl`
--

DROP TABLE IF EXISTS `teamspostseasonstatustbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamspostseasonstatustbl` (
  `id` varchar(5) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamspostseasonstatustbl`
--

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
  `gametypeid` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `percent` decimal(8,4) NOT NULL,
  `homewins` int(11) DEFAULT NULL,
  `homelosses` int(11) DEFAULT NULL,
  `hometies` int(11) DEFAULT NULL,
  `hometotalgames` int(11) DEFAULT NULL,
  `homepercent` decimal(8,4) NOT NULL,
  `awaywins` int(11) DEFAULT NULL,
  `awaylosses` int(11) DEFAULT NULL,
  `awayties` int(11) DEFAULT NULL,
  `awaytotalgames` int(11) DEFAULT NULL,
  `awaypercent` decimal(8,4) NOT NULL,
  `confwins` int(11) DEFAULT NULL,
  `conflosses` int(11) DEFAULT NULL,
  `confties` int(11) DEFAULT NULL,
  `conftotalgames` int(11) DEFAULT NULL,
  `confpercent` decimal(8,4) NOT NULL,
  `divwins` int(11) DEFAULT NULL,
  `divlosses` int(11) DEFAULT NULL,
  `divties` int(11) DEFAULT NULL,
  `divtotalgames` int(11) DEFAULT NULL,
  `divpercent` decimal(8,4) NOT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1047 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstatstbl`
--



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
  `postseasonstatus` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstbl`
--



--
-- Table structure for table `teamweekranktbl`
--

DROP TABLE IF EXISTS `teamweekranktbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamweekranktbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `powerranking` int(11) DEFAULT NULL,
  `offencetotal` int(11) DEFAULT NULL,
  `offencepassing` int(11) DEFAULT NULL,
  `offencerushing` int(11) DEFAULT NULL,
  `offencescoring` int(11) DEFAULT NULL,
  `defencetotal` int(11) DEFAULT NULL,
  `defencepassing` int(11) DEFAULT NULL,
  `defencerushing` int(11) DEFAULT NULL,
  `defencescoring` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6657 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamweekranktbl`
--



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
  `gametypeid` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  `totalgames` int(11) DEFAULT NULL,
  `homewins` int(11) DEFAULT NULL,
  `homelosses` int(11) DEFAULT NULL,
  `hometies` int(11) DEFAULT NULL,
  `hometotalgames` int(11) DEFAULT NULL,
  `homepercent` decimal(8,4) NOT NULL,
  `awaywins` int(11) DEFAULT NULL,
  `awaylosses` int(11) DEFAULT NULL,
  `awayties` int(11) DEFAULT NULL,
  `awaytotalgames` int(11) DEFAULT NULL,
  `awaypercent` decimal(8,4) NOT NULL,
  `percent` decimal(8,4) NOT NULL,
  `confwins` int(11) DEFAULT NULL,
  `conflosses` int(11) DEFAULT NULL,
  `confties` int(11) DEFAULT NULL,
  `conftotalgames` int(11) DEFAULT NULL,
  `confpercent` decimal(8,4) NOT NULL,
  `divwins` int(11) DEFAULT NULL,
  `divlosses` int(11) DEFAULT NULL,
  `divties` int(11) DEFAULT NULL,
  `divtotalgames` int(11) DEFAULT NULL,
  `divpercent` decimal(8,4) NOT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9187 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamweekstatstbl`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=23243 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-25 21:32:56
