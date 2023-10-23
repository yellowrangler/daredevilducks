<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get data
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
		print("Error: No season. Not passed.");
		die();
	}
}

if (isset($_POST["week"]))
{
	$week = $_POST["week"];
}
else
{
	if (isset($_GET["week"]))
	{
		$week = $_GET["week"];
	}
	else
	{
		print("Error: No week. Not passed.");
		die();
	}
}

if (isset($_POST["hometeamid"]))
{
	$hometeamid = $_POST["hometeamid"];
}
else
{
	if (isset($_GET["hometeamid"]))
	{
		$hometeamid = $_GET["hometeamid"];
	}
	else
	{
		print("Error: No hometeamid. Not passed.");
		die();
	}
}

if (isset($_POST["awayteamid"]))
{
	$awayteamid = $_POST["awayteamid"];
}
else
{
	if (isset($_GET["awayteamid"]))
	{
		$awayteamid = $_GET["awayteamid"];
	}
	else
	{
		print("Error: No awayteamid. Not passed.");
		die();
	}
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$hometeaminjury = array();
$awayteaminjury = array();
$returnArray = array();

//
// db connect
//
$modulecontent = "Unable to get player injury stats information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get player injury stats information for home team
//---------------------------------------------------------------
$sql = "SELECT playername, position, injury, status 
FROM playerinjurytbl 
WHERE season = $season AND week = $week and teamid = $hometeamid";

// print ($sql);
// exit();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the query results for hometeam
//
while($r = mysqli_fetch_assoc($sql_result)) {
	$hometeaminjury[] = $r;
}

// print_r($hometeaminjury);

//---------------------------------------------------------------
// Get player injury stats information for away team
//---------------------------------------------------------------
$sql = "SELECT playername, position, injury, status 
FROM playerinjurytbl 
WHERE season = $season AND week = $week and teamid = $awayteamid";

// print ($sql);
// exit();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the query results for awayteam
//
while($r = mysqli_fetch_assoc($sql_result)) {
	$awayteaminjury[] = $r;
}

// print_r($awayteaminjury);
// exit();

//
// close db connection
//
mysqli_close($dbConn);

$returnArray[0]=$hometeaminjury;
$returnArray[1]=$awayteaminjury;

// print_r($awayteaminjury);
// print_r($hometeaminjury);
// print_r($returnArray);

//
// pass back info
//
exit(json_encode($returnArray));
?>
