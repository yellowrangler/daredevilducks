USE ddd;
DROP TABLE IF EXISTS preplayofftbl;
CREATE TABLE preplayofftbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  season INT(11) NULL,
  playoffstatus varchar(100) NULL,
  afcposition varchar(5) NULL,  
  afcteamname varchar(255) DEFAULT NULL,
  afcteamicon varchar(255) DEFAULT NULL,  
  nfcposition varchar(5) NULL,
  nfcteamname varchar(255) DEFAULT NULL,
  nfcteamicon varchar(255) NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

DELETE FROM preplayofftbl;
INSERT INTO preplayofftbl
VALUES
(1,2024,'Clinched','1','Chiefs','kc.png','1','Lions','det.png',NULL,NULL),
(2,2024,'Clinched','2','Bills','buf.png','2','Eagles','phi.png',NULL,NULL),
(3,2024,'Clinched','3','Ravens','bal.png','5','Vikings','min.png',NULL,NULL),
(4,2024,'Clinched','4','Texans','hou.png','6','Packers','gb.png',NULL,NULL),
(5,2024,'Clinched','5','Steelers','pit.png','','','',NULL,NULL),
(6,2024,'Clinched','6','Chargers','sd.png','','','',NULL,NULL),
(7,2024,'Hunt','7','Broncos','den.png','3','Rams','stl.png',NULL,NULL),
(8,2024,'Hunt','','','','4','Falcons','atl.png',NULL,NULL),
(9,2024,'Hunt','','','','7','Commanders','was.png',NULL,NULL),
(10,2024,'Bubble','8','Bengals','cin.png','8','Seahawks','sea.png',NULL,NULL),
(11,2024,'Bubble','9','Colts','ind.png','9','Buccaneers','tb.png',NULL,NULL),
(12,2024,'Bubble','10','Dolphins','mia.png','','','',NULL,NULL),
(13,2024,'Eliminated','11','Jets','nyj.png','10','Cowboys','dal.png',NULL,NULL),
(14,2024,'Eliminated','12','Raiders','oak.png','11','Cardinals','ari.png',NULL,NULL),
(15,2024,'Eliminated','13','Browns','cle.png','12','49ers','sf.png',NULL,NULL),
(16,2024,'Eliminated','14','Jaguars','jac.png','13','Saints','no.png',NULL,NULL),
(17,2024,'Eliminated','15','Titans','ten.png','14','Panthers','car.png',NULL,NULL),
(18,2024,'Eliminated','16','Patriots','ne.png','15','Bears','chi.png',NULL,NULL),
(19,2024,'Eliminated','','','','16','Giants','nyg.png',NULL,NULL);

