<?php 

//------------------------------------------------------
// get admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysqli_connect($DBhost, $DBuser, $DBpassword, $DBschema);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysqli_error();
	$log->writeLog("DB error: $dberr - Error mysql connect.$modulecontent.");

	$rv = "";
	exit($rv);
}
?>