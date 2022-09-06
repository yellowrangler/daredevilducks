DROP TABLE IF EXISTS securetbl;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE securetbl (
  name varchar(255) DEFAULT NULL,
  value varchar(255) DEFAULT NULL,
  more varchar(255) DEFAULT NULL
  PRIMARY KEY (name)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;