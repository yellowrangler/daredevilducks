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
$loginemail = $_POST["loginemail"];
$loginpasswd = $_POST["loginpasswd"];
$logincomments = $_POST["logincomments"];
$status = 1;
$msgtext = "";
$registerclientid = "";
$registerclientname = "";

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to login for ICHCP client.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to login for ICHCP client.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// Get email address password for compare.
//---------------------------------------------------------------
$sql = "SELECT id,name,email,passwd,status FROM regitertbl WHERE email = '$loginemail'";
// print $sql;

$rv = "";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to login for ICHCP client.");
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

		$registerclientid = $row['id'];
		$registerclientname = ucwords($row['name']);
		$passwdontable = $row['passwd'];
	}
	else
	{
		$status = -1;
		$msgtext = "Email address not registered. Please register!";
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
	if ($passwdontable != $loginpasswd)
	{
		$status = -1;
		$msgtext = "Password does not match  password on file. Please try again!";
	}
	else
	{
		$msgtext = "You are now logged into International Concierge Health Partners!";
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
$msg["clientid"] = sprintf("%u", $registerclientid); 
$msg["clientname"] = $registerclientname;
$msg["text"] = $msgtext;

exit(json_encode($msg));
?>
