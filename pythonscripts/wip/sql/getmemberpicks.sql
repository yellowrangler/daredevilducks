SELECT CONVERT(memberid, CHAR), QM.membername as membername, screenname, picks
FROM
(
	SELECT memberid, membername, COUNT(*) as picks
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = 2025 and week = 17
	GROUP BY membername, memberid

	UNION

	SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
	FROM membertbl
	WHERE id NOT IN
	(
		SELECT  memberid as id
		FROM memberpickstbl MP
		LEFT JOIN membertbl M on MP.memberid = M.id
		WHERE season = 2025 and week = 17
	)
	AND status = 'active'
) AS QM
LEFT JOIN membertbl M on QM.memberid = M.id
ORDER BY membername ASC;
SELECT COUNT(*) as activemembercount
FROM membertbl
WHERE status = 'active'