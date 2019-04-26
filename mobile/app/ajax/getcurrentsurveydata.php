<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

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
$modulecontent = "Unable to get current survey data";
include ('mysqlconnect.php');

//---------------------------------------------------------------
// get current survey data
//---------------------------------------------------------------
$sql = "SELECT *  FROM surveytbl WHERE surveycurrent = 1";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$r = mysqli_fetch_assoc($sql_result);
$survey = $r;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($survey));

?>
