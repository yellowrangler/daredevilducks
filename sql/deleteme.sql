SELECT * 
FROM gamestbl G 
/*LEFT JOIN memberpickstbl MP on MP.season = G.season AND MP.week = gamestbl.week*/
WHERE G.week = '8' AND G.season = '2015' 
AND G.gamenbr NOT IN
(SELECT gamenbr FROM memberpickstbl WHERE week = '8' AND season = '2015')




SELECT * 
FROM membertbl M 
WHERE id NOT IN
(SELECT DISTINCT(memberid) 
 FROM memberpickstbl MP
 LEFT JOIN gameweekstbl GW ON GW.season = MP.season AND GW.week = MP.week
 LEFT JOIN gamestbl G ON G.season = GW.season AND G.week = GW.week
 WHERE MP.week = '8' AND MP.season = '2015'
 AND G.gamedatetime < NOW())

SELECT * 
 FROM memberpickstbl MP
 LEFT JOIN gameweekstbl GW ON GW.season = MP.season AND GW.week = MP.week
 LEFT JOIN gamestbl G ON G.season = GW.season AND G.week = GW.week
 WHERE MP.week = '8' AND MP.season = '2015'  
 AND  GW.weekstart > NOW() 
 AND G.gamedatetime < NOW())

SELECT * 
FROM membertbl M 
WHERE id NOT IN
(SELECT DISTINCT(memberid) 
 FROM memberpickstbl MP
 LEFT JOIN gameweekstbl GW ON GW.season = MP.season AND GW.week = MP.week
 LEFT JOIN gamestbl G ON G.season = GW.season AND G.week = GW.week
 WHERE MP.week = '8' AND MP.season = '2015'
 AND  GW.weekstart > NOW() 
 AND G.gamedatetime < NOW())

/*======================================
== ALL IN 1
======================================*/

SELECT * 
FROM membertbl M 
WHERE id NOT IN
(SELECT DISTINCT(memberid) 
 FROM memberpickstbl MP
 LEFT JOIN gameweekstbl GW ON GW.season = MP.season AND GW.week = MP.week
 LEFT JOIN gamestbl G ON G.season = GW.season AND G.week = GW.week 
 AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
 WHERE MP.week = '8' AND MP.season = '2015'
 AND G.gamedatetime > NOW())

SELECT memberid, COUNT(1) AS memberpicks 
FROM memberpickstbl MP 
WHERE MP.week = '8' AND MP.season = '2015'
AND gamenbr IN
(SELECT G.gamenbr 
 FROM gamestbl G 
 LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
 AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
 WHERE G.week = '8' AND G.season = '2015'
 AND G.gamedatetime > NOW())
GROUP BY MP.memberid

SELECT memberid, COUNT(1) AS memberpicks 
FROM memberpickstbl MP 
WHERE MP.week = '8' AND MP.season = '2015'
AND memberid NOT IN
(SELECT DISTINCT(memberid) 
 FROM memberpickstbl MP
 LEFT JOIN gameweekstbl GW ON GW.season = MP.season AND GW.week = MP.week
 LEFT JOIN gamestbl G ON G.season = GW.season AND G.week = GW.week  
 AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
 WHERE G.week = '8' AND G.season = '2015'
 AND G.gamedatetime > NOW())
GROUP BY MP.memberid


/*======================================
== use these 
======================================*/

/* get all member picks */
SELECT memberid, COUNT(1) as memberpicks
FROM memberpickstbl MP 
WHERE MP.week = '8' AND MP.season = '2015'
AND gamenbr IN 
(
	SELECT G.gamenbr 
	FROM gamestbl G 
	LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
	AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
	WHERE G.week = '8' AND G.season = '2015'
)
GROUP BY memberid

/* get all member picks for week going forward*/
SELECT memberid, COUNT(1) as memberpicks
FROM memberpickstbl MP 
WHERE MP.week = '8' AND MP.season = '2015'
AND gamenbr IN 
(
	SELECT G.gamenbr 
	FROM gamestbl G 
	LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
	AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
	WHERE G.week = '8' AND G.season = '2015'
	AND G.gamedatetime > NOW()
)
GROUP BY memberid

/* get all member picks for week going forward with member list */
SELECT id as memberid, screenname, email,
CASE WHEN MSEL.memberpicks IS NULL
THEN 0
ELSE MSEL.memberpicks
END AS memberpicks,
CASE WHEN MSEL.memberpicks = 13
THEN "Ok"
ELSE "Lackard" 
END AS memberpickstatus
FROM membertbl M
LEFT JOIN (
	SELECT memberid, COUNT(1) as memberpicks
	FROM memberpickstbl MP 
	WHERE MP.week = '8' AND MP.season = '2015'
	AND gamenbr IN 
	(
		SELECT G.gamenbr 
		FROM gamestbl G 
		LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
		AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
		WHERE G.week = '8' AND G.season = '2015'
		AND G.gamedatetime > NOW()
	)
	GROUP BY memberid
) MSEL ON MSEL.memberid = M.id
GROUP BY M.id

/* games in week */
SELECT COUNT(1) AS gamesinweek
FROM gamestbl G 
LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
AND GW.week = '8' AND GW.season = '2015'
WHERE G.week = '8' AND G.season = '2015'

/* games left in week */
SELECT COUNT(1) AS gamesleftinweek
FROM gamestbl G 
LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
AND GW.week = '8' AND GW.season = '2015'
WHERE G.week = '8' AND G.season = '2015'
AND G.gamedatetime > NOW()

/* get all member picks for week going forward with member list */
SELECT memberid 
FROM
(
	SELECT id as memberid, screenname, email,
	CASE WHEN MSEL.memberpicks IS NULL
	THEN 0
	ELSE MSEL.memberpicks
	END AS memberpicks,
	CASE WHEN MSEL.memberpicks = 13
	THEN 'Ok'
	ELSE 'Lackard' 
	END AS memberpickstatus
	FROM membertbl M
	LEFT JOIN (
		SELECT memberid, COUNT(1) as memberpicks
		FROM memberpickstbl MP 
		WHERE MP.week = '8' AND MP.season = '2015'
		AND gamenbr IN 
		(
			SELECT G.gamenbr 
			FROM gamestbl G 
			LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
			AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
			WHERE G.week = '8' AND G.season = '2015'
			AND G.gamedatetime > NOW()
		)
		GROUP BY memberid
	) MSEL ON MSEL.memberid = M.id
	GROUP BY M.id
) MSEL2
WHERE MSEL2.memberpickstatus = 'Lackard'























