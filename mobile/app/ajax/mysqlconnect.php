<?php 

include_once "../../../secure/ddd.php";

//
// connect to db
//
$dbConn = @mysqli_connect($DBhost, $DBuser, $DBpassword, $DBschema);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysqli_error();
	$log->writeLog("DB error: $dberr - Error mysql connect.$modulecontent.");

	$msgtext = "DB error: $dberr - Error mysql connect.$modulecontent.";
	echo $msgtext;

	$rv = "";
	exit($rv);
}
?>