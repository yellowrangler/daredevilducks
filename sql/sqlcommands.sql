CREATE USER 'tarryc'@'localhost' IDENTIFIED BY 'tarryc';
-- GRANT [type of permission] ON [database name].[table name] TO ‘[username]’@'localhost’;
GRANT ALL PRIVILEGES ON ddd.* TO 'tarryc'@'localhost';
FLUSH PRIVILEGES;
mysqldump --extended-insert=FALSE -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert --skip-extended-insert -u tarryc -p ddd > ddd-dump-08092015.sql

SELECT count(distinct week) as weeks
FROM gamestbl where season = 2014;

SELECT max(week) as weeks
FROM gamestbl where season = 2014;

SELECT count(*) as games
FROM gamestbl where hometeamid = 1 or awayteamid = 1;

SELECT count(*) as wins
FROM gamestbl where season = 2014 and week <= 17 
and (
(hometeamid = 5 and hometeamscore > awayteamscore)
or (awayteamid = 5 and awayteamscore > hometeamscore)
);

SELECT count(*) as losses
FROM gamestbl where (season = 2014 and week <= 17) 
and (
(hometeamid = 5 and awayteamscore > hometeamscore)
or (awayteamid = 5 and hometeamscore > awayteamscore)
);

SELECT count(*) as ties
FROM gamestbl where (season = 2014 and week <= 17) 
and (
(hometeamid = 5 and awayteamscore = hometeamscore)
or (awayteamid = 5 and hometeamscore = awayteamscore)
);

-- SELECT count(*) as games
-- FROM gamestbl where (season = 2014 and week <= 17)
-- and (
-- (hometeamid = 1)
-- or (awayteamid = 1)
-- );


