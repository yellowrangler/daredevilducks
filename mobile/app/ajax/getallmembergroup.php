<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupname = "";
$membergroupid = "";

if( isset($_POST['membergroupname']) )
{
     $membergroupname = $_POST['membergroupname'];
}

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
}

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
$modulecontent = "Unable to get membergroup information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get member group information
//---------------------------------------------------------------
if ($membergroupid != "")
{
	$sql = "SELECT 
	id as membergroupid,
	groupname as membergroupname  
	FROM membergrouptbl 
	WHERE id = '$membergroupid'";
}
else
{
	$sql = "SELECT 
	id as membergroupid,
	groupname as membergroupname    
	FROM membergrouptbl 
	WHERE groupname = '$membergroupname'";
}

// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$r = mysqli_fetch_assoc($sql_result);
$membergroup = $r;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($membergroup));

?>
