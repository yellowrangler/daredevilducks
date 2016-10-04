<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Build Team Stats tables started" );

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
$season = 2014;
$gamesInRegularSeason = 17;

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update team week stats.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update team week stats.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));		

//
// get total weeks to date
//
$sql = "SELECT max(week) as weeks
FROM gamestbl where season = $season";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total weeks.");
    $log->writeLog("SQL: $sql");

    $status = -200;
    $msgtext = "System Error: $sqlerr";
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
    $msgtext = "System Error: $sqlerr";
}

//
// loop through all teams
//
while($row = mysql_fetch_assoc($sql_result_prime)) {
	// print_r($row['id']);

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
		    $msgtext = "System Error: $sqlerr";
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
		    $msgtext = "System Error: $sqlerr";
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
		    $msgtext = "System Error: $sqlerr";
		}	

		$r = mysql_fetch_assoc($sql_r);
		$losses = $r[losses];

		//
		// ties
		//
		$sql = "SELECT count(*) as ties
		FROM gamestbl where season = $season and week <= $week 
		and (
		(hometeamid = $teamid and awayteamscore = hometeamscore)
		or (awayteamid = $teamid and hometeamscore = awayteamscore)
		);";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - total ties.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msgtext = "System Error: $sqlerr";
		}	

		$r = mysql_fetch_assoc($sql_r);
		$ties = $r[ties];

		//
		// percent
		//
		$p = $wins / $games;
		$percent = round($p, 3);

		// 
		// if data is there update otherwise insert
		// 
		$sql = "SELECT * from teamweekstatstbl where teamid = $teamid and week = $week and season = $season";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team week stats - count team id in stats table.");
		    $log->writeLog("SQL: $sql");

		    $status = -240;
		    $msgtext = "System Error: $sqlerr";
		}	

		$count = mysql_num_rows($sql_r);
		echo "count = ".$count."</ br>";
		if ($count == 0)
		{
			echo "sql = $sql </ br>";
		}
		
		// if ($count > 0)
		// {
		// 	// 
		// 	// do update
		// 	// 
		// 	$sql = "UPDATE teamweekstatstbl 
		// 		SET totalgames = $games, week = $week, wins = $wins, losses = $losses, ties = $ties, percent = $percent, season = $season, enterdate = '$enterdateTS' 
		// 		WHERE teamid = $teamid";

		// 	$sql_r = @mysql_query($sql, $dbConn);
		// 	if (!$sql_r)
		// 	{
		// 	    $log = new ErrorLog("logs/");
		// 	    $sqlerr = mysql_error();
		// 	    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update team week stats.");
		// 	    $log->writeLog("SQL: $sql");

		// 	    $status = -250;
		// 	    $msgtext = "System Error: $sqlerr";
		// 	}	

		// }
		// else
		// {
		// 	// 
		// 	// do insert
		// 	// 

		// 	// This should never happen as we now initialize week stats table

		// 	$sql = "INSERT INTO teamweekstatstbl 
		// 		(totalgames, week, wins, losses, ties, percent, season, enterdate, teamid) 
		// 		VALUES ($games, $week, $wins, $losses, $ties, $percent, $season, '$enterdateTS', $teamid)";

		// 	$sql_r = @mysql_query($sql, $dbConn);
		// 	if (!$sql_r)
		// 	{
		// 	    $log = new ErrorLog("logs/");
		// 	    $sqlerr = mysql_error();
		// 	    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert team week stats.");
		// 	    $log->writeLog("SQL: $sql");

		// 	    $status = -260;
		// 	    $msgtext = "System Error: $sqlerr";
		// 	}

		// }

	}  // end of for


} // end of looping through teams

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//


?>
