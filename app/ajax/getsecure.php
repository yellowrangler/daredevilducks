<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');


$name = $_POST["name"];
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
// db connect
//
$modulecontent = "Unable to get network information.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get nfl game type information
//---------------------------------------------------------------
$sql = "SELECT *  FROM securetbl where name = $name";
// print $sql;

//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// fill the array
//
$secure = array();
$r = mysqli_fetch_assoc($sql_result));
    $secure[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($secure));

?>
