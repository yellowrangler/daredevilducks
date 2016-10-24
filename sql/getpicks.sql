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
WHERE season = 2016 and week = 7
GROUP BY membername, memberid

UNION 

SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
FROM membertbl 
WHERE id NOT IN 
(
	SELECT  memberid as id
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2016 and week = 7
)
AND status = 'active'



















