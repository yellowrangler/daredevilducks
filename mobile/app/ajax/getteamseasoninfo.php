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
		$msg = $msg . "No season passed";
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
   
//
//  set global values
//
$msgtext = "";

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to select team for ddd team $name.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to select team for ddd team $name.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// update team season info 
//---------------------------------------------------------------

$sql = "SELECT postseasonstatus	
FROM teamseasontbl 
WHERE season = $season AND teamid = $teamid";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to select team for ddd teamseasontbl $teamid.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

//
// get season week
// 
$count = mysql_num_rows($sql_result);
if ($count > 0)
{
	$r = mysql_fetch_assoc($sql_result);

	$postseasonstatus = $r['postseasonstatus'];	
}
else
{
	$postseasonstatus = "";
}

$data = array('postseasonstatus' => $postseasonstatus);

// 
// close db connection
// 
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($data));
?>
