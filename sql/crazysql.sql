SELECT season, week, gamenbr, TTH.name home, TTA.name away
FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and week = 4 and gamenbr = 58


SELECT season, week, gamenbr, TTH.name home, TTA.name away
FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and TTH.name = 'Ravens' and TTA.name = 'Steelers' 



SELECT season, week, gamenbr, TTH.name home, TTA.name away
FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and TTH.name = '49ers' 

UNION

SELECT season, week, gamenbr, TTH.name home, TTA.name away
FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and TTA.name = '49ers' 

ORDER BY week

SELECT season, week, gamenbr, TTH.name, TTA.name
FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE (season = 2020 and week = 7)
and (
(TTA.name = 'Titans' AND TTH.name = 'Steelers') 
OR
(TTH.name = 'Titans' AND TTA.name = 'Steelers') 
)

SELECT season, week, gamenbr, TT.name 
FROM `memberpickstbl` MPT
left join teamstbl TT on TT.id = teamid
WHERE season = 2020 and gamenbr = 58

SELECT season, week, gamenbr, TTH.name as hometeam, TTA.name as awayteam FROM `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid
left join teamstbl TTA on TTA.id = GT.awayteamid
WHERE id = 58

delete from gamestbl where season = 2020 and gamenbr = 58
select *  from gamestbl where season = 2020 and gamenbr = 58

INSERT INTO `gamestbl` (`id`, `season`, `week`, `gamenbr`, `gamedate`, `gameyear`, `gameday`, `networkid`, `gametime`, `hometeamid`, `awayteamid`, `hometeamscore`, `awayteamscore`, `gametypeid`, `gamedatetime`, `enterdate`) VALUES (1916, '2020', '13', '58', 'Oct 11', '2020', 'Sun', '1', '1:00 pm', '6', '18', '0', '0', '2', '2020-10-11 13:00:00', '2020-10-15 23:31:06')


select gamenbr, TTH.name, TTA.name, week, season  
from `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and GT.gamenbr = 191;


DELETE FROM `gamestbl` WHERE season = 2020 and  gamenbr = 191;

select gamenbr, TTH.name, TTA.name, week, season  
from `gamestbl` GT
left join teamstbl TTH on TTH.id = GT.hometeamid 
left join teamstbl TTA on TTA.id = GT.awayteamid 
WHERE season = 2020 and GT.gamenbr = 191;

