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
$gamenbr = $_POST['gamenbr'];
$hometeamid = $_POST['hometeamid'];
$awayteamid = $_POST['awayteamid'];

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get team weekly rankings information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get team weekly rankings information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get team weekly rankings information
//---------------------------------------------------------------
$sql = "SELECT DISTINCT
G.week as week,
TH.id as hometeamid,
TA.id as awayteamid,
TH.location as hometeamlocation, 
TH.name as hometeamname, 
TH.teamiconname as hometeamiconname, 
TH.teamurl as hometeamurl, 
TA.location as awayteamlocation, 
TA.name as awayteamname, 
TA.teamiconname as awayteamiconname, 
TA.teamurl as awayteamurl, 
G.hometeamscore as hometeamscore, 
G.awayteamscore as awayteamscore, 

'Standings' as standingsheader,
'Overall' as overallstandingstitle,
TSH.wins as hometeamwins, 
TSH.losses as hometeamlosses, 
TSH.ties as hometeamties,
TSA.wins as awayteamwins, 
TSA.losses as awayteamlosses, 
TSA.ties as awayteamties,

'Home' as homestandingstitle,
TSH.homewins as homehomewins, 
TSH.homelosses as homehomelosses, 
TSH.hometies as homehometies,
TSA.homewins as homeawaywins, 
TSA.homelosses as homeawaylosses, 
TSA.hometies as homeawayties,

'Away' as awaystandingstitle,
TSH.awaywins as awayhomewins, 
TSH.awaylosses as awayhomelosses, 
TSH.awayties as awayhometies,
TSA.awaywins as awayawaywins, 
TSA.awaylosses as awayawaylosses, 
TSA.awayties as awayawayties,

'Conference' as confstandingstitle,
TSH.confwins as confhometeamwins, 
TSH.conflosses as confhometeamlosses, 
TSH.confties as confhometeamties,
TSA.confwins as confawayteamwins, 
TSA.conflosses as confawayteamlosses, 
TSA.confties as confawayteamties,

'Division' as divstandingstitle,
TSH.divwins as divhometeamwins, 
TSH.divlosses as divhometeamlosses, 
TSH.divties as divhometeamties,
TSA.divwins as divawayteamwins, 
TSA.divlosses as divawayteamlosses, 
TSA.divties as divawayteamties,

'Power Rankings' as powerrankingsheader,
'Overall' as overallrankingstitle,
TRH.powerranking as hometeampowerranking, 
TRA.powerranking as awayteampowerranking, 

'Offence Rankings' as offencerankingsheader,
'Overall' as offenceoverallrankingstitle,
TRH.offencetotal as hometeamoffencetotal, 
TRA.offencetotal as awayteamoffencetotal, 
'Scoring' as offencescoringrankingstitle,
TRH.offencescoring as hometeamoffencescoring, 
TRA.offencescoring as awayteamoffencescoring, 
'Passing' as offencepassingrankingstitle,
TRH.offencepassing as hometeamoffencepassing, 
TRA.offencepassing as awayteamoffencepassing, 
'Rushing' as offencerushingeamoffencerushing,
TRH.offencerushing as hometeamoffencerushing, 
TRA.offencerushing as awayteamoffencerushing, 

'Defence Rankings' as defencerankingsheader,
'Overall' as defenceoverallrankingstitle,
TRH.defencetotal as hometeamdefencetotal, 
TRA.defencetotal as awayteamdefencetotal, 
'Scoring' as defencescoringrankingstitle,
TRH.defencescoring as hometeamdefencescoring, 
TRA.defencescoring as awayteamdefencescoring, 
'Passing' as defencepassingrankingstitle,
TRH.defencepassing as hometeamdefencepassing, 
TRA.defencepassing as awayteamdefencepassing, 
'Rushing' as defencerushingeamdefencerushing,
TRH.defencerushing as hometeamdefencerushing, 
TRA.defencerushing as awayteamdefencerushing

FROM gamestbl G 
LEFT JOIN teamweekstatstbl TSH ON G.hometeamid = TSH.teamid
	AND G.season = TSH.season AND G.week = TSH.week
LEFT JOIN teamweekstatstbl TSA ON G.awayteamid = TSA.teamid	
	AND G.season = TSA.season AND G.week = TSA.week	
LEFT JOIN teamweekranktbl TRH on TRH.season = TSH.season AND
	TRH.week = TSH.week AND TRH.teamid = TSH.teamid
LEFT JOIN teamweekranktbl TRA on TRA.season = TSA.season AND
	TRA.week = TSA.week AND TRA.teamid = TSA.teamid	
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id AND TH.ID = $hometeamid	
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id AND TA.ID = $awayteamid	
LEFT JOIN gamebyetbl GB ON GB.season = G.season AND GB.week = G.week	
WHERE G.season = $season AND G.gamenbr = $gamenbr";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get team weekly rankings information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get the query results
//

$returnArray = array();
$teamstat = mysql_fetch_assoc($sql_result);

$returnArray[] = $teamstat;
// print_r($teamstat);
// exit();

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($returnArray));

?>
