<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
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
// $returnArrayLog->writeLog("Hall of Fame List request started" );

//
// db connect
//
$modulecontent = "Unable to get Hall of Fame List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get hall of fame list
//---------------------------------------------------------------
$sql = "SELECT *  FROM halloffametbl ORDER BY year DESC";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the hall of fame information
//

//
// fill the array
//
$halloffame = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $halloffame[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($halloffame));
?>
