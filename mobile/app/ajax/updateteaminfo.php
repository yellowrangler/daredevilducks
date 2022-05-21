<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$teamid = $_POST['teamid'];
$name = $_POST['name'];
$location = $_POST['location'];
$league = $_POST['league'];
$conference = $_POST['conference'];
$division =  $_POST['division'];
$city = $_POST['city'];
$state = $_POST['state'];
$teamiconname = $_POST['teamiconname'];
$teamorder = $_POST['teamorder'];
$teamurl = $_POST['teamurl'];
$status = $_POST['status'];  
   
//
//  set global values
//
$msgtext = "ok";

// print_r($_POST);
// die()

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
$modulecontent = "Unable to update team for ddd team $name.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// update team info 
//---------------------------------------------------------------

$sql = "UPDATE teamstbl
	SET name = '$name', 
		location = '$location', 
		league = '$league', 
		conference = '$conference', 
		division = '$division', 
		teamiconname = '$teamiconname',
		city = '$city', 
		state = '$state', 
		teamorder = '$teamorder', 
		teamurl = '$teamurl', 
		status = '$status', 		
		enterdate = '$enterdateTS'
	WHERE id = '$teamid'"; 

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
