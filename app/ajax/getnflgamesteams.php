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
$inboxitems = "";

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl game team information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl game team information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get nfl team information
//---------------------------------------------------------------
$sql = "SELECT
	G.id as gameid,
	G.seasonyear as seasonyear,
	G.weeknbr as weeknbr,
	G.gamenbr as gamenbr,
	G.gamedate as gamedate,
	G.gameday as gameday,
	G.type as type,
	GTA.teamid as awayteamid,
	GTA.teamscore as awayteamscore,
	TA.name as awayteamname,
	TA.conference as awayconference,
	TA.division as awaydivision,
	TA.teamiconname as awayteamiconname,
	GTH.teamid as hometeamid,
	GTH.teamscore as hometeamscore,
	TH.name as hometeamname,
	TH.conference as homeconference,
	TH.division as homedivision,
	TH.teamiconname as hometeamiconname 

FROM gamestbl G 
LEFT JOIN teamgamestbl GTA ON GTA.gamenbr = G.gamenbr
AND GTA.location = 'A'
LEFT JOIN teamgamestbl GTH ON GTH.gamenbr = G.gamenbr
AND GTH.location = 'H'
LEFT JOIN teamstbl TA ON TA.id = GTA.teamid
LEFT JOIN teamstbl TH ON TH.id = GTH.teamid
WHERE G.seasonyear = '2014'";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl game team information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$teams = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $teams[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($teams));

?>
