<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupid = $_POST['membergroupid'];

// print_r($_POST);
// die();

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// set msg text
$msgtext = "ok";

//
// db connect
//
$modulecontent = "Unable to delete membergroupname for ddd membergroupname $membergroupid.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// Delete all the members from member group member table
//---------------------------------------------------------------
$sql = "DELETE FROM membergroupmembertbl WHERE membergroupid = '$membergroupid'";

//
// sql query
//
$function = "delete";
include ('mysqlquery.php');

//---------------------------------------------------------------
// Delete the member group table
//---------------------------------------------------------------
$sql = "DELETE FROM membergrouptbl WHERE id = '$membergroupid'";

//
// sql query
//
$function = "delete";
$modulecontent = "Unable to delete membergrouptbl for ddd membergrouptbl $membergroupid.";
include ('mysqlquery.php');

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//

exit($msgtext);
?>
