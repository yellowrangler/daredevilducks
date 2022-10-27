--
-- Table structure for table `hallofmemorytbl`
--

DROP TABLE IF EXISTS `hallofmemorytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallofmemorytbl` (
  `memberid` int(11)  NOT NULL, 
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `photoA` varchar(225) DEFAULT NULL,
  `photoB` varchar(225) DEFAULT NULL,
  `titleA` varchar(500) DEFAULT NULL,
  `titleB` varchar(500) DEFAULT NULL,
  `detailA` varchar(500) DEFAULT NULL,
  `detailB` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `hallofmemorytbl`
VALUES 
(
  "6",
  "Cutler",
  "Laura",
  "momobitpicture.png",
  "LauraPeanutWinningAvatar.png",
  "Laura C Cutler <br> 1927 - 2020",
  "Peanuts <br> 6 year Member",
  "Laura was a loving and generous person with a beautiful smile that would light up a room. Above all she enjoyed her family and dogs. Summers would find her collecting heart shaped rocks and blue sea glass on singing beach and later on the Vineyard. But, her favorite moments were on family vacations where she shamelessly spoiled her children and grandchildren. Laura loved to laugh and she lived and enjoyed life in a way made others lives fuller. She will be missed by many.",
  "Laura joined as in our first year. She was our first Daredevil Ducks Champion! She was always a competitive and enthusiastic member. She loved football, especially Joe Namath!"
),
(
  "23",
  "Jamieson",
  "Judson",
  "JudsonJamiesonAvatar2.png",
  "JudsonJamiesonAvatar2.png",
  "Judson B Jamieson <br> 1945 - 2020",
  "18 Wheeler <br> 5 year Member",
  "Judson (Jud) was a loving father and grandfather",
  "Judson joined as in our second year. He was also a competitive and enthusiastic member. Jud came within one win of the Daredevil Ducks trophy in 2016, loosing to his niece in the final game!"
),
(
  "50",
  "Putnam",
  "Nancy",
  "NancyPutnamAvatar2A.png",
  "NancyPutnamAvatar2A.png",
  "Nancy Putnam <br> 1931 - 2020",
  "Snow Storm <br> 3 year Member",
  "Nancy was a loving wife. She loved summering in Bar Harbor with her husband and 2 poodles!",
  "Nancy joined as in our third year. She was an active member member."
  ),
(
  "65",
  "Kretlow",
  "Fred",
  "FredK.png",
  "FredK.png",
  "Fredrick P Kretlow <br> 1941 - 2021",
  "Captain Coconut <br> 4 year Member",
  "Fred Kretlow!",
  "Fred joined as in our fourth year. He was an active member."
  );

