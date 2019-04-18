<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');


//
// post input
//
$orderby = "membername";

if( isset($_POST['orderby']) )
{
     $orderby = $_POST['orderby'];
}

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
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get  member information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get member list info admin
//---------------------------------------------------------------
$sql = "SELECT *  FROM membertbl 
ORDER BY $orderby ASC";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$members = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $members[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($members));

?>
