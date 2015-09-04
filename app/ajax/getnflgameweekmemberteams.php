<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$memberid = $_POST['memberid'];

// debug
// $season = 2014;

// get date time for this transaction
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
// $sql = "SELECT
//   G.season as season,
//   G.week as week,
//   G.id as gameid,
//   G.gamenbr as gamenbr,
//   G.gamedate as gamedate,
//   G.gametime as gametime,
//   G.gameday as gameday,
//   G.networkid as networkid,
//   GN.network as network,
//   GN.networkiconname as networkiconname,
//   G.gametypeid as gametypeid,
//   G.hometeamid as hometeamid,
//   TH.name as hometeamname,
//   TH.location as hometeamlocation,  
//   TH.conference as homeconference,
//   TH.division as homedivision,
//   TH.teamiconname as hometeamiconname,
//   G.hometeamscore as hometeamscore,
//   G.awayteamid as awayteamid,
//   TA.name as awayteamname,
//   TA.location as awayteamlocation,  
//   TA.conference as awayconference,
//   TA.division as awaydivision,
//   TA.teamiconname as awayteamiconname,
//   G.awayteamscore as awayteamscore,
//     TSH.wins as homewins,
//     TSH.losses as homelosses,
//     TSH.ties as hometies,
//     TSA.wins as awaywins,
//     TSA.losses as awaylosses,
//     TSA.ties as awayties,
//   GT.gametype as gametype

// FROM gamestbl G 
// LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
// LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
// LEFT JOIN teamweekstatstbl TSH ON TSH.teamid = G.hometeamid AND TSH.week = G.week
// LEFT JOIN teamweekstatstbl TSA ON TSA.teamid = G.awayteamid AND TSA.week = G.week
// LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
// LEFT JOIN gamenetworktbl GN ON GN.id = G.networkid
// WHERE G.season = '$season'
// AND G.week ='$week'
// ORDER BY G.gamedatetime";
// echo $sql;

$sql = "SELECT
  G.season as season,
  G.week as week,
  G.id as gameid,
  G.gamenbr as gamenbr,
  G.gamedate as gamedate,
  G.gametime as gametime,
  G.gameday as gameday,
  G.networkid as networkid,
  GN.network as network,
  GN.networkiconname as networkiconname,
  G.gametypeid as gametypeid,
  G.hometeamid as hometeamid,
  TH.name as hometeamname,
  TH.location as hometeamlocation,  
  TH.conference as homeconference,
  TH.division as homedivision,
  TH.teamiconname as hometeamiconname,
  G.hometeamscore as hometeamscore,
  G.awayteamid as awayteamid,
  TA.name as awayteamname,
  TA.location as awayteamlocation,  
  TA.conference as awayconference,
  TA.division as awaydivision,
  TA.teamiconname as awayteamiconname,
  G.awayteamscore as awayteamscore,
  TSH.wins as homewins,
  TSH.losses as homelosses,
  TSH.ties as hometies,
  TSA.wins as awaywins,
  TSA.losses as awaylosses,
  TSA.ties as awayties,
  GT.gametype as gametype,
  MP.teamid as teamselected
FROM gamestbl G 
LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
LEFT JOIN gamenetworktbl GN ON GN.id = G.networkid
LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) AND MP.week = G.week AND MP.season = G.season AND MP.memberid ='$memberid'
LEFT JOIN teamweekstatstbl TSH ON TSH.teamid = G.hometeamid AND TSH.week = G.week AND TSH.season = G.season
LEFT JOIN teamweekstatstbl TSA ON TSA.teamid = G.awayteamid AND TSA.week = G.week AND TSA.season = G.season
WHERE G.season = '$season'
AND G.week ='$week'
ORDER BY G.gamedatetime";

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
