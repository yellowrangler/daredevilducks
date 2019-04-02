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
		$msg = $msg . "No season passed - Buildmemberweekstats terminated";
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

if (isset($_POST["postseasonstatus"]))
{
	$postseasonstatus = $_POST["postseasonstatus"];
}
else
{
	if (isset($_GET["postseasonstatus"]))
	{
		$postseasonstatus = $_GET["postseasonstatus"];
	}
	else
	{
		$msg = $msg . "No postseasonstatus passed";
		exit($msg);

	}
} 
   
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
$modulecontent = "Unable to get admin member information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// update team season info 
//---------------------------------------------------------------
$sql = "SELECT teamid
	FROM teamseasontbl 
	WHERE season = $season AND teamid = $teamid";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to select team for ddd teamseasontbl $teamid.";

include ('mysqlquery.php');
$sql_check_result = $sql_result;

$count = mysqli_num_rows($sql_check_result);
if ($count > 0)
{
	// 
	// do update
	// 
	$function = "update";

	$sql = "UPDATE teamseasontbl 
		SET season = $season, 
		teamid = $teamid, 
		postseasonstatus = '$postseasonstatus', 
		enterdate = '$enterdateTS' 
		WHERE season = $season AND teamid = $teamid";
}
else
{
	// 
	// do insert
	// 
	$function = "insert";

	$sql = "INSERT INTO teamseasontbl 
	(season, teamid, postseasonstatus, enterdate)  
	VALUES ( $season, 
	$teamid, 
	'$postseasonstatus', 
	'$enterdateTS' )";
}

//
// sql query
//
$modulecontent = "Unable to update or insert team for ddd teamseasontbl $teamid.";
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
