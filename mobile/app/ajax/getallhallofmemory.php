<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//


//
// db connect
//
$modulecontent = "Unable to get Hall of Memory List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get hall of memory list
//---------------------------------------------------------------
$sql = "SELECT *  FROM hallofmemorytbl ORDER BY lastname DESC";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the hall of memory information
//

//
// fill the array
//
$hallofmemory = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $hallofmemory[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($hallofmemory));
?>
