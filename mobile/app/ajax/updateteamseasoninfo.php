<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
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
		$msg = $msg . "No season passed - Buildmemberweekstats terminated";
		exit($msg);

	}
}

if (isset($_POST["teamid"]))
{
	$teamid = $_POST["teamid"];
}
else
{
	if (isset($_GET["teamid"]))
	{
		$teamid = $_GET["teamid"];
	}
	else
	{
		$msg = $msg . "No teamid passed";
		exit($msg);

	}
}

if (isset($_POST["postseasonstatus"]))
{
	$postseasonstatus = $_POST["postseasonstatus"];
}
else
{
	if (isset($_GET["postseasonstatus"]))
	{
		$postseasonstatus = $_GET["postseasonstatus"];
	}
	else
	{
		$msg = $msg . "No postseasonstatus passed";
		exit($msg);

	}
} 
   
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
// $returnArrayLog->writeLog("Add member request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update team for ddd team $name.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update team for ddd team $name.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// update team season info 
//---------------------------------------------------------------

$sql = "SELECT teamid
	FROM teamseasontbl 
	WHERE season = $season AND teamid = $teamid";

$sql_check_result = @mysql_query($sql, $dbConn);
if (!$sql_check_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to select team for ddd teamseasontbl $teamid.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

$count = mysql_num_rows($sql_check_result);
if ($count > 0)
{
	// 
	// do update
	// 
	$sql = "UPDATE teamseasontbl 
		SET season = $season, 
		teamid = $teamid, 
		postseasonstatus = '$postseasonstatus', 
		enterdate = '$enterdateTS' 
		WHERE season = $season AND teamid = $teamid";
}
else
{
	// 
	// do insert
	// 
	$sql = "INSERT INTO teamseasontbl 
	(season, teamid, postseasonstatus, enterdate)  
	VALUES ( $season, 
	$teamid, 
	'$postseasonstatus', 
	'$enterdateTS' )";
}

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update or insert to db Unable to update teamseasontbl for ddd team $teamid.");
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