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
 WHERE MP.week = '8' AND MP.season = '2015'
 AND  GW.weekstart > NOW() )