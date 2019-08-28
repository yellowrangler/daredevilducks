-- MySQL dump 10.16  Distrib 10.2.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	10.2.17-MariaDB

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
-- Table structure for table `nflrsstbl`
--

DROP TABLE IF EXISTS `nflrsstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nflrsstbl` (
  `id` bigint(20) unsigned NOT NULL,
  `rsssource` varchar(255) DEFAULT NULL,
  `rsslink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nflrsstbl`
--

LOCK TABLES `nflrsstbl` WRITE;
/*!40000 ALTER TABLE `nflrsstbl` DISABLE KEYS */;
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (1,'NFL','http://www.nfl.com/rss/rsslanding?searchString=home');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (2,'ESPN','https://www.espn.com/espn/rss/nfl/news');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (3,'Rotowire','http://www.rotowire.com/rss/news.htm?sport=nfl');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (4,'FOX','http://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU&tag=nfl');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (5,'Boston Globe','https://www.boston.com/tag/new-england-patriots/feed');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (6,'Bleacher Report','http%3A%2F%2Fbleacherreport.com/articles/feed?tag_id=16');
INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES (7,'CBS','https://www.cbssports.com/rss/headlines/nfl/');

/*!40000 ALTER TABLE `nflrsstbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-28 17:31:17
