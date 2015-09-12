<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get current season week.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get current season week.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// get nfl game type information
//---------------------------------------------------------------
$sql = "SELECT season, week from gameweekstbl 
WWHERE weekstart <= now() AND weekend >= now()";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get current season week.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get season week
// 
$count = mysql_num_rows($sql_result);
if ($count > 0)
{
	$r = mysql_fetch_assoc($sql_result);
	$week = $r['week'];
	$season = $r['season'];
}
else
{
	$week = 1;
	$season = date("Y");
}

$data = array('season' => $season, 'week' => $week);

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($data));

?>
