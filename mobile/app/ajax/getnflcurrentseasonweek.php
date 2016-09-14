<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

//------------------------------------------------------
// get admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl CURRENT season week information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl CURRENT season week information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get nfl week information
//---------------------------------------------------------------
$sql = "SELECT season, week
FROM gameweekstbl 
WHERE weekstart <= now() AND weekend >= now()";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl CURRENT season week information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// check to see if anything returned
// if none then past end of season
// run special query
//
$count = mysql_num_rows($sql_result);
if ($count < 1)
{
	//---------------------------------------------------------------
	// get nfl week information
	//---------------------------------------------------------------
	$sql = "SELECT MAX(season), MAX(week)
	FROM gameweekstbl 
	WHERE weekstart <= now()";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl CURRENT season week 2 information.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msgtext = "System Error: $sqlerr";
	}

}

//
// fill the array
//
$weeks = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $weeks[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($weeks));

?>
