<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// get post values & set values for query
$loginpasswd = $_POST["passwd"];
$loginscreenname = $_POST["screenname"];
$rc = 1;
$msgtext = "";

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to login for ddd membername $loginmembername.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to login for ddd membername $loginmembername.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// Get memberid password for compare.
//---------------------------------------------------------------
$sql = "SELECT id AS memberid,screenname,membername,avatar,passwd,role,status 
FROM membertbl 
WHERE status = 'active' AND screenname = '$loginscreenname'";
// print $sql;

$rc = 1;
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to login for ddd membername $loginmembername.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr";
}

//
// check if we got any rows
//
if ($rc == 1)
{
	$count = mysql_num_rows($sql_result);
	if ($count == 1)
	{
		$row = mysql_fetch_assoc($sql_result);
		$tblpassw = $row['passwd'];
		$tblmemberid = $row['memberid'];
		$tblscreenname = $row['screenname'];
		$tblmembername = $row['membername'];
		$tblavatar = $row['avatar'];
		$tblrole = $row['role'];
	}
	else
	{
		$rc = -1;
		$msgtext = "Member name not registered. Please contact website administrator and register!";
	}
}
	
//
// zero rc = error
//
if ($rc == 1)
{
	//
	// passwords must match
	//
	if ($tblpassw != $loginpasswd)
	{
		$rc = -1;
		$msgtext = "Password does not match password on file. Please try again!";
	}
	else
	{
		$msgtext = "You are now logged into Dare Devil Ducks NFL game Website!";
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
//
$msg["memberid"] = sprintf("%u", $tblmemberid); 
$msg["screenname"] = $tblscreenname;
$msg["avatar"] = $tblavatar;
$msg["role"] = $tblrole;
$msg["membername"] = $tblmembername;
$msg["rc"] = $rc;
$msg["text"] = $msgtext;

exit(json_encode($msg));
?>
