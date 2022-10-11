<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// get post values & set values for query
$msgtext = "";
$retmsg = "ok";
if (isset($_POST["membername"]))
{
	$membername = $_POST["membername"];
}
else
{
	if (isset($_GET["membername"]))
	{
		$membername = $_GET["membername"];
	}
	else
	{
		$retmsg = "No membername passed";
		exit($retmsg);
	}
}


//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to getmemberinfo for ddd membername $membername.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// Get memberid password for compare.
//---------------------------------------------------------------
$sql = "SELECT screenname,avatar,role,status 
FROM membertbl 
WHERE status = 'active' AND membername = '$membername'";
// print $sql;

//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// check if we got any rows
//
$count = mysqli_num_rows($sql_result);
if ($count == 1)
{
	$row = mysqli_fetch_assoc($sql_result);
	$screenname = $row['screenname'];
	$status = $row['status'];
	$avatar = $row['avatar'];
	$role = $row['role'];
}
else
{
	$retmsg = "Error: Member name $membername not registered. Please contact website administrator and register! count = $count";
}
	
//
// close db connection
//
mysqli_close($dbConn);
	
// print_r($regiterclientid);
// print("I am here");
// die();	

//
// pass back info
//
$msg["screenname"] = $screenname;
$msg["avatar"] = $avatar;
$msg["role"] = $role;
$msg["membername"] = $membername;
$msg["msgtext"] = $retmsg;

exit(json_encode($msg));
?>
