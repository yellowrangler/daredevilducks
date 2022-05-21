<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membername = "";
$memberid = "";

if( isset($_POST['membername']) )
{
     $membername = $_POST['membername'];
}

if( isset($_POST['memberid']) )
{
     $memberid = $_POST['memberid'];
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get admin member information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get member info admin
//---------------------------------------------------------------
if ($memberid != "")
{
	$sql = "SELECT *  FROM membertbl WHERE id = '$memberid'";
}
else
{
	$sql = "SELECT *  FROM membertbl WHERE membername = '$membername'";
}

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$r = mysqli_fetch_assoc($sql_result);
$member = $r;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($member));

?>
