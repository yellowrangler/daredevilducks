USE ddd;
DROP TABLE playerinjurytbl;
CREATE TABLE playerinjurytbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  season int(11) DEFAULT NULL,
  week int(11) DEFAULT NULL,
  teamid int(11) DEFAULT NULL,
  playername varchar(100) NULL,
  position varchar(5) NULL,
  injury varchar(255) NULL,
  status varchar(255) NULL,
  enterdate datetime,
  PRIMARY KEY (id)
); 

SELECT name, count(*) as nbr FROM playerinjurytbl PT 
left join teamstbl TT on PT.teamid = TT.id
group by PT.teamid
order by nbr DESC;

http://10.0.0.250/daredevilducks/app/ajax/getplayerinjurydialog.php?season=2023&week=7&hometeamid=1&awayteamid=2
http://10.0.0.250/daredevilducks/app/ajax/getplayerinjuryhtmldialog.php?season=2023&week=7&hometeamid=1&awayteamid=2

$scope.hometeaminjurystats = data[0]; 
$scope.awayteaminjurystats = data[1]; 

id from mysql
season from current season passed in from web
week from current week passed in from web
teamid from team conversion csv file
playername from roto csv
position from roto csv
injury from roto csv
status from roto csv
datereported from db string mm/dd/yyyy hh:mm
source passed in from web