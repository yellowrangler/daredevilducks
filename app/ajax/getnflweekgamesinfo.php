<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
// $week = $_POST['week'];

// debug
// $season = 2014;

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl week game information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT *
FROM gameweekstbl 
WHERE season = '$season'";

// echo "sql:$sql";
// exit();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$gameweeks = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $gameweeks[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($gameweeks));

?>
