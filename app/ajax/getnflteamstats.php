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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl team statistical information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl team statistical information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get nfl team statistical information
//---------------------------------------------------------------
$sql = "SELECT tt.id as teamid, 
location as teamlocation, 
name as teamname, 
league, 
conference, 
division,
teamiconname,
teamorder,
teamurl,
wins as teamwins,
losses as teamlosses,
ties as teamties,
totalgames as teamtotalgames,
percent as teampercent,
homewins, 
homelosses, 
hometies, 
hometotalgames, 
homepercent, 
awaywins, 
awaylosses, 
awayties, 
awaytotalgames, 
awaypercent, 
confwins, 
conflosses, 
confties, 
conftotalgames, 
confpercent, 
ROUND(CONCAT(percent * 100 , '%'),1) as percentdisplay,
ROUND(CONCAT(homepercent * 100 , '%'),1) as homepercentdisplay,
ROUND(CONCAT(awaypercent * 100 , '%'),1) as awaypercentdisplay,
ROUND(CONCAT(confpercent * 100 , '%'),1) as confpercentdisplay
FROM teamstbl tt
LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
WHERE ts.season = '$season'
ORDER BY conference ASC, division ASC, percent DESC";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl team statistical information.");
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
