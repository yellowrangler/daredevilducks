<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$surveyid = $_POST['surveyid'];

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
$modulecontent = "Unable to get current survey question data";
include ('mysqlconnect.php');

//---------------------------------------------------------------
// get current survey question data
//---------------------------------------------------------------
$sql = "SELECT *  FROM surveyquestiontbl WHERE surveyid = $surveyid order by surveyquestionid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the survey question information
//
//
// fill the array
//
$surveyquestions = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $surveyquestions[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($surveyquestions));

?>
