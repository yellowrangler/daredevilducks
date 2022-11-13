SELECT screenname, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teadmDisc,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
GROUP BY screenname