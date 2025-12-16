-- dddPlayoffStatusBracketupdate.sql

DELETE FROM preplayofftbl;
INSERT INTO preplayofftbl
VALUES
(1,2025,'Hunt','1','Broncos','den.png','1','Rams','stl.png',NULL,NULL),
(2,2025,'Hunt','2','Patriots','ne.png','2','Packers','gb.png',NULL,NULL),
(3,2025,'Hunt','3','Jaguars','jac.png','3','Eagles','phi.png',NULL,NULL),
(4,2025,'Hunt','4','Steelers','pit.png','4','Buccaneers','tb.png',NULL,NULL),
(5,2025,'Hunt','5','Chargers','sd.png','5','Seahawks','sea.png',NULL,NULL),
(6,2025,'Hunt','6','Bills','buf.png','5','49ers','sf.png',NULL,NULL),
(7,2025,'Hunt','7','Texans','hou.png','7','Bears','chi.png',NULL,NULL),
(8,2025,'Bubble','8','Colts','ind.png','8','Lions','det.png',NULL,NULL),
(9,2025,'Bubble','9','Ravens','bal.png','9','Panthers','car.png',NULL,NULL),
(10,2025,'Bubble','10','Chiefs','kc.png','10','Cowboys','dal.png',NULL,NULL),
(11,2025,'Bubble','11','Dolphins','mia.png','11','Vikings','min.png',NULL,NULL),
(12,2025,'Bubble','12','Bengals','cin.png','','','',NULL,NULL),
(13,2025,'Eliminated','13','Jets','nyj.png','12','Falcons','atl.png',NULL,NULL),
(14,2025,'Eliminated','14','Browns','cle.png','13','Cardinals','ari.png',NULL,NULL),
(15,2025,'Eliminated','15','Raiders','oak.png','14','Saints','no.png',NULL,NULL),
(16,2025,'Eliminated','16','Titans','ten.png','15','Commanders','was.png',NULL,NULL),
(17,2025,'Eliminated','','','','16','Giants','nyg.png',NULL,NULL);
INSERT INTO teambrackettbl(imagename, season, week, final) 
VALUES ('NFLPlayOffBracketSuperbowl602025Wk14.png',2025,15,0)