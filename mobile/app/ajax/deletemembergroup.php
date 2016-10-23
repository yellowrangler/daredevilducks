<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupid = $_POST['membergroupid'];

$membergroupmemberids = array();
foreach ($_POST['memberid'] as $key => $value) {
	$membergroupmemberids[$key] = $value;
}

// print_r($_POST);
// die();

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// set msg text
$msgtext = "ok";

//------------------------------------------------------
// connect to db
//------------------------------------------------------
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to delete membergroup members for ddd membergroupname $membergroupid.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to delete membergroup members for ddd membergroupname $membergroupid.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// Delete all the members from member group member table
//---------------------------------------------------------------
$sql = "DELETE FROM `membergroupmembertbl` WHERE membergroupid = '$membergroupid'";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing delete to db Unable to delete membergroupmembertbl for ddd membergroupmembertbl $membergroupid.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

//---------------------------------------------------------------
// Delete the member group table
//---------------------------------------------------------------
$sql = "DELETE FROM `membergrouptbl` WHERE id = '$membergroupid'";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing delete to db Unable to delete membergrouptbl for ddd membergrouptbl $membergroupid.");
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
