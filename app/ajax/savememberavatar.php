<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$avatar = $_POST['avatar']; 
$memberid = $_POST['memberid'];      

//
//  set global values
//
$msgtext = "ok";

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Add member request started" );

//
// db connect
//
$modulecontent = "Unable to update avatar for ddd membername $membername.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// update avatar 
//---------------------------------------------------------------

$sql = "UPDATE membertbl
	SET avatar = '$avatar'
	WHERE id = '$memberid'"; 

//
// sql query
//
$function = "update";
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
