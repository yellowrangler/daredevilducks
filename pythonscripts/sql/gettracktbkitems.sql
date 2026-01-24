-- tracktext, trackaction, trackmodule, trackseason, trackweek)
SELECT count(*) 
FROM tracktbl 
WHERE 1;
SELECT id, memberid, screenname, season, week, trackaction, trackmodule, tracktext, trackdate, device 
FROM tracktbl 
WHERE tracktext = "hallofMemory" AND season = 2025 AND week > 18;
SELECT DISTINCT trackaction
FROM tracktbl;
SELECT DISTINCT trackmodule
FROM tracktbl;
-- SELECT DISTINCT tracktext
-- FROM tracktbl;
SELECT DISTINCT device 
FROM tracktbl