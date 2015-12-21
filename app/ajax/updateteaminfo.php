<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$teamid = $_POST['teamid'];
$name = $_POST['name'];
$location = $_POST['location'];
$league = $_POST['league'];
$conference = $_POST['conference'];
$division =  $_POST['division'];
$city = $_POST['city'];
$state = $_POST['state'];
$teamiconname = $_POST['teamiconname'];
$teamorder = $_POST['teamorder'];
$teamurl = $_POST['teamurl'];
$status = $_POST['status'];  
$postseasonstatus = $_POST['postseasonstatus'];  
   
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
// update name 
//---------------------------------------------------------------

$sql = "UPDATE teamstbl
	SET name = '$name', 
		location = '$location', 
		league = '$league', 
		conference = '$conference', 
		division = '$division', 
		teamiconname = '$teamiconname',
		city = '$city', 
		state = '$state', 
		teamorder = '$teamorder', 
		teamurl = '$teamurl', 
		status = '$status', 
		postseasonstatus = '$postseasonstatus', 		
		enterdate = '$enterdateTS'
	WHERE id = '$teamid'"; 

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update team for ddd team $name.");
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
