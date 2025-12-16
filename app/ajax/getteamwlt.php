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

// set variables
$enterdate = $datetime;

//
// get post variables passed in
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
		$log = new ErrorLog("logs/");
		$log->writeLog("System error: No season passed - getteamwlt terminated");

		$rv = "";
		exit($rv);
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
		$log = new ErrorLog("logs/");
		$log->writeLog("System error: No teamid passed - getteamwlt terminated");

		$rv = "";
		exit($rv);
	}
}

$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;


//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl team win, loss, tie information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get nfl team team win, loss, tie information
//---------------------------------------------------------------
$sql = "SELECT DISTINCT 
tt.id as teamid, 
location as teamlocation, 
name as teamname, 
COALESCE(wins,0) AS teamwins,
COALESCE(losses,0) AS teamlosses,
COALESCE(ties,0) AS teamties
FROM teamstbl tt
LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
LEFT JOIN teamseasontbl tss ON tt.id = tss.teamid AND tss.season = $season
WHERE ts.season = $season and ts.gametypeid = 1 AND ts.teamid = $teamid";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// Tarry added this 08/25/2016 if nothing returned the because begining of season
//
$rows = mysqli_num_rows($sql_result);
// echo "rows = $rows";	
if ($rows == 0)
{
	//---------------------------------------------------------------
	// Get nfl team statistical information
	//---------------------------------------------------------------
	$sql = "SELECT id, 
	location as teamlocation, 
	name as teamname, 
	'0' as teamwins,
	'0' as teamlosses,
	'0' as teamties
	FROM teamstbl WHERE id = $teamid";
	// print $sql;

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to get nfl team win, loss, tie start of year information.";
	include ('mysqlquery.php');
}
	

//
// fill the array
//
$teamstats = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $teamstats[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($teamstats));
?>
