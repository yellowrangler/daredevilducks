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
$win = 0;
$losses = 0;
$ties = 0;
$percentage = 0;
// $season = 2015;
// $weeksinseason = 17;

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
	$win = 0;
	$losses = 0;
	$ties = 0;
	$percentage = 0;

	$teamid = $row['id'];

	//
	// for every week get totals
	//
	for ($week = 1; $week <= $weekstotal; $week++)
	{
		//
		// total games
		//
		$sql = "SELECT count(*) as games
		FROM gamestbl where season = $season and week <= $week 
		and (
		(hometeamid = $teamid)
		or (awayteamid = $teamid)
		);";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total games.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "System Error: $sqlerr <br /> Error doing select to db Unable to update team week stats - total games. <br /> $sqlerr <br /> SQL: $sql";
    		exit($msg);
		}	

		$r = mysql_fetch_assoc($sql_r);
		$games = $r[games];

		//
		// wins
		//
		$sql = "SELECT count(*) as wins
		FROM gamestbl where season = $season and week <= $week 
		and (
		(hometeamid = $teamid and hometeamscore > awayteamscore)
		or (awayteamid = $teamid and awayteamscore > hometeamscore)
		);";

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

		$r = mysql_fetch_assoc($sql_r);
		$wins = $r[wins];

		//
		// losses
		//
		$sql = "SELECT count(*) as losses
		FROM gamestbl where season = $season and week <= $week 
		and (
		(hometeamid = $teamid and awayteamscore > hometeamscore)
		or (awayteamid = $teamid and hometeamscore > awayteamscore)
		);";

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

		$r = mysql_fetch_assoc($sql_r);
		$losses = $r[losses];

		//
		// ties
		//
		$sql = "SELECT count(*) as ties
		FROM gamestbl 
		WHERE (season = $season AND week <= $week)
		AND 
		(
			(hometeamid = $teamid AND awayteamscore = hometeamscore)
			OR 
			(awayteamid = $teamid AND hometeamscore = awayteamscore)
		) 
		AND (awayteamscore != 0 AND hometeamscore != 0);";

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

		$r = mysql_fetch_assoc($sql_r);
		$ties = $r[ties];

		//
		// percent
		//
		$p = $wins / $games;
		$percent = round($p, 3);
		
		// 
		// do update
		// 
		$sql = "UPDATE teamweekstatstbl 
			SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent, season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid
			AND week = $week
			AND season = $season";

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
			SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent, season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid
			AND week = $week
			AND season = $season";

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