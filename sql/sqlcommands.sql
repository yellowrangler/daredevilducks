CREATE USER 'tarryc'@'localhost' IDENTIFIED BY 'tarryc';
-- GRANT [type of permission] ON [database name].[table name] TO ‘[username]’@'localhost’;
GRANT ALL PRIVILEGES ON ddd.* TO 'tarryc'@'localhost';
FLUSH PRIVILEGES;
mysqldump --extended-insert=FALSE -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert --skip-extended-insert -u tarryc -p ddd > ddd-dump-08092015.sql

SELECT table_schema "Data Base Name", sum( data_length + index_length) / 1024 / 1024
"Data Base Size in MB" FROM information_schema.TABLES GROUP BY table_schema ;

SELECT  memberid, membername, COUNT(*) as picks
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2016 and week = 8
GROUP BY membername, memberid

UNION 

SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
FROM membertbl 
WHERE id NOT IN 
(
	SELECT  memberid as id
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2016 and week = 8
)
AND status = 'active'


DELETE FROM memberpickstbl WHERE season = 2016 and week = 13 and memberid = 37


