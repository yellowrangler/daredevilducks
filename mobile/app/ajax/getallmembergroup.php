<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupname = "";
$membergroupid = "";

if( isset($_POST['membergroupname']) )
{
     $membergroupname = $_POST['membergroupname'];
}

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//------------------------------------------------------
// connect to db
//------------------------------------------------------
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get membergroup information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get membergroup information.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// get member group information
//---------------------------------------------------------------
if ($membergroupid != "")
{
	$sql = "SELECT 
	id as membergroupid,
	groupname as membergroupname  
	FROM membergrouptbl 
	WHERE id = '$membergroupid'";
}
else
{
	$sql = "SELECT 
	id as membergroupid,
	groupname as membergroupname    
	FROM membergrouptbl 
	WHERE groupname = '$membergroupname'";
}

// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get membergroup $membername information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get the member information
//
$r = mysql_fetch_assoc($sql_result);
$membergroup = $r;

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($membergroup));

?>
