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

if (isset($_POST["playoffstatus"]))
{
	$playoffstatus = $_POST["playoffstatus"];
}
else
{
	if (isset($_GET["playoffstatus"]))
	{
		$playoffstatus = $_GET["playoffstatus"];
	}
	else
	{
		$msg = $msg . "No playoffstatus passed";
		exit($msg);

	}
}
   
//
//  set global values
//
$msgtext = "";
$preplayoffstatus = array();

// print_r($_POST);
// die()

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Add member request started" );

//
// db connect
//
$modulecontent = "Unable to get playoffstatus for ddd playoffstatus $playoffstatus.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get playoffstatus info 
//---------------------------------------------------------------
$sql = "SELECT *	
FROM preplayofftbl 
WHERE season = $season AND playoffstatus = '$playoffstatus'
ORDER BY id";

// print($sql);
// die()
//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	while($r = mysqli_fetch_assoc($sql_result)) {
		$preplayoffstatus[] = $r;
	}
}
else
{
	exit(NULL);
}


// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($preplayoffstatus));
?>
