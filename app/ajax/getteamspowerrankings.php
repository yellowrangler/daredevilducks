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

// set variables
$enterdate = $datetime;
$season = $_POST['season'];
$week = $_POST['week'];
$teamid = $_POST['teamid'];
$maxrankweek = 0;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get team weekly power rankings all season information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get max week from team rank table
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS maxrankweek FROM teamweekranktbl WHERE season = $season";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$row = mysqli_fetch_assoc($sql_result_check);
$maxrankweek = $row['maxrankweek'];

//---------------------------------------------------------------
// get team weekly power rankings all season information
//---------------------------------------------------------------
$sql = "SELECT powerranking, week
FROM `teamweekranktbl` 
WHERE teamid = $teamid
and season = $season
and week <= $maxrankweek
";
// print $sql;
// die();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$powerrankingsteams = array();
$powerrankingsweeks = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $powerrankingsteams[] = 33 - $r[powerranking];
    $powerrankingsweeks[] = "Week " . $r['week'];
}

$returnArray = array();
$returnArray[0] = $powerrankingsteams;
$returnArray[1] = $powerrankingsweeks;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($returnArray));

?>
