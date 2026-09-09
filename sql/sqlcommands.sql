UPDATE membertbl SET membername='Betty Bird' WHERE membername='Laura Osmond';
SELECT * FROM  membertbl WHERE membername='Betty Bird';

UPDATE membertbl SET membername='Lori Henderson' WHERE membername='Holly Fitch';
SELECT * FROM  membertbl WHERE membername='Lori Henderson';

UPDATE membertbl SET membername='Harry Truman' WHERE membername='Healthcare Warrior';
SELECT * FROM  membertbl WHERE membername='Harry Truman';

UPDATE membertbl SET membername='Lisa Hunzelman' WHERE membername='Lisa and David Hunzelman';
SELECT * FROM  membertbl WHERE membername='Lisa Hunzelman';

UPDATE membertbl SET membername='Vicky Phillups', screenname='Little LuLu' WHERE membername='Little Lulu';
SELECT * FROM  membertbl WHERE membername='Vicky Phillups';

UPDATE membertbl SET membername='Louie Smith' WHERE membername='Louie Looser';
SELECT * FROM  membertbl WHERE membername='Louie Smith';

UPDATE membertbl SET membername='Meg Waters' WHERE membername='Miss Patriot';
SELECT * FROM  membertbl WHERE membername='Meg Waters';

UPDATE membertbl SET membername='Tom Hawkens' WHERE membername='Wise Mariner';
SELECT * FROM  membertbl WHERE membername='Tom Hawkens';

Wise Mariner
CREATE USER 'tarryc'@'localhost' IDENTIFIED BY 'tarryc';
-- GRANT [type of permission] ON [database name].[table name] TO ‘[username]’@'localhost’;
GRANT ALL PRIVILEGES ON ddd.* TO 'tarryc'@'localhost';
FLUSH PRIVILEGES;
mysqldump --extended-insert=FALSE -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert --skip-extended-insert -u tarryc -p ddd > ddd-dump-08092015.sql

mysql -u tarryc -p ddd < app/ajax/dbsql/ddd-dump-checkpoint-1121201712259.sql

SELECT table_schema "Data Base Name", sum( data_length + index_length) / 1024 / 1024
"Data Base Size in MB" FROM information_schema.TABLES GROUP BY table_schema ;

SELECT memberid, QM.membername, email, phonenumber, screenname, picks
FROM
(
	SELECT memberid, membername, COUNT(*) as picks
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2017 and week = 1
	GROUP BY membername, memberid

	UNION

	SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
	FROM membertbl
	WHERE id NOT IN
	(
		SELECT  memberid as id
		FROM memberpickstbl MP
		LEFT JOIN membertbl M on MP.memberid = M.id
		WHERE season = 2017 and week = 1
	)
	AND status = 'active'
) AS QM
LEFT JOIN membertbl M on QM.memberid = M.id



SELECT memberid, membername, COUNT(*) as picks
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2019 and week = 7
GROUP BY membername, memberid

UNION

SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
FROM membertbl
WHERE id NOT IN
(
	SELECT  memberid as id
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2019 and week = 7
)
AND status = 'active'

SELECT  id as memberid, membername, screenname
FROM membertbl where 
screenname like "%hhhh%"
membername like "%hhhh%"

SELECT * FROM memberpickstbl WHERE season = 2021 and week = 3 and memberid = 99

DELETE FROM memberpickstbl WHERE season = 2021 and week = 3 and memberid = 99
