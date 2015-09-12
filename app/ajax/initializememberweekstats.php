<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

$msg = "Initializememberweekstats Started <br />";

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	$msg = $msg . "No season passed - Initializememberweekstats terminated";
	exit($msg);
}

if (isset($_POST["weeksinseason"]))
{
	$weeksinseason = $_POST["weeksinseason"];
}
else
{
	$msg = $msg . "No weeksinseason passed - Initializememberweekstats terminated";
	exit($msg);
}

$msg = $msg . "Input variables: Season:$season weeksinseason:$weeksinseason<br />";

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
$gametypeid = 0;
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to initialize member week stats.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to initialize member week stats.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to initialize member week stats.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to initialize member week stats.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));		

//---------------------------------------------------------------
// Get list of all dare devile ducks members
//---------------------------------------------------------------
$sql = "SELECT id as memberid 
FROM  membertbl 
ORDER BY 'memberid'";

$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to initialize member week stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize member week stats.<br /> SQL: $sql";
	exit($msg);
}

//
// display variables
//
$membercount = 0;
$memberinsertedcount = 0;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count membercount
	$membercount = $membercount + 1;

	$memberid = $row[memberid];

	//
	// loop through all weeks
	//
	for ($week = 1; $week <= $weeksinseason; $week++)
	{
		//---------------------------------------------------------------
		// Get list of all dare devile ducks members
		//---------------------------------------------------------------
		$sql = "SELECT memberid 
		FROM  memberweekstatstbl 
		WHERE memberid = $memberid and season = $season and week = $week";

		$sql_result_check = @mysql_query($sql, $dbConn);
		if (!$sql_result_check)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to initialize member week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -110;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize member week stats.<br /> SQL: $sql";
			exit($msg);
		}

		$num_rows = mysql_num_rows($sql_result_check);

		if ($num_rows == 0)
		{
			// 
			// do insert team
			// 
			$sql = "INSERT INTO memberweekstatstbl 
				(totalgames, week, wins, losses, ties, percent, season, enterdate, memberid, gametypeid) 
				VALUES ($totalgames, $week, $wins, $losses, $ties, $percentage, $season, '$enterdateTS', $memberid, $gametypeid)";

			$sql_r = @mysql_query($sql, $dbConn);
			if (!$sql_r)
			{
			    $log = new ErrorLog("logs/");
			    $sqlerr = mysql_error();
			    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to initialize insert member week stats.");
			    $log->writeLog("SQL: $sql");

			    $status = -260;
			    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to initialize insert member week stats.<br /> SQL: $sql";
				exit($msg);
			}

			$memberinsertedcount = $memberinsertedcount + 1;
		}

	}  // end of looping through weeks

} // end of for looping through games

$msg = $msg . "Totals Members:$membercount Members Weeks Inserted:$memberinsertedcount. <br /> Initializememberweekstats Finished.";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);
?>
