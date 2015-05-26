SELECT * FROM gamestbl G; 
SELECT * FROM teamgamestbl G; 
SELECT * FROM teamstbl G; 

SELECT * FROM teamgamestbl GT 
LEFT JOIN gamestbl G ON GT.gamenbr = G.gamenbr
LEFT JOIN teamstbl T ON T.id = GT.teamid
ORDER BY conference ASC, division ASC, teamorder ASC