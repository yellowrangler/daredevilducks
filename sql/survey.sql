--
-- Table structure for table surveytbl
--
DROP TABLE IF EXISTS surveytbl;
CREATE TABLE surveytbl (
  surveyid bigint(20) DEFAULT NULL,
  surveycurrent int DEFAULT NULL,
  surveyyear int DEFAULT NULL,
  surveyname varchar(255) DEFAULT NULL,
  surveydescription varchar(1000) DEFAULT NULL,
  surveytype varchar(10) DEFAULT NULL,
  dateupdated datetime DEFAULT NULL,
  PRIMARY KEY (surveyid)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Table structure for table surveyquestiontbl
--
DROP TABLE IF EXISTS surveyquestiontbl;
CREATE TABLE surveyquestiontbl (
  surveyquestionid bigint(20) DEFAULT NULL,
  surveyid bigint(20) DEFAULT NULL,
  questiontype varchar(10) DEFAULT NULL,
  questiontext varchar(1000) DEFAULT NULL,
  questiontip varchar(1000) DEFAULT NULL,
  questionpicurl varchar(1000) DEFAULT NULL,
  dateupdated datetime DEFAULT NULL,
  PRIMARY KEY (surveyquestionid)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Table structure for table surveymembertbl
--
DROP TABLE IF EXISTS surveymembertbl;
CREATE TABLE surveymembertbl (
  surveymemberid bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  memberid bigint(20) DEFAULT NULL,
  surveyid bigint(20) DEFAULT NULL,
  surveystatus varchar(255) DEFAULT NULL,
  dateupdated datetime DEFAULT NULL,
  PRIMARY KEY (surveymemberid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=big5;


--
-- Table structure for table surveymemberanswerstbl
--
DROP TABLE IF EXISTS surveymemberanswerstbl;
CREATE TABLE surveymemberanswerstbl (
  surveyquestionanswerid bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  memberid bigint(20) DEFAULT NULL,
  surveyid bigint(20) DEFAULT NULL,
  surveyquestionid int DEFAULT NULL,
  surveyquestionanswerresponce varchar(255) DEFAULT NULL,
  surveyquestionanswercomment varchar(1000) DEFAULT NULL,
  dateupdated datetime DEFAULT NULL,
  PRIMARY KEY (surveyquestionanswerid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=big5;