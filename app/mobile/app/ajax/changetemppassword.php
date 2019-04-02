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

// get post values & set values for insert
$temploginemail = $_POST["temploginemail"];
$passwdtemp = $_POST["passwdtemp"];
$passwdnew = $_POST["passwdnew"];
$templogincomments = $_POST["templogincomments"];
$enterdate = $datetime;
$status = 1;
$passwdstatus = 2;
$msgtext = "";

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
$DBschema = "ichcpm";
$DBuser = "ichcpm";
$DBpassword = "ichcpm";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to change password for ICHCP client.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to change password for ICHCP client.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// First get email address password for compare. If not found 
// error with not registered. if found and not equal error
// with not equal otherwise update new password and change status 
// to fulltime (1)
//---------------------------------------------------------------
$sql = "SELECT id,name,email,passwd,status FROM regitertbl WHERE email = '$temploginemail'";
// print $sql;

$rv = "";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to change password for ICHCP client.");
	$log->writeLog("SQL: $sql");

	$status = -100;
	$msgtext = "System Error: $sqlerr";
}

//
// check if we got any rows
//
if ($status == 1)
{
	$count = mysql_num_rows($sql_result);
	if ($count == 1)
	{
		$row = mysql_fetch_assoc($sql_result);

		$regiterclientid = $row['id'];
		$passwdontable = $row['passwd'];
	}
	else
	{
		$status = -1;
		$msgtext = "Email address not registered. Please try again!";
	}
}
	

//
// zero status = error
//
if ($status == 1)
{
	//
	// passwords must match
	//
	if ($passwdontable != $passwdtemp)
	{
		$status = -1;
		$msgtext = "Temp password does not match temp password on file. Please try again!";
	}
}

//
// if no error update table with new password
//
if ($status == 1)
{
	$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

	$sql = "UPDATE regitertbl SET passwd = '$passwdnew', status = $passwdstatus, comment = $templogincomments, enterdate = '$enterdateTS' WHERE id = $regiterclientid";

	$rv = "";
	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to change password for ICHCP client.");
		$log->writeLog("SQL: $sql");

		$status = -100;
		$msgtext = "System Error: $sqlerr";
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
$msg["status"] = sprintf("%u", $status);
$msg["clientid"] = sprintf("%u", $regiterclientid); 
$msg["text"] = $msgtext;

exit(json_encode($msg));
?>
