<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];
$gameday = $_POST['gameday'];
$gamedate = $_POST['gamedate'];
$gameyear = $_POST['gameyear'];
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

//
// build gamedatetime
//
$datetime = $gameday . " " . $gamedate . " " . $gameyear . " " .$gametime;
$unixTS = strtotime($datetime);
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
$gamedatetime = $mysqlTS;

//
// convert date components to be consistent
//
$datetimestr = strtotime($gamedatetime);
$gameday = date("D",$datetimestr); 
$gametime = date("g:i a",$datetimestr); 
$gamedate = date("M j",$datetimestr);

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update game for ddd game $gameid.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update game for ddd game $gameid.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// see if game exists. if so update otherwise insert 
//---------------------------------------------------------------
$sql = "SELECT * FROM  gamestbl WHERE gamenbr = '$gamenbr' AND season = '$season'"; 

$sql_result_check = @mysql_query($sql, $dbConn);
if (!$sql_result_check)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update game for ddd game $gameid.");
	$log->writeLog("SQL: $sql");

	$rc = -120;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

$count = mysql_num_rows($sql_result_check);
if ($count > 0)
{
	// 
	// do update
	// 

	$sql = "UPDATE gamestbl
	SET season = '$season', 
		week = '$week', 
		gamenbr = '$gamenbr', 
		gamedate = '$gamedate',
		gameyear = '$gameyear',
		gameday = '$gameday', 
		networkid = '$networkid', 
		gametime = '$gametime', 
		hometeamid = '$hometeamid', 
		awayteamid = '$awayteamid', 
		hometeamscore = '$hometeamscore', 
		awayteamscore = '$awayteamscore', 
		gametypeid = '$gametypeid',
		gamedatetime = '$gamedatetime',		
		enterdate = '$enterdateTS'
	WHERE gamenbr = '$gamenbr'
	AND season = '$season'"; 
}
else
{
	// 
	// do insert
	// 
	$sql = "INSERT INTO gamestbl ( season, week, 
	gamenbr, gamedate, gameyear, gameday, gametime, gametypeid,
 	networkid, hometeamid, awayteamid, hometeamscore, awayteamscore,
	gamedatetime, enterdate )
	VALUES ( '$season', '$week', 
		'$gamenbr', '$gamedate', '$gameyear', '$gameday', '$gametime', '$gametypeid',
		'$networkid', '$hometeamid', '$awayteamid', '$hometeamscore', '$awayteamscore', 
		'$gamedatetime', '$enterdateTS'	)";
}

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update or insert to db Unable or insert to update game for ddd game $gameid.");
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
