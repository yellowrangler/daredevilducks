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

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl game getNFLpostseasonstatus information.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get nfl game type information
//---------------------------------------------------------------
$sql = "SELECT *  FROM teamspostseasonstatustbl ORDER BY id ASC";


//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// fill the array
//
$postseasonstatus = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $postseasonstatus[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($postseasonstatus));

?>
