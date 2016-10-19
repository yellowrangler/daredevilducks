-- SELECT 
--     orderNumber, status, orderDate, requiredDate, comments
-- FROM
--     orders
-- WHERE
--     status = 'Cancelled' 
-- INTO OUTFILE 'leaders_chart_xxx.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ';' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\r\n';

-- 
-- get wins leaders for csv export
-- 
SELECT
  -- MS.season as season,
  -- MS.memberid as memberid,
  -- MS.id as id,
  MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  -- MS.playerpickedgames as playerpickedgames,
  -- MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  -- CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  -- CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '2016' AND gametypeid = 2
ORDER BY MS.wins DESC, M.screenname ASC
INTO OUTFILE '/home/tarryc/Development/daredevilducks/charts/leaders_chart_wins.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';


-- 
-- get percent leaders for csv export
-- 
SELECT
  -- MS.season as season,
  -- MS.memberid as memberid,
  -- MS.id as id,
  -- MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  -- MS.playerpickedgames as playerpickedgames,
  -- MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  -- CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '2016' AND gametypeid = 2
ORDER BY MS.totalgamespercent DESC, M.screenname ASC
INTO OUTFILE '/home/tarryc/Development/daredevilducks/charts/leaders_chart_totalpercent.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';

-- 
-- get week percent leaders for csv export
-- 
SELECT
  -- MS.season as season,
  -- MS.memberid as memberid,
  -- MS.id as id,
  -- MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  -- MS.playerpickedgames as playerpickedgames,
  -- MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  -- CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '2016' AND gametypeid = 2
ORDER BY MS.playerpickedpercent DESC, M.screenname ASC
INTO OUTFILE '/home/tarryc/Development/daredevilducks/charts/leaders_chart_weekpercent.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';