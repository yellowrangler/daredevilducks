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
INSERT INTO `hallofmemorytbl` VALUES (6,'Cutler','Laura','momobitpicture.png','LauraPeanutWinningAvatar.png','Laura C Cutler <br> 1927 - 2020','Peanuts <br> 6 year Member','Summers would find Laura collecting heart shaped rocks and blue sea glass on singing beach and later on Marthas Vineyard. Laura loved to laugh and she lived and enjoyed life in a way made others lives fuller. ','Laura joined as in our first year. She was our first Daredevil Ducks Champion! She was always a competitive and enthusiastic member. She loved football, especially Joe Namath!'),(23,'Jamieson','Judson','JudsonJamiesonHallofMemoryPicture.png','JudsonJamiesonHallofMemoryAvatar.png','Judson B Jamieson <br> 1945 - 2020','18 Wheeler <br> 5 year Member','Judson was a loving and devoted husband, father, grandfather and great grandfather. He married Gwen Joy in Lincolnville, ME. He worked with the SDA for 30+ years. He also served our country in the Army at Fort Eustis in VA.','Judson  (Jud) joined as in our second year. He was also a competitive and enthusiastic member. Jud came within one win of the Daredevil Ducks trophy in 2016, loosing to his grand daughter in the final game!'),(50,'Putnam','Nancy','NancyPutnamHallofMemoryAvatar.png','NancyPutnamHallofMemoryAvatar.png','Nancy Putnam <br> 1931 - 2020','Snow Storm <br> 3 year Member','Nancy was devoted to her husband George, and her standard poodles. She and her late husband greatly enjoyed their saltwater farm on Mount Desert Island, Maine. ','Nancy joined as in our third year. She and her husband George invited us with our Airstream down east to their humble Maine home. It was there that we sold her on becoming a member.'),(65,'Kretlow','Fred','FredKretlowHallofMemoryAvatar.png','FredKretlowHallofMemoryAvatar.png','Fredrick P Kretlow <br> 1941 - 2021','Captain Coconut <br> 4 year Member','Fred was born in Whitefish Bay, WI. He was a bank auditor for Palmer Bank, moving on to Vice President, CDM for SunTrust. He will be missed dearly, but knowing he is safe in heaven.','Fred joined as in our fourth year. We had the pleasure of meeting him and his wife in Florida at Turtle Bay. We sat on the beach and watched the sun set. It is always our pleasure to meet one of our members, and so it was with Fred and his wife Linda. ');
/*!40000 ALTER TABLE `hallofmemorytbl` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `halloffametbl` WRITE;
/*!40000 ALTER TABLE `halloffametbl` DISABLE KEYS */;
INSERT INTO `halloffametbl` VALUES ('2014',1,'MomVictor.png','LauraPeanutWinningAvatar.png','Laura Cutler <br> Peanuts <br> 2014 Winner','As both Grandmother and Mother, Laura took everyone by suprise and showed us \'experts\' how to walk the walk. Way to go Mom, Grandma and Laura!'),('2015',1,'SabrinaWinner.png','SabrinaToothfairyWinningAvatar.png','Sabrina Hunzelman <br> Toothfairy <br> 2015 Winner','New to our group in 2015, Sabrina dominted first place. This soft spoken dental hygentist set her \'teeth\' into her analysis and took the \'crown\' with ease! Way to go Sabrina!'),('2016',1,'Sabrina2ndWinCrop.png','SabrinaToothfairyWinningAvatar.png','Sabrina Hunzelman <br> Toothfairy <br> 2016 Winner','Sabrina is our first repeat winner! The bar is now officially raised for the rest of us. Way to go Sabrina!'),('2017',1,'PaulaBishopDDDWin8AFix.png','PaulaHowkeyeWinningAvatar.png','Paula Bishop <br> Hawk Eye <br> 2017 Winner','Paula is a second year member. An avid tennis player, Paula clearly knows her sports. Way to go Paula!'),('2018',1,'donomalleyhof-2018.png','Don4HorsemanWinningAvatar.png','Don O\'Malley <br> 4Horsemen <br> 2018 Winner','Don is our first male winner! Long live the new King! Way to go Don!'),('2019',1,'TanyaHallofFame.png','RemingtonHallofFamePicture1.png','Tanya Gorman and Remington <br> Team Remington <br> 2019 Winners','Tanya and Tony from Team Remington (their dog is Remington) put in a stellar season culminating in a spectacular win! Way to go Team Remington!'),('2019',2,'TonyHallofFame.png','RemingtonHallofFamePicture1.png','Tony Bruehl <br> Team Remington <br> 2019 Winner','Tony and Tanya from Team Remington (their dog is Remington) put in a stellar season culminating in a spectacular win! Way to go Team Remington!'),('2020',1,'ChuckHallofFamePicture1.png','ChuckAlaskanFishWinningAvatar.png','Chuck Miemiec <br> Alaskan Fisherman <br> 2020 Winner','Chuck Miemiec (2015) long time member and fisherman extraordinaire! Way to go Chuck!!'),('2020',2,'SandyRMaineWinningAvatar.png','SandyRMaineWinningAvatar.png','Sandy Rudman <br> SandyR <br> 2020 Winner','Sandy (2017) is one of our esteemed Maine-iacs! Way to go Sandy!!'),('2020',3,'BonnieSkinnyWinningAvatar.png','BonnieSkinnyWinningAvatar.png','Bonnie Shuris <br> Skinny <br> 2020  Winner','Bonnie (2014) is one of our original eight players! Way to go Bonnie!'),('2021',1,'OscarHallofFamePicture1B.png','OscarGuzmanAvatar2A.png','Oscar Guzman <br> Hygenius <br> 2021 Winner','Oscar Guzman was in the hunt all year. Another Dental Hygentist (like his wife Toothfairy), Oscar kept his head clear and took the \'crown\' when it mattered! Way to go Oscar!'),('9999',1,'HallofFamePicture2.png','HallofFameAngryDonald.png','This could be you! <br> 2022 Winner!','Glowing praise and admiration for you!');
/*!40000 ALTER TABLE `halloffametbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-30 12:48:30
