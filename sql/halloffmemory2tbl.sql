-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: ddd
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hallofmemorytbl`
--

DROP TABLE IF EXISTS `hallofmemorytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallofmemorytbl` (
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

LOCK TABLES `hallofmemorytbl` WRITE;
/*!40000 ALTER TABLE `hallofmemorytbl` DISABLE KEYS */;
INSERT INTO `hallofmemorytbl` VALUES 
(6,'Cutler','Laura','momobitpicture.png','LauraPeanutWinningAvatar.png','Laura C Cutler <br> 1927 - 2020','Peanuts <br> 6 year Member','Laura was a loving and generous person with a beautiful smile that would light up a room. Summers would find her collecting heart shaped rocks and blue sea glass on singing beach and later on Marthas Vineyard. Laura loved to laugh and she lived and enjoyed life in a way made others lives fuller. ','Laura joined as in our first year. She was our first Daredevil Ducks Champion! She was always a competitive and enthusiastic member. She loved football, especially Joe Namath!'),
(23,'Jamieson','Judson','JudsonJamiesonAvatar2.png','JudsonJamiesonAvatar2.png','Judson B Jamieson <br> 1945 - 2020','18 Wheeler <br> 5 year Member','Judson was a loving father and grandfather','Judson  (Jud) joined as in our second year. He was also a competitive and enthusiastic member. Jud came within one win of the Daredevil Ducks trophy in 2016, loosing to his niece in the final game!'),
(50,'Putnam','Nancy','NancyPutnamAvatar2A.png','NancyPutnamAvatar2A.png','Nancy Putnam <br> 1931 - 2020','Snow Storm <br> 3 year Member','Nancy was a loving wife. Summer would find her with her husband and numerous family members at Mt Desert Island in Maine with her husband and 2 poodles!','Nancy joined as in our third year. '),
(65,'Kretlow','Fred','FredK.png','FredK.png','Fredrick P Kretlow <br> 1941 - 2021','Captain Coconut <br> 4 year Member','Fred Kretlow!','Fred joined as in our fourth year. He was an active member.');
/*!40000 ALTER TABLE `hallofmemorytbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 17:40:53
