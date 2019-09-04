-- MySQL dump 10.15  Distrib 10.0.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.28-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eventtripentrytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventtripentrytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripid` bigint(20) DEFAULT NULL,
  `event` varchar(256) DEFAULT NULL,
  `venue` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `otherfees` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `websiteurl` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventtripentrytbl`
--

INSERT INTO `eventtripentrytbl` VALUES (2,1,3,'Jazz Blues Festival','Music concert','68 Barley Neck Rd','Orleans','MA','02653','100.00',NULL,'2019-06-14','17:18:00',102100.0,'','tarrant.cutler@gmail.com','5082558029','',NULL,'yadda yadda','2019-06-16 14:39:23');
INSERT INTO `eventtripentrytbl` VALUES (3,1,3,'Morman Tabernacle Choir','Music','68 Barley Neck Rd','Orleans','MA','02653','60.00',NULL,'2018-04-03','17:18:00',100788.0,'','tarrant.cutler@gmail.com','5082558029','',NULL,NULL,'2019-06-16 14:43:15');
INSERT INTO `eventtripentrytbl` VALUES (4,1,3,'Mobile Event','Educational','','','CO',NULL,'10.00',NULL,'2019-06-23','10:19:00',NULL,'','','','',NULL,'Learned about how to add mobile internet to rv.','2019-06-23 14:19:34');

--
-- Table structure for table `foodtripentrytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodtripentrytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripid` bigint(20) DEFAULT NULL,
  `restaurant` varchar(256) DEFAULT NULL,
  `venue` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `otherfees` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `websiteurl` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodtripentrytbl`
--

INSERT INTO `foodtripentrytbl` VALUES (1,1,3,'Tacolu','Mexican','','Jacksonville','FL','','60.00',NULL,'2019-06-13','16:18:00',101450.0,'http://www.tacolu.com/','','(904) 249-8226','Jose',NULL,'Awesome place. Great sweet corn.','2019-07-09 22:28:05');
INSERT INTO `foodtripentrytbl` VALUES (2,1,3,'Subway','fast food','','Fasco','AL','','13.50',NULL,'2018-04-04','12:45:00',100400.0,'','','','',NULL,'Hate touch screen','2019-06-16 15:20:51');
INSERT INTO `foodtripentrytbl` VALUES (3,1,3,'McDonalds','Fast food','','','AK','','15.00',NULL,'2019-06-23','10:20:00',100676.8,'','','','',NULL,'Great breakfast','2019-06-23 21:43:34');
INSERT INTO `foodtripentrytbl` VALUES (4,1,13,'Saucony Creek Kraft Brewery','Pub','','Kurtstown','PA','','42.00',NULL,'2019-08-31','19:00:00',113754.0,'','','','',NULL,'Food was fair. ','2019-09-01 03:10:25');

--
-- Table structure for table `friendtripentrytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendtripentrytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripid` bigint(20) DEFAULT NULL,
  `friend` varchar(256) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendtripentrytbl`
--

INSERT INTO `friendtripentrytbl` VALUES (2,1,3,'George Washington','Very presidential looking','2019-06-19','16:49:00',81088.7,'5 victory lane','Mount Vernon','VA','','gw@gmail.com','999-000-0001','2019-06-23 18:37:13');
INSERT INTO `friendtripentrytbl` VALUES (3,1,3,'John Smith','','2019-06-23','11:31:00',NULL,'','','? undefined:undefined ?',NULL,'','','2019-06-23 15:31:13');

--
-- Table structure for table `gastripentrytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastripentrytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) unsigned DEFAULT NULL,
  `tripid` bigint(20) unsigned DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `gallons` decimal(18,3) DEFAULT NULL,
  `costpergallon` decimal(18,3) DEFAULT NULL,
  `miles` decimal(18,1) DEFAULT NULL,
  `mpg` decimal(18,3) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `station` varchar(1000) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `nottankfilled` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastripentrytbl`
--

INSERT INTO `gastripentrytbl` VALUES (19,1,3,100420.0,68.00,27.039,2.515,420.0,15.533,'2019-05-27','15:10:00','Pilot','penalton','AL','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (21,1,3,100850.0,59.18,13.085,4.523,430.0,32.862,'2019-05-28','11:27:00','texaco','Oultewah','TN','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (22,1,3,101450.0,72.30,34.000,2.126,600.0,17.647,'2019-05-28','12:45:00','Pilot','Manchester','MA','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (23,1,3,101950.0,50.63,24.000,2.110,500.0,20.833,'2019-05-28','12:55:00','Shell','Paris','MD','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (26,1,3,102334.3,30.00,22.000,1.364,384.3,17.468,'2019-06-05','18:35:00','texaco','Manchester','AZ','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (28,1,3,102500.0,78.00,36.000,2.167,165.7,4.603,'2019-06-19','18:30:00','Texaco','Savana','GA','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (29,1,3,103200.0,64.22,32.000,2.007,700.0,21.875,'2019-06-22','19:55:00','Pilot','Savana','GA','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (31,1,3,104000.0,72.00,32.000,2.250,800.0,25.000,'2019-06-24','19:10:00','hhhh','lllll','ME','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (32,1,3,104500.0,70.01,35.000,2.000,500.0,14.286,'2019-07-01','19:18:00','Flying J','Savana','GA','',0,'2019-07-02 15:58:10');
INSERT INTO `gastripentrytbl` VALUES (38,1,9,100600.0,65.00,28.000,2.321,0.0,0.000,'2019-07-05','10:14:00','Flying J','Oultewah','TN',NULL,0,'2019-07-05 14:18:14');
INSERT INTO `gastripentrytbl` VALUES (40,1,9,101000.0,67.00,29.000,2.310,400.0,13.793,'2019-07-06','10:32:00','texaco','Paris','AZ',NULL,0,'2019-07-05 14:33:29');
INSERT INTO `gastripentrytbl` VALUES (51,1,10,56550.3,49.42,23.104,2.139,0.0,0.000,'2017-03-12','00:09:00','Sunoco','Beverly','MA','Comment',0,'2019-07-06 17:49:05');
INSERT INTO `gastripentrytbl` VALUES (52,1,10,56861.9,62.91,29.005,2.169,311.6,10.743,'2017-03-13','00:11:00','Pilot','Bloomsburry','NJ','',0,'2019-07-06 17:49:05');
INSERT INTO `gastripentrytbl` VALUES (53,1,10,57148.1,50.57,25.173,2.009,286.2,11.369,'2017-03-13','00:17:00','Pilot','Harrisonburg','PA','',0,'2019-07-06 17:49:05');
INSERT INTO `gastripentrytbl` VALUES (54,1,11,80088.7,70.00,27.039,2.589,0.0,0.000,'2018-04-03','11:45:00','Pilot','Clinton','NJ','Glad to be back on the road!',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (55,1,11,80307.1,42.89,17.803,2.409,218.4,12.268,'2018-04-03','12:46:00','Flying J','Winchester','VA','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (56,1,11,80596.7,60.10,24.048,2.499,289.6,12.043,'2018-04-04','11:49:00','Flying J','My Airy','NC','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (57,1,11,80884.1,55.81,23.070,2.419,287.4,12.458,'2018-04-05','11:51:00','Pilot','Kannapolis','NC','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (58,1,11,81268.3,79.73,32.824,2.429,384.2,11.705,'2018-04-09','11:55:00','Pilot','Hardeville','SC','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (59,1,11,81605.5,67.36,27.506,2.449,337.2,12.259,'2018-04-12','11:58:00','Flying J','Cocoa','FL','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (60,1,11,81803.1,50.72,18.792,2.699,197.6,10.515,'2018-04-13','00:00:00','Pilot','','FL','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (61,1,11,82207.2,50.00,18.804,2.659,404.1,0.000,'2018-04-17','00:02:00','Shell','','FL','Not filled',1,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (62,1,11,82350.1,65.02,24.091,2.699,142.9,12.752,'2018-04-17','00:37:00','Speedway','Naples','FL','Filled',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (63,1,11,82774.8,89.63,33.085,2.709,424.7,12.837,'2018-04-04','00:54:00','Flying J','San Antonio ','FL','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (64,1,11,83067.7,67.24,25.976,2.589,292.9,11.276,'2018-04-25','13:40:00','Pilot','Vienna','GA','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (65,1,11,83359.8,59.18,23.780,2.489,292.1,12.283,'2018-04-27','13:47:00','Murphy USA','Outewah ','TN','',0,'2019-07-07 17:50:33');
INSERT INTO `gastripentrytbl` VALUES (66,1,12,111294.8,24.11,8.999,2.679,0.0,0.000,'2019-07-13','15:27:00','Cumberland farms','Brunswick','ME','',0,'2019-07-20 18:20:54');
INSERT INTO `gastripentrytbl` VALUES (67,1,12,111737.2,57.53,22.393,2.569,442.4,19.756,'2019-07-20','14:13:00','Sunico','Peabody ','MA','Hot as heck out!',0,'2019-07-20 18:20:54');
INSERT INTO `gastripentrytbl` VALUES (68,1,12,112168.7,61.77,24.139,2.559,431.5,17.876,'2019-07-31','14:48:00','Prime','Beverly','MA','Cheapest gas around',0,'2019-07-31 18:49:54');
INSERT INTO `gastripentrytbl` VALUES (70,1,13,113349.2,40.73,14.049,2.899,0.0,0.000,'2019-08-30','11:37:00','Mobil','Orleans','MA','',0,'2019-08-31 14:32:20');
INSERT INTO `gastripentrytbl` VALUES (71,1,13,113662.7,70.00,26.525,2.639,313.5,11.819,'2019-08-30','19:25:00','Citco','Kingtown','NJ','They lied on the phone about the gas price and use of Good Sams discount. They were Pilot, too. Never go back!',0,'2019-08-31 14:32:20');

--
-- Table structure for table `gastriptotalstbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastriptotalstbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) unsigned DEFAULT NULL,
  `tripid` bigint(20) unsigned DEFAULT NULL,
  `startgasodometer` decimal(18,1) DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `totalamount` decimal(18,2) DEFAULT NULL,
  `totalgallons` decimal(18,3) DEFAULT NULL,
  `avecostpergallon` decimal(18,3) DEFAULT NULL,
  `totalmiles` decimal(18,1) DEFAULT NULL,
  `avempg` decimal(18,3) DEFAULT NULL,
  `topoffgallons` decimal(18,3) DEFAULT NULL,
  `nottankfilled` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastriptotalstbl`
--

INSERT INTO `gastriptotalstbl` VALUES (4,1,7,NULL,1000.0,0.00,0.000,0.000,0.0,0.000,0.000,0,'2019-06-02 19:54:04');
INSERT INTO `gastriptotalstbl` VALUES (6,1,9,100600.0,101000.0,132.00,57.000,2.316,400.0,7.018,0.000,0,'2019-07-05 14:34:19');
INSERT INTO `gastriptotalstbl` VALUES (13,1,10,56550.3,57148.1,162.90,77.282,2.108,597.8,11.034,23.104,0,'2019-07-06 17:49:05');
INSERT INTO `gastriptotalstbl` VALUES (14,1,11,80088.7,83359.8,757.68,296.818,2.553,3271.1,12.125,27.039,0,'2019-07-07 17:50:33');
INSERT INTO `gastriptotalstbl` VALUES (15,1,12,111294.8,112168.7,143.41,55.531,2.583,873.9,18.781,8.999,0,'2019-07-31 18:49:55');
INSERT INTO `gastriptotalstbl` VALUES (16,1,13,113349.2,113662.7,110.73,40.574,2.729,313.5,11.819,14.049,0,'2019-08-31 14:32:20');

--
-- Table structure for table `membertbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membertbl` (
  `id` bigint(20) unsigned NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `membername` varchar(100) DEFAULT NULL,
  `screenname` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `driversliscencenbr` varchar(100) DEFAULT NULL,
  `driversliscenceexpirationdate` varchar(100) DEFAULT NULL,
  `driversliscencestate` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `biography` varchar(10000) DEFAULT NULL,
  `membernameprofileind` int(11) DEFAULT NULL,
  `genderprofileind` int(11) DEFAULT NULL,
  `emailprofileind` int(11) DEFAULT NULL,
  `addressprofileind` int(11) DEFAULT NULL,
  `phonenumberprofileind` int(11) DEFAULT NULL,
  `noemail` int(11) DEFAULT NULL,
  `biographyprofileind` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membertbl`
--

INSERT INTO `membertbl` VALUES (1,'tarrant.cutler@gmail.com','tarryc','active','Tarrant Cutler','AirDreamer','978-473-4868','68 Barley Neck Rd','Orleans','MA','02643','airstream.png','Male','S1234567','11/14/2019','MA',NULL,'admin','',1,0,1,1,1,0,1,'2019-07-08 16:46:07');

--
-- Table structure for table `overnightstaytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overnightstaytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripid` bigint(20) DEFAULT NULL,
  `typestay` varchar(256) DEFAULT NULL,
  `overnightname` varchar(1000) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `otherfees` varchar(1000) DEFAULT NULL,
  `costperday` varchar(100) DEFAULT NULL,
  `datein` date DEFAULT NULL,
  `timein` time DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `dateout` date DEFAULT NULL,
  `timeout` time DEFAULT NULL,
  `websiteurl` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `restrictions` varchar(1000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `electric` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `sewer` int(11) DEFAULT NULL,
  `dumpsite` int(11) DEFAULT NULL,
  `showers` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `laundry` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `shopping` int(11) DEFAULT NULL,
  `firepit` int(11) DEFAULT NULL,
  `fires` int(11) DEFAULT NULL,
  `wifi` int(11) DEFAULT NULL,
  `propane` int(11) DEFAULT NULL,
  `pets` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overnightstaytbl`
--

INSERT INTO `overnightstaytbl` VALUES (1,1,3,'Walmart','Walmart','','Dallas','TX','','800-234-9870','0.00','',NULL,'2019-06-20','17:43:00',105400.0,NULL,'00:00:00','','','','Park in rear',NULL,'Called manager',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,NULL,1,1,1,'2019-06-23 18:34:35');
INSERT INTO `overnightstaytbl` VALUES (2,1,3,'Walmart','Walmart','','Austin','TX','','800-234-9870','0.00','',NULL,'2019-06-24','17:43:00',108400.0,NULL,'00:00:00','','','','',NULL,'Did not Called manager',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,NULL,NULL,NULL,1,'2019-06-16 19:03:24');
INSERT INTO `overnightstaytbl` VALUES (3,1,3,'Independent Park','Bob\'s RV Park','','Portlan','ME','','','','','25.00','2019-06-23','11:25:00',0.0,NULL,'00:00:00','','','','No Guns',NULL,'Pets Ok',1,1,NULL,1,1,1,NULL,NULL,NULL,1,1,1,1,1,'2019-07-01 21:14:15');
INSERT INTO `overnightstaytbl` VALUES (4,1,13,'Harvest Host','Donaldson Farm','358 Allen road','Hackettstown ','NJ','07840','','','','0.00','2019-08-30','20:27:00',113702.7,'2019-08-31','11:09:00','','','','No Dogs - But they let us come with ours',NULL,'This was Harvest host. Our first. Awesome place with super folks running it. Parked in big field with another Airstream!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-09-01 03:02:48');
INSERT INTO `overnightstaytbl` VALUES (5,1,13,'Harvest Host','Saucony Creek Craft Brewery','','Kutztown','PA','','','0','','0','2019-08-31','13:00:00',113754.0,'2019-09-01','00:00:00','','','','',NULL,'Harvest host',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,'2019-09-01 18:32:58');
INSERT INTO `overnightstaytbl` VALUES (7,1,13,'Harvest Host','Hersy Winery & Brewery',NULL,'Middletown','PA',NULL,'',NULL,NULL,'0.0','2019-09-01','14:14:00',113822.5,NULL,NULL,'','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,'2019-09-01 18:15:09');
INSERT INTO `overnightstaytbl` VALUES (8,1,13,'Independent Park','Country acres',NULL,'Hordonville','PA',NULL,'',NULL,NULL,'50.00','2019-09-02','11:49:00',113890.1,NULL,NULL,'','','','',NULL,'',1,1,1,NULL,1,1,NULL,NULL,NULL,1,1,1,1,1,'2019-09-03 15:52:00');

--
-- Table structure for table `rvmembershiptbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rvmembershiptbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `rvmembershipname` varchar(1000) DEFAULT NULL,
  `rvmembershipid` varchar(1000) DEFAULT NULL,
  `rvmembername` varchar(1000) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `expirationdate` varchar(100) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `costinterval` varchar(100) DEFAULT NULL,
  `websiteurl` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `restrictions` varchar(1000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rvmembershiptbl`
--

INSERT INTO `rvmembershiptbl` VALUES (2,1,'Boondockers Welcome','tarrant.cutler@gmail.com','Tarrant Cutler',NULL,'02/14/14/2020',NULL,NULL,NULL,'','30.00',NULL,'https://www.boondockerswelcome.com',NULL,NULL,NULL,NULL,'comment','active','2019-06-23 18:48:10');
INSERT INTO `rvmembershiptbl` VALUES (4,1,'Harvest Host','45438','Tarrant Cutler',NULL,'08/22/2020',NULL,NULL,NULL,'','85.00',NULL,'harvest host.com',NULL,NULL,NULL,NULL,'Got golf for $10 extra','active','2019-08-22 16:45:30');

--
-- Table structure for table `serviceentrytbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceentrytbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripid` bigint(20) DEFAULT NULL,
  `serviceplace` varchar(256) DEFAULT NULL,
  `servicetype` varchar(256) DEFAULT NULL,
  `vehicleid` bigint(20) unsigned DEFAULT NULL,
  `servicedone` varchar(1000) NOT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `odometer` decimal(18,1) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `otherfees` varchar(1000) DEFAULT NULL,
  `websiteurl` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phonenumber` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` varchar(1000) NOT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceentrytbl`
--

INSERT INTO `serviceentrytbl` VALUES (2,1,3,'Bobs Ford Service Center','unscheduled',1,'bbfgbfgbfgb','100.23',100400.0,'2019-06-14','16:09:00','68 Barley Neck Rd','Orleans','MA',NULL,NULL,NULL,'tarrant.cutler@gmail.com','508-253-8029','Bob \'Bubba\' Smith',NULL,'','2019-06-14 20:10:16');
INSERT INTO `serviceentrytbl` VALUES (3,1,3,'Oil Change','unscheduled',1,'Changed oil','40.00',102334.3,'2019-06-23','11:35:00','','','CA',NULL,NULL,NULL,'','','',NULL,'','2019-06-23 15:35:58');

--
-- Table structure for table `triptbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triptbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) DEFAULT NULL,
  `tripname` varchar(256) DEFAULT NULL,
  `currenttrip` varchar(2) DEFAULT NULL,
  `towvehicle` bigint(20) DEFAULT NULL,
  `rv` bigint(20) DEFAULT NULL,
  `startodometer` decimal(18,1) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `startlocation` varchar(256) DEFAULT NULL,
  `endodometer` decimal(18,1) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `endlocation` varchar(1000) NOT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triptbl`
--

INSERT INTO `triptbl` VALUES (3,1,'Winter 2019','0',1,4,100000.0,'2019-02-04','Orleans',NULL,'2019-06-30','','2019-07-05 12:09:20');
INSERT INTO `triptbl` VALUES (7,1,'Airstream West 2016','0',1,4,1000.0,'2016-07-30','Manchester MA',3500.0,'2016-08-21','South Dakota and back','2019-06-02 19:54:04');
INSERT INTO `triptbl` VALUES (9,1,'Test for new calc gas','0',1,5,100000.0,'2019-07-04','Orleans',NULL,NULL,'South Dakota and back','2019-07-05 12:20:32');
INSERT INTO `triptbl` VALUES (10,1,'Southern Trip 2017 again','0',1,4,56450.3,'2017-03-12','Orleans',NULL,'2017-04-14','South','2019-07-05 16:24:51');
INSERT INTO `triptbl` VALUES (11,1,'Southern Trip 2018','0',1,4,80088.7,'2018-04-03','Orleans MA',NULL,NULL,'South and Back','2019-07-07 15:44:19');
INSERT INTO `triptbl` VALUES (12,1,'Camden vacation and driving around town','0',1,5,111176.4,'2019-07-13','Manchestet MA',NULL,NULL,'Camden Maine and back','2019-07-31 18:50:35');
INSERT INTO `triptbl` VALUES (13,1,'Ohio and beyond 2019','1',1,5,113345.2,'2019-08-30','Orleans, MA',NULL,NULL,'','2019-08-31 01:15:06');

--
-- Table structure for table `vechileinsurancetbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vechileinsurancetbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) unsigned DEFAULT NULL,
  `insurancename` varchar(256) DEFAULT NULL,
  `polcynumber` varchar(256) DEFAULT NULL,
  `policyholder` varchar(256) DEFAULT NULL,
  `policytype` varchar(256) DEFAULT NULL,
  `effectivedate` varchar(256) DEFAULT NULL,
  `agentname` varchar(256) DEFAULT NULL,
  `agentphonenbr` varchar(256) DEFAULT NULL,
  `websiteurl` varchar(256) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vechileinsurancetbl`
--

INSERT INTO `vechileinsurancetbl` VALUES (1,1,'MapFre','FXC087','Tarrant Cutler','Auto & RV','06/15/2018','THOMAS GREGORY ASSOC.INS.BRK,INC.','(781) 435-6080','https://www.mapfreinsurance.com/en/','test','active','2019-06-23 19:04:32');

--
-- Table structure for table `vechileroadsideassistancetbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vechileroadsideassistancetbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) unsigned DEFAULT NULL,
  `roadsideassistancename` varchar(256) DEFAULT NULL,
  `polcynumber` varchar(256) DEFAULT NULL,
  `policyholder` varchar(256) DEFAULT NULL,
  `expirationdate` varchar(256) DEFAULT NULL,
  `emergencyphonenbr` varchar(256) DEFAULT NULL,
  `businessphonenbr` varchar(256) DEFAULT NULL,
  `websiteurl` varchar(256) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `costinterval` varchar(100) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vechileroadsideassistancetbl`
--

INSERT INTO `vechileroadsideassistancetbl` VALUES (1,1,'Coach-net','10134633','Tarrant Cutler','12/02/2021','800-759-6999',NULL,'https://coach-net.com','free',NULL,NULL,'Comes with Airstream purchase. Fir RV Only. Test','active','2019-07-02 20:08:13');
INSERT INTO `vechileroadsideassistancetbl` VALUES (2,1,'AAA','620 240 682525200 2','Tarrant Cutler Jr','03/01/2020','800-222-4357',NULL,'aaa.com','Gift',NULL,NULL,'For F150 only','active','2019-06-09 18:18:50');

--
-- Table structure for table `vehicletbl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicletbl` (
  `id` bigint(20) unsigned NOT NULL,
  `memberid` bigint(20) unsigned DEFAULT NULL,
  `vehicletype` varchar(256) DEFAULT NULL,
  `make` varchar(256) DEFAULT NULL,
  `model` varchar(256) DEFAULT NULL,
  `color` varchar(256) DEFAULT NULL,
  `year` varchar(256) DEFAULT NULL,
  `platenbr` varchar(256) DEFAULT NULL,
  `platestate` varchar(256) DEFAULT NULL,
  `VIN` varchar(256) DEFAULT NULL,
  `tirenumber` varchar(256) DEFAULT NULL,
  `tiresize` varchar(256) DEFAULT NULL,
  `vehiclelength` varchar(250) DEFAULT NULL,
  `vechileinsuranceid` bigint(20) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `lastupdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicletbl`
--

INSERT INTO `vehicletbl` VALUES (1,1,'Tow Vehicle','Ford','F150','Blue','2014','5469','MA','1FTFW1ETXEFC58368','4','R16','',NULL,'','active','2019-06-02');
INSERT INTO `vehicletbl` VALUES (4,1,'RV','Airstream','Flying Cloud','Silver','2015','CA3532G','MA','1STC9AD13FJ532729','2','15','20',NULL,'Traded in for new Airstream Globetroter','inactive','2019-06-30');
INSERT INTO `vehicletbl` VALUES (5,1,'RV','Airstream','Globetrotter','Silver','2019','4976K','MA','1STTNYL23KJ547448','4','','27 feet',NULL,'','active','2019-06-02');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-04 13:16:38
