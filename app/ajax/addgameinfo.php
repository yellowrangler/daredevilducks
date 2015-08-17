<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$id = $_POST['gameid'];
$gameid = $_POST['gameid'];
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];
$gameday = $_POST['gameday'];
$gamedate = $_POST['gamedate'];
$networkid = $_POST['networkid'];
$gametime = $_POST['gametime'];
$hometeamid = $_POST['hometeamid'];
$awayteamid =  $_POST['awayteamid'];
$hometeamscore = $_POST['hometeamscore'];
$awayteamscore = $_POST['awayteamscore'];
$gametypeid = $_POST['gametypeid'];   

//
//  set global values
//
$msgtext = "ok";

// print_r($_POST);
// die()

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Update game request started" );

//------------------------------------------------------
// get admin member info
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to add game for ddd game $gameid.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to add game for ddd game $gameid.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// update game 
//---------------------------------------------------------------

$sql = "INSERT INTO gamestbl
	(
	 season, week, gamenbr, gamedate, gameday, 
	 networkid, gametime, hometeamid, awayteamid, 
	 hometeamscore, awayteamscore, gametypeid, enterdate
	 ) VALUES (
	'$season', 
	'$week', 
	'$gamenbr', 
	'$gamedate', 
	'$gameday', 
	'$networkid', 
	'$gametime', 
	'$hometeamid', 
	'$awayteamid', 
	'$hometeamscore', 
	'$awayteamscore', 
	'$gametypeid',		
	'$enterdateTS' )"; 

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to add game for ddd game $gameid.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

// 
// close db connection
// 
mysql_close($dbConn);

//
// pass back info
//

exit($msgtext);
?>