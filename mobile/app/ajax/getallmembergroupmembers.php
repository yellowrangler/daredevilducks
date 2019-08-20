<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');


//
// post input
//
$membergroupid = "";

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
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
// db connect
//
$modulecontent = "Unable to get membergroup members information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get meber group members
//---------------------------------------------------------------
$sql = "SELECT MGM.id as membergroupmemberid, membergroupid, memberid, membername, screenname, avatar  
FROM membergroupmembertbl MGM
LEFT JOIN membergrouptbl MG ON MG.id = MGM.membergroupid
LEFT JOIN membertbl M ON M.id = MGM.memberid
WHERE membergroupid = '$membergroupid'";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$membergroupmembers = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $membergroupmembers[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($membergroupmembers));
?>
