--
-- Table structure for table `membertbl`
--

DROP TABLE IF EXISTS `membertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membertbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `membername` varchar(255) DEFAULT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `favoriteteamid` int(11) DEFAULT NULL,
  `noemail` int(11) DEFAULT NULL,  
  `biography` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--

LOCK TABLES `membertbl` WRITE;
/*!40000 ALTER TABLE `membertbl` DISABLE KEYS */;
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','AirDreamer','Male','airstream.png','admin','tarrant.cutler@gmail.com','5 Masconomo St','Manchester','MA','01944','781-342-0204','tarryc','active','2015-11-06 21:01:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (2,'Tammy Jamieson','Wildcat Wonder','Female','tammy.png','admin','tjamieson@healthallianze.com','36 Pleasant Ridge','Camden','ME','04843','978-239-2650','Wildcat Wonder','active','2015-09-15 01:12:12',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (6,'Laura Cutler','Peanuts','Female','laura2.png','member','lauraccutler@gmail.com','5 Masconomo St','Manchester','MA','01944','978-526-4676','peanuts','active','2015-09-23 04:39:07',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (7,'William Cutler','DubCut','Male','will.png','member','dubcut@gmail.com','12 Nichols Rd','Reading','MA','01867','781-205-9036','DubCut','active','2015-09-10 22:25:50',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (8,'Bill Shuris','Kiver','Male','kiver.png','member','bjshuris@comcast.net','291 Sterling Street','Clinton','MA','01510','978-660-1431','Kiver','active','2015-09-13 02:32:30',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (9,'Bonnie Shuris','Skinny','Female','bonnie.png','member','bjshuris@comcast.net','291 Sterling Street','Clinton','MA','01510','508-868-0628','skinny','active','2015-09-23 04:36:53',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (10,'Sandy Friedman','SandyLand','Female','sandyavatar.png','member','Sandyfriedman@comcast.net','4938 NW 23rd Court','Boca Raton','FL','33431','','SandyLand','active','2015-09-10 22:29:12',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (11,'Lori Archuleta','Tight End','Female','lori.png','member','loricarchuleta@gmail.com','35 Adams Rd','Boxford ','MA','01921','603-498-0999','Tight End','active','2015-09-10 23:51:17',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (12,'David Archuleta','Archie','Male','davida.png','member','davidarchuleta58@gmail.com','','','','','(603) 408-1543','Archie','active','2015-09-11 00:24:48',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (13,'Chuck Miemiec','Alaskan Fisherman','Male','chuck.png','member','Camiemiec@gmail.com','340 little river road','Westfield','MA','01085','9782739332','Alaskan fisherman','','2015-09-23 04:38:52',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (14,'Tanya Gorman','Cooper','Other','tanya.png','member','gormantanya@att.net','1133 Scott Blvd Unit 14','Decatur','GA','30030',' 404-323-6755','Cooper','active ','2015-09-12 01:42:54',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (15,'Brian Burgin','Steel Got a Chance','Male','brian.png','member','bburgin18@gmail.com','12102 Pine St','Los Alamitos ','CA','90720','630-849-5632','Steel Got a Chance','active','2015-09-12 20:21:11',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (16,'Jessica Hunzelman','NFL Amateur','Female','jessica.png','member','j.joyhunzelman@yahoo.com','4590 Stream Valley Lane','Riverside','CA','92505','978-808-9565','NFL Amateur','active','2015-09-12 21:01:36',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (17,'Lisa and David Hunzelman','Empty Nesters','Female','lisadavid.png','member','lxhunzelman@yahoo.com','5 Glendale rd','Stoneham','MA','02180','978-973-1070','Empty Nesters','active','2015-09-12 21:14:52',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (18,'Ned and Lisa Cutler','Happy Campers','Other','nedlisa.png','member','lejacenter@gmail.com','275 Slide Brook Rd','Easton','NH','03580','(603) 823-5050','Happy Campers','active','2015-09-12 22:43:02',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (19,'Gary Witham','beach goer','Male','gary2.png','member','garyjw@comcast.net','','Glouster','MA','','978-281-1512','beach goer','active','2015-09-14 20:05:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (20,'Leah Jamieson','ANTIC','Female','leah.png','member','doomalley55@gmail.com','202 Fitchburg road','Townsend','MA','01469','978-375-3834','ANTIC','active','2015-09-13 15:46:04',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (21,'Don O Malley ','4Horsemen','Male','donald.png','member','doomalley55@gmail.com','202 Fitchburg road','Townsend','MA','01469','978-375-3834','4Horsemen','active','2015-09-13 15:47:58',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (22,'Sabrina Hunzelman','Toothfairy','Female','sabrina.png','member','slhunzelman91@yahoo.com','','','','','(978) 766-2344','Toothfairy','','2015-09-13 15:50:43',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (23,'Judson Jamieson','18 Wheeler','Male','judd.png','member','J1Jamieson@gmx.com','4504 Forsythia Way','Ooltewah','TN','37363','978-604-6111','18 Wheeler','active','2015-09-27 01:54:05',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (24,'Kris Archuleta','Super Brawler','Male','kris.png','member','krisdarchuleta@gmail.com','35 Adams rd','Boxford','MA','','','Super Brawler','active','2015-09-18 00:07:09',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (25,'Bob Craig','Scotsman357','Male','bobby.png','member','scotsman357@gmail.com','','','','','207-504-1075','Scotsman357','active','2015-09-27 20:47:01',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (26,'Jason Shuris','Conan Clones','Male','jasonshuris.png','Member','jshuris@comcast.net','49 Wilder Road','Sterling','MA','01564','978-482-5852','Conan Clones','Active','2015-10-03 23:12:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (27,'Marc Check','Curious Nerd','Male','default.png','member','mcheck@rockhall.org','2460 Berkshire Ave','Avon','OH','44011','(585) 755-8622','Curious Nerd','active','2015-10-13 22:23:15',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (28,'Danny Gomez','Rookie of the Year','Male','dannyg.png','Member','gomezdanny05@yahoo.com','1294 Ahart st','Similar Valley','CA','93065','805-915-8902','Rookie of the Year','Active','2015-10-15 18:27:37',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (29,'Steve Paris','Exploding Brain','Male','stevep.png','member','smparis@verizon.net','514 Main St','Watertown','MA','02472','617-926-4127','Exploding Brain','active','2015-10-15 23:44:49',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (30,'Dan and Marilyn Brady','Sville 5','Other','default.png','member','msbrady@sc.rr.com','1001 Mesa Court','Summerville','SC','29423','843-670-0826','Sville 5','active','2015-10-27 19:46:44',NULL);
/*!40000 ALTER TABLE `membertbl` ENABLE KEYS */;
UNLOCK TABLES;