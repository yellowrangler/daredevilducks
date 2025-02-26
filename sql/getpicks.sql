SELECT  memberid, membername, season
FROM memberstatstbl MS
LEFT JOIN membertbl M on MS.memberid = M.id
WHERE memberid = 69
group by season

how many seasons 




SELECT  memberid, membername, COUNT(*)
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2016 and week = 3
GROUP BY membername, memberid

SELECT  memberid, membername, teamid, location, name
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
LEFT JOIN teamstbl T on MP.teamid = T.id
WHERE season = 2016 and week = 3
and memberid = 15

SELECT *
FROM memberpickstbl 
WHERE season = 2016 and week = 3
and memberid = 15

DELETE FROM memberpickstbl 
WHERE season = 2016 and week = 3
and memberid = 15


SELECT  memberid, membername, COUNT(*) as picks
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2016 and week = 5
GROUP BY membername, memberid;

SELECT  id as memberid, membername, '0' as picks
FROM membertbl 
WHERE id NOT IN 
(
	SELECT  memberid as id
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2016 and week = 5
)


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


SELECT * FROM memberpickstbl WHERE season = 2016 and week = 1 and memberid = 42

DELETE FROM memberpickstbl WHERE season = 2016 and week = 1 and memberid = 42

-- Find mult picks for same teams games

SELECT  memberid, COUNT(DISTINCT gamenbr)
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2016 and week = 1
GROUP BY memberid
HAVING COUNT(DISTINCT gamenbr) > 1

SELECT  memberid, membername, screenname, gamenbr, MP.id as memberpickid
FROM memberpickstbl MP
LEFT JOIN membertbl M on MP.memberid = M.id
WHERE season = 2016 and week = 1 and memberid = 43

SELECT * FROM memberpickstbl WHERE season = 2016 and week = 1 and memberid = 43 and id = 13792
DELETE FROM memberpickstbl WHERE season = 2016 and week = 1 and memberid = 43











