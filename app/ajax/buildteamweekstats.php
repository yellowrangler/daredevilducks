<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$msg = "";

// set variables
$enterdate = $datetime;

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$msg = $msg . "No season passed - Buildteamweekstats terminated";
		exit($msg);

	}
}

if (isset($_POST["weeksinregularseason"]))
{
	$weeksinregularseason = $_POST["weeksinregularseason"];
}
else
{
	if (isset($_GET["weeksinregularseason"]))
	{
		$weeksinregularseason = $_GET["weeksinregularseason"];
	}
	else
	{
		$msg = $msg . "No weeksinregularseason passed - Buildteamweekstats terminated";
		exit($msg);

	}
}

if (isset($_POST["weeksinplayoffseason"]))
{
	$weeksinplayoffseason = $_POST["weeksinplayoffseason"];
}
else
{
	if (isset($_GET["weeksinplayoffseason"]))
	{
		$weeksinplayoffseason = $_GET["weeksinplayoffseason"];
	}
	else
	{
		$msg = $msg . "No weeksinplayoffseason passed - Buildteamweekstats terminated";
		exit($msg);

	}
}

$msg = "Input variables: Season:$season weeksinregularseason:$weeksinregularseason weeksinplayoffseason: $weeksinplayoffseason<br />";

//------------------------------------------------------
// db admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// set variables
//
$games = 0;
$wins = 0;
$losses = 0;
$ties = 0;
$percent = 0;

$homegames = 0;
$homewins = 0;
$homelosses = 0;
$hometies = 0;
$homepercent = 0;

$awaygames = 0;
$awaywins = 0;
$awaylosses = 0;
$awayties = 0;
$awaypercent = 0;

$confgames = 0;
$confwins = 0;
$conflosses = 0;
$confties = 0;
$confpercent = 0;

$divgames = 0;
$divwins = 0;
$divlosses = 0;
$divties = 0;
$divpercent = 0;

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update team week stats.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to update team week stats.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update team week stats.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to update team week stats.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));	

//
// get total weeks to date
//
$sql = "SELECT 
COALESCE(MAX(week),1) AS weeks
FROM gameweekstbl where season = $season
AND weekend <= '$enterdateTS'";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total weeks.");
    $log->writeLog("SQL: $sql");

    $status = -200;
    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats - total weeks. <br /> $sqlerr <br /> SQL: $sql";
    exit($msg);
}	

$r = mysql_fetch_assoc($sql_result);
$weekstotal = $r[weeks];

// echo "<br>timestamp: $enterdateTS<br/><br/>";
// echo "<br />weekstotal: $weekstotal <br /><br />";

//---------------------------------------------------------------
// Get list of all nfl teams
//---------------------------------------------------------------
$sql = "SELECT * FROM teamstbl ORDER BY conference ASC, division ASC, teamorder ASC";
$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update team week stats. <br /> SQL: $sql";
    exit($msg);
}

//
// display variables
//
$teamcount = 0;

//
// loop through all teams
//
while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count teams
	$teamcount = $teamcount + 1;

	//
	// reset values
	//
	$games = 0;
	$wins = 0;
	$losses = 0;
	$ties = 0;
	$percent = 0;

	$homegames = 0;
	$homewins = 0;
	$homelosses = 0;
	$hometies = 0;
	$homepercent = 0;

	$awaygames = 0;
	$awaywins = 0;
	$awaylosses = 0;
	$awayties = 0;
	$awaypercent = 0;

	$confgames = 0;
	$confwins = 0;
	$conflosses = 0;
	$confties = 0;
	$confpercent = 0;

	$divgames = 0;
	$divwins = 0;
	$divlosses = 0;
	$divties = 0;
	$divpercent = 0;

	$teamid = $row['id'];

	// echo "<br />weekstotal2: $weekstotal<br />";

	//
	// for every week get totals
	//
	for ($week = 1; $week <= $weekstotal; $week++)
	{

		// echo "<br />week loop: $week<br />";

		//
		// wins
		//
		$sql = "SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
		COALESCE(COUNT(*),0) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		(
			(hometeamid = $teamid and hometeamscore > awayteamscore)
	    	OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
	    
	    UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
		COALESCE(COUNT(*),0) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where
		season = $season AND week <= $week
		AND 
		( hometeamid = $teamid and hometeamscore > awayteamscore )

		UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
		COALESCE(COUNT(*),0) as wins
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( awayteamid = $teamid and awayteamscore > hometeamscore )

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
		COALESCE(COUNT(*),0) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
		AND
		(th.conference = ta.conference)

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
		COALESCE(COUNT(*),0) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
		AND
		(th.conference = ta.conference)
		AND
		(th.division = ta.division)";

		// echo "<br />Wins select sql: $sql<br /><br /><br />";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total wins.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats - total wins. <br /> $sqlerr <br /> SQL: $sql";
    		exit($msg);
		}	

		//
		// union 5 selects to get total, home, away, conf and div wins
		//
		$idx = 0;
		$winsArray = array();
		while($row = mysql_fetch_assoc($sql_r)) {
			$winsArray[$idx] = $row['wins'];
			$regularseasonwinsArray[$idx] = $row['regularseasonwins'];
			$postseasonwinsArray[$idx] = $row['postseasonwins'];
			
			$idx = $idx + 1;
		}

		$wins = $winsArray[0];
		$homewins = $winsArray[1];
		$awaywins = $winsArray[2];
		$confwins = $winsArray[3];
		$divwins = $winsArray[4];

		$regularseasonwins = $regularseasonwinsArray[0];
		$regularseasonhomewins = $regularseasonwinsArray[1];
		$regularseasonawaywins = $regularseasonwinsArray[2];
		$regularseasonconfwins = $regularseasonwinsArray[3];
		$regularseasondivwins = $regularseasonwinsArray[4];	

		$postseasonwins = $postseasonwinsArray[0];
		$postseasonhomewins = $postseasonwinsArray[1];
		$postseasonawaywins = $postseasonwinsArray[2];
		$postseasonconfwins = $postseasonwinsArray[3];
		$postseasondivwins = $postseasonwinsArray[4];	

		//
		// losses
		//
		$sql = "SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
		COALESCE(COUNT(*),0) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		(
			(hometeamid = $teamid and hometeamscore < awayteamscore)
	    	OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
	    
	    UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
		COALESCE(COUNT(*),0) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where
		season = $season AND week <= $week
		AND 
		( hometeamid = $teamid and hometeamscore < awayteamscore )

		UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
		COALESCE(COUNT(*),0) as losses
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( awayteamid = $teamid and awayteamscore < hometeamscore )

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
		COALESCE(COUNT(*),0) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
		AND
		(th.conference = ta.conference)

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
		COALESCE(COUNT(*),0) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
		AND
		(th.conference = ta.conference)
		AND
		(th.division = ta.division)";

		// echo "<br />losses select sql: $sql<br /><br /><br />";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total losses.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats - total losses. <br /> $sqlerr <br /> SQL: $sql";
    		exit($msg);
		}	

		//
		// union 5 selects to get total, home, away, conf and div losses
		//
		$idx = 0;
		$lossesArray = array();
		while($row = mysql_fetch_assoc($sql_r)) {
			$lossesArray[$idx] = $row['losses'];
			$regularseasonlossesArray[$idx] = $row['regularseasonlosses'];
			$postseasonlossesArray[$idx] = $row['postseasonlosses'];

			$idx = $idx + 1;
		}

		$losses = $lossesArray[0];
		$homelosses = $lossesArray[1];
		$awaylosses = $lossesArray[2];
		$conflosses = $lossesArray[3];
		$divlosses = $lossesArray[4];

		$regularseasonlosses = $regularseasonlossesArray[0];
		$regularseasonhomelosses = $regularseasonlossesArray[1];
		$regularseasonawaylosses = $regularseasonlossesArray[2];
		$regularseasonconflosses = $regularseasonlossesArray[3];
		$regularseasondivlosses = $regularseasonlossesArray[4];	

		$postseasonlosses = $postseasonlossesArray[0];
		$postseasonhomelosses = $postseasonlossesArray[1];
		$postseasonawaylosses = $postseasonlossesArray[2];
		$postseasonconflosses = $postseasonlossesArray[3];
		$postseasondivlosses = $postseasonlossesArray[4];

		//
		// ties
		//
		$sql = "SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
		COALESCE(COUNT(*),0) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		(
			(hometeamid = $teamid and hometeamscore = awayteamscore)
	    	OR 
			(awayteamid = $teamid and awayteamscore = hometeamscore)
		)
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)
	    
	    UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END), 0) AS postseasonties,
		COALESCE(COUNT(*),0) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where
		season = $season AND week <= $week
		AND 
		( hometeamid = $teamid and hometeamscore = awayteamscore )
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)

		UNION ALL
	    
	    SELECT 
	    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
		COALESCE(COUNT(*),0) as ties
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( awayteamid = $teamid and awayteamscore = hometeamscore )
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
		COALESCE(COUNT(*),0) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore = awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore = hometeamscore)
		)
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)
		AND
		(th.conference = ta.conference)

		UNION ALL

		SELECT 
		COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
		COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
		COALESCE(COUNT(*),0) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where
		season = $season AND week <= $week
		AND 
		( 	(hometeamid = $teamid and hometeamscore = awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore = hometeamscore)
		)
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)
		AND
		(th.conference = ta.conference)
		AND
		(th.division = ta.division)";

		// echo "<br /><br />ties select sql: $sql<br /><br /><br />";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total ties.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats - total ties. <br /> $sqlerr <br /> SQL: $sql";
    		exit($msg);
		}	

		//
		// union 5 selects to get total, home, away, conf and div ties
		//
		$idx = 0;
		$tiesArray = array();
		while($row = mysql_fetch_assoc($sql_r)) {
			$tiesArray[$idx] = $row['ties'];
			$regularseasontiesArray[$idx] = $row['regularseasonties'];
			$postseasontiesArray[$idx] = $row['postseasonties'];

			$idx = $idx + 1;
		}

		$ties = $tiesArray[0];
		$hometies = $tiesArray[1];
		$awayties = $tiesArray[2];
		$confties = $tiesArray[3];
		$divties = $tiesArray[4];


		// $regularseasonties = $regularseasontiesArray[0];
		// $regularseasonhometies = $regularseasontiesArray[1];
		// $regularseasonawayties = $regularseasontiesArray[2];
		// $regularseasonconfties = $regularseasontiesArray[3];
		// $regularseasondivties = $regularseasontiesArray[4];	

		// $postseasonties = $postseasontiesArray[0];
		// $postseasonhometies = $postseasontiesArray[1];
		// $postseasonawayties = $postseasontiesArray[2];
		// $postseasonconfties = $postseasontiesArray[3];
		// $postseasondivties = $postseasontiesArray[4];	

		//
		// calculate games from totals played 
		//
		$games = $wins + $losses + $ties;
		$homegames = $homewins + $homelosses + $hometies;
		$awaygames = $awaywins + $awaylosses + $awayties;
		$confgames = $confwins + $conflosses + $confties;
		$divgames = $divwins + $divlosses + $divties;

		// $regularseasongames = $regularseasonwins + $regularseasonlosses + $regularseasonties;
		// $regularseasonhomegames = $regularseasonhomewins + $regularseasonhomelosses + $regularseasonhometies;
		// $regularseasonawaygames = $regularseasonawaywins + $regularseasonawaylosses + $regularseasonawayties;
		// $regularseasonconfgames = $regularseasonconfwins + $regularseasonconflosses + $regularseasonconfties;
		// $regularseasondivgames = $regularseasondivwins + $regularseasondivlosses + $regularseasondivties;

		// $postseasongames = $postseasonwins + $postseasonlosses + $postseasonties;
		// $postseasonhomegames = $postseasonhomewins + $postseasonhomelosses + $postseasonhometies;
		// $postseasonawaygames = $postseasonawaywins + $postseasonawaylosses + $postseasonawayties;
		// $postseasonconfgames = $postseasonconfwins + $postseasonconflosses + $postseasonconfties;
		// $postseasondivgames = $postseasondivwins + $postseasondivlosses + $postseasondivties;


		//
		// calculate percentage
		//
		$percent = 0;
	
		if ($games > 0)
		{
			$p = $wins / $games;
			$percent = round($p, 3);

			$p = $homewins / $homegames;
			$homepercent = round($p, 3);

			$p = $awaywins / $awaygames;
			$awaypercent = round($p, 3);

			$p = $confwins / $confgames;
			$confpercent = round($p, 3);

			$p = $divwins / $divgames;
			$divpercent = round($p, 3);
		}
			
		if ($week < $weeksinregularseason)
		{
			$gametypeid = 2;
		}
		elseif ($week > $weeksinregularseason)
		{
			$gametypeid = 3;
		}		

		// echo "<br />week: $week weeksinregularseason: $weeksinregularseason gametypeid: $gametypeid<br /> ";

		// if ($regularseasongames > 0)
		// {
		// 	$p = $regularseasonwins / $regularseasongames;
		// 	$regularseasonpercent = round($p, 3);

		// 	$p = $regularseasonhomewins / $regularseasonhomegames;
		// 	$regularseasonhomepercent = round($p, 3);

		// 	$p = $regularseasonawaywins / $regularseasonawaygames;
		// 	$regularseasonawaypercent = round($p, 3);

		// 	$p = $regularseasonconfwins / $regularseasonconfgames;
		// 	$regularseasonconfpercent = round($p, 3);

		// 	$p = $regularseasondivwins / $regularseasondivgames;
		// 	$regularseasondivpercent = round($p, 3);
		// }

		// if ($postseasongames > 0)
		// {
		// 	$p = $postseasonwins / $postseasongames;
		// 	$postseasonpercent = round($p, 3);

		// 	$p = $postseasonhomewins / $postseasonhomegames;
		// 	$postseasonhomepercent = round($p, 3);

		// 	$p = $postseasonawaywins / $postseasonawaygames;
		// 	$postseasonawaypercent = round($p, 3);

		// 	$p = $postseasonconfwins / $postseasonconfgames;
		// 	$postseasonconfpercent = round($p, 3);

		// 	$p = $postseasondivwins / $postseasondivgames;
		// 	$postseasondivpercent = round($p, 3);
		// }

		//--------------------------------------------------------------------------------------- 
		//
		// if data is there update otherwise insert
		//
		//---------------------------------------------------------------------------------------

		// 
		// do update
		// 
		$sql = "UPDATE teamweekstatstbl 
			SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent, 
			hometotalgames = $homegames, homewins = $homewins, homelosses = $homelosses, hometies = $hometies, homepercent = $homepercent,
			awaytotalgames = $awaygames, awaywins = $awaywins, awaylosses = $awaylosses, awayties = $awayties, awaypercent = $awaypercent,			
			conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
			divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
			season = $season, gametypeid = $gametypeid, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid
			AND week = $week
			AND season = $season";

			// debug
			// echo "sqlupdate = $sql<br />";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update team week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -250;
		    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats. <br /> $sqlerr <br /> SQL: $sql";
    		exit($msg);
		}

	}  // end of for weeks

	//
	// loop through rest of weeks
	//
	$start = "No start";
	$week = $week - 1;
	if ($week < $weeksinregularseason)
	{
		$start = $week;
		for ($week = $start; $week <= $weeksinregularseason; $week++)
		{
			// 
			// do update
			// 
			$sql = "UPDATE teamweekstatstbl 
				SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent,
				hometotalgames = $homegames, homewins = $homewins, homelosses = $homelosses, hometies = $hometies, homepercent = $homepercent,
				awaytotalgames = $awaygames, awaywins = $awaywins, awaylosses = $awaylosses, awayties = $awayties, awaypercent = $awaypercent,			
				conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
				divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
				season = $season, enterdate = '$enterdateTS' 
				WHERE teamid = $teamid AND week = $week AND season = $season";

				// debug
				// echo "loopsql = $sql<br />";

			$sql_r = @mysql_query($sql, $dbConn);
			if (!$sql_r)
			{
			    $log = new ErrorLog("logs/");
			    $sqlerr = mysql_error();
			    $log->writeLog("SQL error: $sqlerr - Error doing update extending to db Unable to update team week stats.");
			    $log->writeLog("SQL: $sql");

			    $status = -27750;
			    $msg = $msg . "System Error: $sqlerr <br /> Error doing update extending to db Unable to update team week stats . <br /> $sqlerr <br /> SQL: $sql";
	    		exit($msg);
			}

		}
	}
		

} // end of looping through teams

$msg = $msg . "Totals Teams:$teamcount. <br />Weeks total: $weekstotal <br />Weeks run: $week <br />Weeks in regular Season: $weeksinregularseason";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>