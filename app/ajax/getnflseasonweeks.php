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

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl season week information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get nfl week information
//---------------------------------------------------------------
$sql = "SELECT week, 
DATE_FORMAT(weekstart,'%b %D') as weekstart,
DATE_FORMAT(weekend,'%b %D') as weekend
FROM gameweekstbl 
WHERE season = $season 
ORDER BY week ASC";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$weeks = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $weeks[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($weeks));

?>
