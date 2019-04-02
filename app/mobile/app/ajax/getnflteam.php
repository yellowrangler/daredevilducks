<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variable
//
$teamid = $_POST['teamid'];

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$inboxitems = "";

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl single team information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get nfl single team information
//---------------------------------------------------------------
$sql = "SELECT * FROM teamstbl WHERE id = $teamid";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
// $team = array();
$team = mysqli_fetch_assoc($sql_result);

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($team));

?>
