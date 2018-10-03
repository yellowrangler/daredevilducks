<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;
$msg = "";

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
		$msg = $msg . "No season passed - Initializeteamweekstats terminated";
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
		$msg = $msg . "No weeksinregularseason passed - Initializeteamweekstats terminated";
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
		$msg = $msg . "No weeksinplayoffseason passed - Initializeteamweekstats terminated";
		exit($msg);

	}
}

$msg = "Input variables: Season:$season weeksinseason:$weeksinseason weeksinplayoffseason:$weeksinplayoffseason<br />";

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
$totalgames = 0;
$wins = 0;
$losses = 0;
$ties = 0;
$percentage = 0.0;
$week = 0;
$games = 0;
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to initialize team week stats.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to initialize team week stats.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to initialize team week stats.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to initialize team week stats.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));		

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
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize team week stats.<br /> SQL: $sql";
	exit($msg);
}

//
// display variables
//
$teamcount = 0;
$teaminsertedcount = 0;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count teams
	$teamcount = $teamcount + 1;

	$teamid = $row[teamid];

	//
	// loop through all regular season weeks
	//
	$gametypeid = 2;
	for ($week = 1; $week <= $weeksinregularseason; $week++)
	{
		//---------------------------------------------------------------
		// Get list of all dare devile ducks team week stats
		//---------------------------------------------------------------
		$sql = "SELECT teamid 
		FROM  teamweekstatstbl 
		WHERE teamid = $teamid and season = $season and week = $week";

		$sql_result_check = @mysql_query($sql, $dbConn);
		if (!$sql_result_check)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to initialize team week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -110;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize team week stats.<br /> SQL: $sql";
			exit($msg);
		}

		$num_rows = mysql_num_rows($sql_result_check);

		if ($num_rows == 0)
		{
			// 
			// do insert team
			// 
			$sql = "INSERT INTO teamweekstatstbl 
				(totalgames, week, wins, losses, ties, percent, season, enterdate, teamid) 
				VALUES ($totalgames, $week, $wins, $losses, $ties, $percentage, $season, '$enterdateTS', $teamid)";

			$sql_r = @mysql_query($sql, $dbConn);
			if (!$sql_r)
			{
			    $log = new ErrorLog("logs/");
			    $sqlerr = mysql_error();
			    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to initialize insert team week stats.");
			    $log->writeLog("SQL: $sql");

			    $status = -260;
			    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize insert team week stats.<br /> SQL: $sql";
				exit($msg);
			}

			$teaminsertedcount = $teaminsertedcount + 1;
		}

	}  // end of looping through regular season weeks

	//
	// loop through all post season weeks
	//
	$gametypeid = 3;
	for ($playoffweek = 1; $playoffweek <= $weeksinplayoffseason; $playoffweek++)
	{
		$week = $weeksinregularseason + $playoffweek;
		//---------------------------------------------------------------
		// Get list of all dare devile ducks team week stats
		//---------------------------------------------------------------
		$sql = "SELECT teamid 
		FROM  teamweekstatstbl 
		WHERE teamid = $teamid and season = $season and week = $week";

		$sql_result_check = @mysql_query($sql, $dbConn);
		if (!$sql_result_check)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to initialize team week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -110;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize team week stats.<br /> SQL: $sql";
			exit($msg);
		}

		$num_rows = mysql_num_rows($sql_result_check);

		if ($num_rows == 0)
		{
			// 
			// do insert team
			// 
			$sql = "INSERT INTO teamweekstatstbl 
				(totalgames, week, wins, losses, ties, percent, season, enterdate, teamid) 
				VALUES ($totalgames, $week, $wins, $losses, $ties, $percentage, $season, '$enterdateTS', $teamid)";

			$sql_r = @mysql_query($sql, $dbConn);
			if (!$sql_r)
			{
			    $log = new ErrorLog("logs/");
			    $sqlerr = mysql_error();
			    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to initialize insert team week stats.");
			    $log->writeLog("SQL: $sql");

			    $status = -260;
			    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize insert team week stats.<br /> SQL: $sql";
				exit($msg);
			}

			$teaminsertedcount = $teaminsertedcount + 1;
		}

	}  // end of looping through post season weeks

} // end of for looping through games

$msg = $msg . "Totals Teams:$teamcount Teams Weeks Inserted:$teaminsertedcount.";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
