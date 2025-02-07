SELECT DISTINCT trackaction FROM tracktbl;

mysql -u root -p -e "use ddd;SELECT DISTINCT tracktext FROM tracktbl;" >tracktext.txt
mysql -u root -p -e "use ddd;SELECT DISTINCT trackaction FROM tracktbl;" >trackaction.txt
mysql -u root -p -e "use ddd;SELECT DISTINCT trackmodule FROM tracktbl;" >trackmodule.txt
mysql -u root -p -e "use ddd;SELECT DISTINCT season FROM tracktbl;" >trackseason.txt
mysql -u root -p -e "use ddd;SELECT DISTINCT week FROM tracktbl;" >trackweek.txt

UPDATE tracktbl 
SET trackaction ='teamScoresStats' 
WHERE trackaction ='team scores and stats'

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'hallofFame' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'hallofFame' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'ChristmasSnow' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'faqs' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'getMemberPickList' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'helpRequest' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'login' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'init' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'pickgameshelp' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'playerTotals' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'savePickGames' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'surveyResults' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'teamScoresStats' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'teamBrackets' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'teamCharts' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'teamDiscovery' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'viewTotalPickGames' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'weeklyTotals' and season = 2024
GROUP BY screenname;

SELECT count(*) AS memhits, screenname 
FROM tracktbl 
WHERE trackaction = 'memberUpdate' and season = 2024
GROUP BY screenname;