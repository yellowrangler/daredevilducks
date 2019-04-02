<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupid = $_POST['membergroupid'];

$membergroupmemberids = array();
foreach ($_POST['memberid'] as $key => $value) {
	$membergroupmemberids[$key] = $value;
}

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
$modulecontent = "Unable to update membergroup members for ddd membergroupname $membergroupid.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// Delete all the members and then add all members
//---------------------------------------------------------------
$sql = "DELETE FROM `membergroupmembertbl` WHERE membergroupid = '$membergroupid'";

//
// sql query
//
$function = "delete";
$modulecontent = "Unable to delete membergroupmembertbl for ddd membergroupmembertbl $membergroupid.";
include ('mysqlquery.php');

//
// loop through members and insert
//
foreach ($membergroupmemberids as $key => $memberid) {
	//---------------------------------------------------------------
	// insert new membergroup members
	//---------------------------------------------------------------
	$sql = "INSERT INTO membergroupmembertbl
		(membergroupid, memberid) 
		VALUES ('$membergroupid', '$memberid')";

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
