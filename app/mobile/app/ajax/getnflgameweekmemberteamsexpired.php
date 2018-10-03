<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];

// debug
// $season = 2014;

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl game team expired information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl game team expired information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT
  G.season as season,
  G.week as week,
  G.id as gameid,
  G.gamenbr as gamenbr,
  CASE 
  WHEN G.gamedatetime < NOW() THEN 'expired'
  ELSE 'ok'
  END AS gamestatus
FROM gamestbl G 
WHERE G.season = '$season'
AND G.week = '$week'
AND G.gamenbr = '$gamenbr'";
// ORDER BY G.gamedatetime, TH.location";
// echo "sql:$sql";
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl game team expired information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$teams = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $teams[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($teams));

?>
