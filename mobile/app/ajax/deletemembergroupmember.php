<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupid = $_POST['membergroupid'];
$memberid = $_POST['memberid'];


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
$modulecontent = "Unable to delete member from membergroupname for memberid $memberid and membergroupid $membergroupid $membergroupid.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// Delete all the members from member group member table
//---------------------------------------------------------------
$sql = "DELETE FROM membergroupmembertbl 
		WHERE membergroupid = '$membergroupid'
		AND memberid = '$memberid'";

//
// sql query
//
$function = "delete";
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
