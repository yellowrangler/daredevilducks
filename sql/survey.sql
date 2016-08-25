--
-- Table structure for table `surveytbl`
--
DROP TABLE IF EXISTS `surveytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveytbl` (
  `id` bigint(20) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveyquestionstbl`
--
DROP TABLE IF EXISTS `surveyquestionstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestiontbl` (
  `id` bigint(20) DEFAULT NULL,
  `surveyid` bigint(20) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveystyletbl`
--
DROP TABLE IF EXISTS `surveystyletbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveystyletbl` (
  `id` bigint(20) DEFAULT NULL,
  `surveystyle` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `surveyanswerstbl`
--
DROP TABLE IF EXISTS `surveyanswerstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestiontbl` (
  `memberid` bigint(20) DEFAULT NULL,
  `surveyid` bigint(20) DEFAULT NULL,
  `questionid` bigint(20) DEFAULT NULL,
  `answerdate` datetime DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

