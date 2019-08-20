<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$newmembers = array();
$newmembers = json_decode($_POST['newmembers'], true);

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
$modulecontent = "Unable to add new membergroup members for ddd membergroupname $membergroupid.";
include_once ('mysqlconnect.php');

//
// loop through members and insert
//
foreach ($newmembers as $key => $value) {
	$membergroupid = $value['membergroupid'];
	$memberid = $value['memberid'];

	$sql = "INSERT INTO membergroupmembertbl
	(membergroupid, memberid) 
	VALUES ('$membergroupid', '$memberid')";

	// print "sql = $sql <br>";

	//
	// sql query
	//
	$function = "insert";
	$modulecontent = "Unable to insert membergroupmembertbl for ddd membergroupmembertbl $membergroupid.";
	include ('mysqlquery.php');
}

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
