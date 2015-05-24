USE ddd;
DROP TABLE usertbl;
CREATE TABLE usertbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  fullname varchar(100) NULL,
  gender varchar(5) NULL,
  username varchar(255) NULL,
  email varchar(255) NULL,
  phonenumber varchar(255) NULL,
  passwd varchar(255) NULL,
  status INT NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

DROP TABLE teamstbl;
CREATE TABLE teamstbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) NULL,
  location varchar(255) NULL,
  league varchar(255) NULL,
  conference varchar(255) NULL,
  division varchar(255) NULL,
  teamiconname varchar(255) NULL,
  teamorder INT NULL,
  teamurl varchar(255) NULL,
  status INT NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

DROP TABLE gamestbl;
CREATE TABLE gamestbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  seasonyear INT NULL,
  weeknbr INT NULL,
  gamenbr INT NULL,
  gamedate varchar(255) NULL,
  type varchar(255) NULL,
  hometeamid INT NULL,
  awayteamid INT NULL,
  hometeamscore INT NULL,
  awayteamscore INT NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

/* this should be determinable */
DROP TABLE teamstatstbl;
CREATE TABLE teamstatstbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  teamid INT NULL,
  seasonyear INT NULL,
  wins INT NULL,
  losses INT NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

DROP TABLE userpickstbl;
CREATE TABLE userpickstbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  userid INT NULL,
  gamesid INT NULL,
  pick INT NULL,      
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 

/* this should be determinable */
DROP TABLE userstatstbl;
CREATE TABLE userstatstbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  userid INT NULL,
  seasonyear INT NULL,
  wins INT NULL,
  losses INT NULL,
  enterdate datetime,
  createdate datetime,
  PRIMARY KEY (id)
); 