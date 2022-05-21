<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$msg = $msg . "No season passed";
		exit($msg);

	}
}

if (isset($_POST["teamid"]))
{
	$teamid = $_POST["teamid"];
}
else
{
	if (isset($_GET["teamid"]))
	{
		$teamid = $_GET["teamid"];
	}
	else
	{
		$msg = $msg . "No teamid passed";
		exit($msg);

	}
}
   
//
//  set global values
//
$msgtext = "";

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
$modulecontent = "Unable to select team for ddd teamid $teamid.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// update team season info 
//---------------------------------------------------------------

$sql = "SELECT postseasonstatus	
FROM teamseasontbl 
WHERE season = $season AND teamid = $teamid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get season week
// 
$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	$r = mysqli_fetch_assoc($sql_result);

	$postseasonstatus = $r['postseasonstatus'];	
}
else
{
	$postseasonstatus = "";
}

$data = array('postseasonstatus' => $postseasonstatus);

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($data));
?>
