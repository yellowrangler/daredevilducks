--
-- Table structure for table `halloffametbl`
--

DROP TABLE IF EXISTS `halloffametbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halloffametbl` (
  `year` varchar(4) DEFAULT NULL,
  `photourlA` varchar(225) DEFAULT NULL,
  `photourlB` varchar(225) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `halloffametbl`
VALUES 
(
  "9999",
  "HallofFamePicture2.png",
  "HallofFameAngryDonald.png",
  "This could be you! - Next years Dare Devil Duck League Winner",
  "Glowing praise and admiration for you!"
  ),
(
  "2014",
  "MomVictor.png",
  "MomKissCup.png",
  "Peanuts (Laura Cutler) - 2014 Dare Devil Duck League Winner",
  "As both Grandmother and Mother, Laura took everyone by suprise and showed us 'experts' how to walk the walk. Way to go Mom, Grandma and Laura!"
),
(
  "2015",
  "SabrinaWinner.png",
  "SabrinaDisapointment.png",
  "Toothfairy (Sabrina Hunzelman) - 2015 Dare Devil Duck League Winner",
  "New to our group in 2015, Sabrina dominted first place. This soft spoken dental hygentist set her 'teeth' into her analysis and took the 'crown' with ease! Way to go Sabrina!"
),
(
  "2016",
  "Sabrina2ndWinCrop.png",
  "Sabrina2ndWin5Crop.png",
  "Toothfairy (Sabrina Hunzelman) - 2016 Dare Devil Duck League Winner",
  "Sabrina is our first repeat winner! The bar is now officially raised for the rest of us. Way to go Sabrina!"
),
(
  "2017",
  "PaulaBishopDDDWin8AFix.png",
  "PaulaBishopDDDWin7BScreenShot.png",
  "Hawk Eye (Paula Bishop) - 2017 Dare Devil Duck League Winner",
  "Paula is a second year member. An avid tennis player, Paula clearly knows her sports. Way to go Paula!"
),
(
  "2018",
  "donomalleyhof-2018.png",
  "donomalleyhof-2018-2.png",
  "4Horsemen (Don O'Malley) - 2018 Dare Devil Duck League Winner",
  "Don is our first male winner! Long live the new King! Way to go Don!"
),
(
  "2019",
  "TanyaHallofFame.png",
  "TonyHallofFame.png",
  "Team Remington (Tanya Gorman, Tony Bruehl and Remington) - 2019 Dare Devil Duck League Winners",
  "Tanya and Tony from Team Remington (their dog is Remington) put in a stellar season culminating in a spectacular win! Way to go Team Remington!"
),
(
  "2020",
  "HallofFameWinners20201.png",
  "HallofFameWinners20201.png",
  "Alaskan Fisherman (Chuck Miemiec), SandyR (Sandy Rudman),  Skinny (Bonnie Shuris) - 2020 Dare Devil Duck League Winners",
  "Chuck Miemiec (2015) long time member. Sandy (2017) is another Maine-iac! Bonnie (2014) is one of our original eight players! Way to go All!!"
),
(
  "2021",
  "OscarGuzmanAvatar2A.png",
  "OscarGuzmanAvatar2A.png",
  "Oscar Guzman (Hygenius) - 2021 Dare Devil Duck League Winner",
  "Oscar Guzman was in the hunt all year. Another Dental Hygentist (like his wife Toothfairy), Oscar kept his head clear and took the 'crown' when it mattered! Way to go Oscar!"
);
