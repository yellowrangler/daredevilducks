--
-- Alter Table structure for table `membertbl`
--
ALTER TABLE membertbl
ADD COLUMN `membernameprofileind` int(11) DEFAULT NULL AFTER `membername`,
ADD COLUMN `genderprofileind` int(11) DEFAULT NULL AFTER `gender`,
ADD COLUMN `emailprofileind` int(11) DEFAULT NULL AFTER `email`,
ADD COLUMN `addressprofileind` int(11) DEFAULT NULL AFTER `zip`,
ADD COLUMN `phonenumberprofileind` int(11) DEFAULT NULL AFTER `phonenumber`,
ADD COLUMN `biographyprofileind` VARCHAR(12) NOT NULL AFTER `biography`;

UPDATE membertbl 
SET membernameprofileind = 0, genderprofileind = 0, emailprofileind = 0,
addressprofileind = 0, phonenumberprofileind = 0, biographyprofileind = 0
WHERE 1


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
  `biography` varchar(255) DEFAULT NULL,
  `biographyprofileind` int(11) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--

--
-- Inserting zeros into profile indicators for table `membertbl`
--
-- UPDATE membertbl 
-- SET membernameprofileind = 0, genderprofileind = 0, emailprofileind = 0, 
--     addressprofileind = 0, phonenumberprofileind = 0, biographyprofileind = 0
-- WHERE 1    

LOCK TABLES `membertbl` WRITE;
/*!40000 ALTER TABLE `membertbl` DISABLE KEYS */;
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (1,'Tarrant Cutler','AirDreamer','Male','airstream.png','admin','tarrant.cutler@gmail.com','5 Masconomo St','Manchester','MA','01944','781-342-0204',4,0,'Tammy and I started this group.','tarryc','active','2015-11-13 02:15:16',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (2,'Tammy Jamieson','Wildcat Wonder','Female','tammy.png','admin','tjamieson@healthallianze.com','36 Pleasant Ridge','Camden','ME','04843','978-239-2650',4,0,'LOVE Football!  So Gald we can share the sport with Good Family & Friends.  Game On!','Wonder Wildcat','active','2015-12-08 05:34:45',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (6,'Laura Cutler','Peanuts','Female','laura2.png','member','lauraccutler@gmail.com','5 Masconomo St','Manchester','MA','01944','978-526-4676',4,0,'','peanuts','active','2015-11-26 03:41:44',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (7,'William Cutler','DubCut','Male','will.png','member','dubcut@gmail.com','12 Nichols Rd','Reading','MA','01867','781-205-9036',NULL,NULL,NULL,'DubCut','active','2015-09-10 22:25:50',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (8,'Bill Shuris','Kiver','Male','kiver.png','member','bjshuris@comcast.net','291 Sterling Street','Clinton','MA','01510','978-660-1431',NULL,NULL,NULL,'Kiver','active','2015-09-13 02:32:30',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (9,'Bonnie Shuris','Skinny','Female','bonnie.png','member','bjshuris@comcast.net','291 Sterling Street','Clinton','MA','01510','508-868-0628',NULL,NULL,NULL,'Skinny','active','2015-09-23 04:36:53',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (10,'Sandy Friedman','SandyLand','Female','sandyavatar.png','member','Sandyfriedman@comcast.net','4938 NW 23rd Court','Boca Raton','FL','33431','',NULL,NULL,NULL,'SandyLand','active','2015-09-10 22:29:12',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (11,'Lori Archuleta','Tight End','Female','lori.png','member','loricarchuleta@gmail.com','35 Adams Rd','Boxford ','MA','01921','603-498-0999',4,0,'','Tight End','active','2016-01-23 04:43:17',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (12,'David Archuleta','Archie','Male','davida.png','member','davidarchuleta58@gmail.com','','','','','(603) 408-1543',NULL,NULL,NULL,'Archie','active','2015-09-11 00:24:48',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (13,'Chuck Miemiec','Alaskan Fisherman','Male','chuck.png','member','Camiemiec@gmail.com','340 little river road','Westfield','MA','01085','9782739332',NULL,NULL,NULL,'Alaskan fisherman','active','2015-09-23 04:38:52',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (14,'Tanya Gorman','Cooper','Other','tanya.png','member','gormantanya@att.net','1133 Scott Blvd Unit 14','Decatur','GA','30030',' 404-323-6755',NULL,NULL,NULL,'Cooper','active','2015-09-12 01:42:54',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (15,'Brian Burgin','Steel Got a Chance','Male','brian-avatar-brady.png','member','bburgin18@gmail.com','12102 Pine St','Los Alamitos ','CA','90720','630-849-5632',NULL,NULL,NULL,'Steel Got a Chance','active','2015-09-12 20:21:11',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (16,'Jessica Hunzelman','NFL Amateur','Female','jessica.png','member','j.joyhunzelman@yahoo.com','4590 Stream Valley Lane','Riverside','CA','92505','978-808-9565',NULL,NULL,NULL,'NFL Amateur','active','2015-09-12 21:01:36',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (17,'Lisa and David Hunzelman','Empty Nesters','Female','lisadavid.png','member','lxhunzelman@yahoo.com','5 Glendale rd','Stoneham','MA','02180','978-973-1070',NULL,NULL,NULL,'Empty Nesters','active','2015-09-12 21:14:52',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (18,'Ned and Lisa Cutler','Happy Campers','Other','nedlisa.png','member','lejacenter@gmail.com','275 Slide Brook Rd','Easton','NH','03580','(603) 823-5050',NULL,NULL,NULL,'Happy Campers','active','2015-09-12 22:43:02',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (19,'Gary Witham','beach goer','Male','gary2.png','member','garyjw@comcast.net','','Glouster','MA','','978-281-1512',NULL,NULL,NULL,'beach goer','active','2015-09-14 20:05:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (20,'Leah Jamieson','ANTIC','Female','leah.png','member','doomalley55@gmail.com','202 Fitchburg road','Townsend','MA','01469','978-375-3834',NULL,NULL,NULL,'ANTIC','active','2015-09-13 15:46:04',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (21,'Don O Malley ','4Horsemen','Male','donald.png','member','doomalley55@gmail.com','202 Fitchburg road','Townsend','MA','01469','978-375-3834',15,0,'','4Horsemen','active','2015-12-03 23:10:52',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (22,'Sabrina Hunzelman','Toothfairy','Female','sabrina.png','member','slhunzelman91@yahoo.com','','','','','(978) 766-2344',0,0,'','Toothfairy','active','2016-09-11 15:56:14',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (23,'Judson Jamieson','18 Wheeler','Male','judd.png','member','J1Jamieson@gmx.com','4504 Forsythia Way','Ooltewah','TN','37363','978-604-6111',NULL,NULL,NULL,'18 Wheeler','active','2015-09-27 01:54:05',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (24,'Kris Archuleta','Super Brawler','Male','kris.png','member','krisdarchuleta@gmail.com','35 Adams rd','Boxford','MA','','',NULL,NULL,NULL,'Super Brawler','active','2015-09-18 00:07:09',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (25,'Bob Craig','Scotsman357','Male','bobby.png','member','scotsman357@gmail.com','','','','','207-504-1075',NULL,NULL,NULL,'Scotsman357','active','2015-09-27 20:47:01',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (26,'Jason Shuris','Conan Clones','Male','jasonshuris.png','Member','jshuris@comcast.net','49 Wilder Road','Sterling','MA','01564','978-482-5852',NULL,NULL,NULL,'Conan Clones','active','2015-10-03 23:12:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (27,'Marc Check','Curious Nerd','Male','default.png','member','mcheck@rockhall.org','2460 Berkshire Ave','Avon','OH','44011','(585) 755-8622',NULL,NULL,NULL,'Curious Nerd','active','2015-10-13 22:23:15',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (28,'Danny Gomez','Rookie of the Year','Male','dannyg.png','Member','gomezdanny05@yahoo.com','1294 Ahart st','Similar Valley','CA','93065','805-915-8902',0,0,'','Rookie of the Year','inactive','2016-09-11 15:37:00',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (29,'Steve Paris','Exploding Brain','Male','stevep.png','member','smparis@verizon.net','514 Main St','Watertown','MA','02472','617-926-4127',NULL,NULL,NULL,'Exploding Brain','active','2015-10-15 23:44:49',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (30,'Dan and Marilyn Brady','Summerville 5','Other','SummervilleAvatar.png','member','msbrady@sc.rr.com','1001 Mesa Court','Summerville','SC','29423','843-670-0826',0,0,'','Sville 5','active','2016-09-26 23:15:07',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (31,'Kay Allard','Red Bird','Female','kaya.png','member','kay.allard@comcast.net','25 Masconomo St','Manchester','MA','01944','Manchester',4,0,'','Red Bird','active','2015-11-15 23:31:31',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (32,'Kathie DellaPiana','Kathie','Female','default.png','member','kdellapi@santander.us','','','','','978-526-9096',4,0,'','kathie','active','2016-08-30 16:20:55',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (33,'Pat MacKay','Pat','Female','default.png','member','patriciaemackay@msn.com','18 Ceder St','Hudson','NH','03051','603-801-1117',4,0,'','pat','active','2016-09-07 22:28:53',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (34,'Kathy Foley','KathyF','Female','default.png','member','kmf118@comcast.net','','','','','',0,0,'','KathyF','active','2016-09-08 15:34:14',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (35,'Steve Therrien','The Fighting Ducks','Male','SteveTherrien.png','member','Stottnik@aol.com','339 Primrose Street','Haverhill','MA','01830','6175385114',4,0,'','SteveT','active','2016-09-09 18:10:11',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (36,'Sandy Therrien','SandyT','Female','default.png','member','stacyscott20002000@yahoo.com','367 pine run drive','Osprey','FL','34229','9417242243',4,0,'','SandyT','active','2016-09-11 04:54:24',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (37,'Paula Bishop','Hawk Eye','Female','default.png','member','paulabishop@kw.com','','','','','',0,0,'','Hawk Eye','active','2016-09-08 15:39:33',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (38,'Donna Williamson','DonnaW','Not Selected','default.png','member','Donna.wmson@gmail.com','','','','','',0,0,'','DonnaW','active','2016-09-08 15:41:11',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (39,'Scott Williamson','ScottW','Male','default.png','member','Scott.wmson1@gmail.com','','','','','',0,0,'','ScottW','active','2016-09-09 00:32:13',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (40,'David Donnelly','DavidD','Male','default.png','member','donnellyreal@aol.com','','','','','',0,0,'','DavidD','active','2016-09-08 15:49:27',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (41,'Mary Anne Joy','Tenn Vols','Not Selected','MaryAnn.png','member','danny_k_joy@juno.com','','','','','',0,0,'','Tenn Vols','active','2016-09-09 00:28:46',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (42,'Ellen Nelton','Ginger','Female','default.png','member','enelton88@gmail.com','','','','','',0,0,'','Ginger','active','2016-09-08 23:49:57',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (43,'Cindy Rancort','Merida','Female','CindyRancourt.png','member','cindyr1d6@gmail.com','','','','','',0,0,'','Merida','active','2016-09-10 17:25:03',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (44,'Pat MacDonald','MacDewars','Female','PatMacdonald.png','member','macdonald.pat2@yahoo.com','','','','','',0,0,'','MacDewars','active','2016-09-10 17:26:33',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (45,'Bobbie Pereira','Titos Totaler','Female','BobbiePereira.png','member','alleyshot@yahoo.com','','','','','',0,0,'','Titos Totaler','active','2016-09-15 21:05:45',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (46,'Caroline Davis','Jahor Tigress','Female','default.png','member','carolinecanlah@gmail.com','','','','','',0,0,'','Jahor Tigress','active','2016-09-30 19:22:21',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (47,'Robert Craig','Bucket Boomers','Male','RobCraig.png','member','rcraig@robcraiglaw.com','','','','','',0,0,'','Bucket Boomers','active','2016-09-14 18:08:39',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (48,'Holly Fitch','Mouse Girl','Female','HollyFitch.png','member','hollydfitch@gmail.com','106 Casco Rd','Naples','ME','04055','',4,0,'','Mouse Girl','active','2016-09-18 23:40:54',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (49,'Pete','Red Gorillaz','Male','pete.png','member','pete22_2000@yahoo.com','','','','','',0,0,'','Red Gorillaz','active','2016-09-29 20:45:08',NULL);
INSERT INTO `membertbl` (`id`, `membername`, `screenname`, `gender`, `avatar`, `role`, `email`, `street`, `city`, `state`, `zip`, `phonenumber`, `favoriteteamid`, `noemail`, `biography`, `passwd`, `status`, `enterdate`, `createdate`) VALUES (50,'Nancy Putnam','Snow Storm','Female','default.png','member','','','Manchester','MA','01944','',0,0,'','Snow Storm','active','2016-10-03 15:34:47',NULL);
/*!40000 ALTER TABLE `membertbl` ENABLE KEYS */;
UNLOCK TABLES;
