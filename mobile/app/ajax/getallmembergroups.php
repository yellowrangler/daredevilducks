<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

//
// db connect
//
$modulecontent = "Unable to get  member group information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get membergrouptbl information
//---------------------------------------------------------------
$sql = "SELECT 
id as membergroupid,
groupname as membergroupname  
FROM membergrouptbl 
ORDER BY groupname";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$membergroups = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $membergroups[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($membergroups));

?>
