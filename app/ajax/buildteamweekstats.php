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
	$msg = $msg . "No season passed - Buildteamweekstats terminated";
	exit($msg);
}

if (isset($_POST["weeksinseason"]))
{
	$weeksinseason = $_POST["weeksinseason"];
}
else
{
	$msg = "No weeksinseason passed - Buildteamweekstats terminated";
	exit($msg);
}

$msg = "Input variables: Season:$season weeksinseason:$weeksinseason<br />";

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
$percentage = 0;

$homegames = 0;
$homewins = 0;
$homelosses = 0;
$hometies = 0;
$homepercentage = 0;

$awaygames = 0;
$awaywins = 0;
$awaylosses = 0;
$awayties = 0;
$awaypercentage = 0;

$confgames = 0;
$confwins = 0;
$conflosses = 0;
$confties = 0;
$confpercentage = 0;

$divgames = 0;
$divwins = 0;
$divlosses = 0;
$divties = 0;
$divpercentage = 0;

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
$sql = "SELECT MAX(week) as weeks
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
	$percentage = 0;

	$homegames = 0;
	$homewins = 0;
	$homelosses = 0;
	$hometies = 0;
	$homepercentage = 0;

	$awaygames = 0;
	$awaywins = 0;
	$awaylosses = 0;
	$awayties = 0;
	$awaypercentage = 0;

	$confgames = 0;
	$confwins = 0;
	$conflosses = 0;
	$confties = 0;
	$confpercentage = 0;

	$divgames = 0;
	$divwins = 0;
	$divlosses = 0;
	$divties = 0;
	$divpercentage = 0;

	$teamid = $row['id'];

	//
	// for every week get totals
	//
	for ($week = 1; $week <= $weekstotal; $week++)
	{

		//
		// wins
		//
		$sql = "SELECT count(*) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		(
			(hometeamid = $teamid and hometeamscore > awayteamscore)
	    	OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
	    
	    UNION ALL
	    
	    SELECT count(*) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where season = $season and week <= $week 
		AND 
		( hometeamid = $teamid and hometeamscore > awayteamscore )

		UNION ALL
	    
	    SELECT count(*) as wins
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( awayteamid = $teamid and awayteamscore > hometeamscore )

		UNION ALL

		SELECT count(*) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
		AND
		(th.conference = ta.conference)

		UNION ALL

		SELECT count(*) as wins
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore > hometeamscore)
		)
		AND
		(th.conference = ta.conference)
		AND
		(th.division = ta.division)";

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
			$idx = $idx + 1;
		}

		$wins = $winsArray[0];
		$homewins = $winsArray[1];
		$awaywins = $winsArray[2];
		$confwins = $winsArray[3];
		$divwins = $winsArray[4];

		//
		// losses
		//
		$sql = "SELECT count(*) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		(
			(hometeamid = $teamid and hometeamscore < awayteamscore)
	    	OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
	    
	    UNION ALL
	    
	    SELECT count(*) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where season = $season and week <= $week 
		AND 
		( hometeamid = $teamid and hometeamscore < awayteamscore )

		UNION ALL
	    
	    SELECT count(*) as losses
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( awayteamid = $teamid and awayteamscore < hometeamscore )

		UNION ALL

		SELECT count(*) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
		AND
		(th.conference = ta.conference)

		UNION ALL

		SELECT count(*) as losses
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
			OR 
			(awayteamid = $teamid and awayteamscore < hometeamscore)
		)
		AND
		(th.conference = ta.conference)
		AND
		(th.division = ta.division)";

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
			$idx = $idx + 1;
		}

		$losses = $lossesArray[0];
		$homelosses = $lossesArray[1];
		$awaylosses = $lossesArray[2];
		$conflosses = $lossesArray[3];
		$divlosses = $lossesArray[4];

		//
		// ties
		//
		$sql = "SELECT count(*) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
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
	    
	    SELECT count(*) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		where season = $season and week <= $week 
		AND 
		( hometeamid = $teamid and hometeamscore = awayteamscore )
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)

		UNION ALL
	    
	    SELECT count(*) as ties
		from gamestbl g
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
		AND 
		( awayteamid = $teamid and awayteamscore = hometeamscore )
		AND
		(
			(hometeamscore != 0 AND awayteamscore != 0)
		)

		UNION ALL

		SELECT count(*) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
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

		SELECT count(*) as ties
		from gamestbl g
		left join teamstbl th on g.hometeamid = th.id 
		left join teamstbl ta on g.awayteamid = ta.id 
		where season = $season and week <= $week 
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
			$idx = $idx + 1;
		}

		$ties = $tiesArray[0];
		$hometies = $tiesArray[1];
		$awayties = $tiesArray[2];
		$confties = $tiesArray[3];
		$divties = $tiesArray[4];


		//
		// calculate games from totals played 
		//
		$games = $wins + $losses + $ties;
		$homegames = $homewins + $homelosses + $hometies;
		$awaygames = $awaywins + $awaylosses + $awayties;
		$confgames = $confwins + $conflosses + $confties;
		$divgames = $divwins + $divlosses + $divties;

		//
		// calculate percentage
		//
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
		
		// 
		// do update
		// 
		$sql = "UPDATE teamweekstatstbl 
			SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent, 
			conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
			divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
			season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid
			AND week = $week
			AND season = $season";

		// echo "sql = $sql<br />";

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
	$start = $week;
	for ($week = $start; $week <= $weeksinseason; $week++)
	{
		// 
		// do update
		// 
		$sql = "UPDATE teamweekstatstbl 
			SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent,
			conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
			divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
			season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid AND week = $week AND season = $season";

			// echo "sql = $sql<br />";

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

} // end of looping through teams

$msg = $msg . "Totals Teams:$teamcount.";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>