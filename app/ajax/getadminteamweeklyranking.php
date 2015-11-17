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
$season = $_POST['season'];
$week = $_POST['week'];

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//------------------------------------------------------
// get admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get admin team weekly rankings information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get admin team weekly rankings information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get admin team weekly rankings information
//---------------------------------------------------------------

$sql = "SELECT 
TWR.season as season,
TWR.week as week,
TWR.teamid AS teamid, 
T.location AS location,
T.teamurl AS teamurl,
T.teamiconname AS teamiconname,
T.name AS name,
TWR.powerranking AS powerranking,
TWR.offencetotal AS offencetotal,
TWR.offencepassing AS offencepassing,
TWR.offencerushing AS offencerushing,
TWR.offencescoring AS offencescoring,
TWR.defencetotal AS defencetotal,
TWR.defencepassing AS defencepassing,
TWR.defencerushing AS defencerushing,
TWR.defencescoring AS defencescoring
FROM teamstbl T 
LEFT JOIN teamweekranktbl TWR ON TWR.teamid = T.id AND TWR.season = $season AND TWR.week = $week
ORDER BY location, name";

// $sql = "SELECT 
// TWR.season as season,
// TWR.week as week,
// TWR.teamid AS teamid, 
// T.location AS location,
// T.teamurl AS teamurl,
// T.teamiconname AS teamiconname,
// T.name AS name,
// TWR.powerranking AS powerranking,
// TWR.offencetotal AS offencetotal,
// TWR.offencepassing AS offencepassing,
// TWR.offencerushing AS offencerushing,
// TWR.offencescoring AS offencescoring,
// TWR.defencetotal AS defencetotal,
// TWR.defencepassing AS defencepassing,
// TWR.defencerushing AS defencerushing,
// TWR.defencescoring AS defencescoring
// FROM teamweekranktbl TWR
// LEFT JOIN teamstbl T ON T.id = TWR.teamid
// WHERE season = $season AND week = $week
// ORDER BY T.location, T.name";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get admin team weekly rankings information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$teamstats = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $teamstats[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($teamstats));

?>
