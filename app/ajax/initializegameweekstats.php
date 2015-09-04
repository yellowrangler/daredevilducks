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
$season = 2015;
$gamesInRegularSeason = 17;

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to initialize team week stats.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to initialize team week stats.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));		

//
// set values
//
$totalgames = 0;
$wins = 0;
$losses = 0;
$ties = 0;
$percentage = 0.0;
$week = 0;


//---------------------------------------------------------------
// Get list of all nfl teams
//---------------------------------------------------------------
$sql = "SELECT id as teamid 
FROM  teamstbl 
ORDER BY 'teamid'";

$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to initialize team week stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

while($row = mysql_fetch_assoc($sql_result_prime)) {
	$teamid = $row[teamid];

	//
	// loop through all weeks
	//
	for ($week = 1; $week <= $gamesInRegularSeason; $week++)
	{

		// 
		// do insert team
		// 
		$sql = "INSERT INTO teamweekstatstbl remove this to make ths work
			(totalgames, week, wins, losses, ties, percent, season, enterdate, teamid) 
			VALUES ($totalgames, $week, $wins, $losses, $ties, $percentage, $season, '$enterdateTS', $teamid)";

		$sql_r = @mysql_query($sql, $dbConn);
		if (!$sql_r)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to initialize insert home team week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msgtext = "System Error: $sqlerr";
		}

	}  // end of looping through weeks

} // end of for looping through games

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//

?>
