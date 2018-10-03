<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupname = $_POST['membergroupname'];

$membergroupmemberids = array();
foreach ($_POST['memberid'] as $key => $value) {
	$membergroupmemberids[$key] = $value;
}

// print_r($membergroupids);
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to add membergroupname for ddd membergroupname $membergroupname.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to add membergroupname for ddd membergroupname $membergroupname.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// check if membergroupname already exists
//---------------------------------------------------------------
$sql = "SELECT * 
FROM membergrouptbl 
WHERE groupname = '$membergroupname'";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to add membergroupname for ddd membergroupname $membergroupname.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr";

	exit($msgtext);
}

//
// check if membergroupname already exists
//
$count = 0;
$count = mysql_num_rows($sql_result);
if ($count == 1)
{
	$msgtext = "Member Group name $membergroupname already is a member group!";

	exit($msgtext);
}
	
//---------------------------------------------------------------
// insert new membergroupname
//---------------------------------------------------------------
$sql = "INSERT INTO membergrouptbl
	(groupname) 
	VALUES ('$membergroupname')"; 

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to add membergroupname for ddd membergroupname $membergroupname.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}

//---------------------------------------------------------------
// get id for just inserted membergroupname
//---------------------------------------------------------------
$sql = "SELECT * 
FROM membergrouptbl 
WHERE groupname = '$membergroupname'";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to add membergroupname for ddd membergroupname $membergroupname.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr";

	exit($msgtext);
}

//
// get member group id for member group inserts
//
$membergroup = mysql_fetch_assoc($sql_result);
$mebergroupid = $membergroup["id"];

//
// loop through members and insert
//
foreach ($membergroupmemberids as $key => $memberid) {
	//---------------------------------------------------------------
	// insert new membergroup members
	//---------------------------------------------------------------
	$sql = "INSERT INTO membergroupmembertbl
		(membergroupid, memberid) 
		VALUES ('$mebergroupid', '$memberid')"; 

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to add membergroupmembertbl for ddd membergroupmembertbl $memberid.");
		$log->writeLog("SQL: $sql");

		$rc = -100;
		$msgtext = "System Error: $sqlerr. sql = $sql";

		exit($msgtext);
	}	
}

//
// close db connection
//
mysql_close($dbConn);
	
// print_r($regiterclientid);
// print("I am here");
// die();	

//
// pass back info


exit($msgtext);
?>
