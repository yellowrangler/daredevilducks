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
$teamid = $_POST['teamid'];
$orderbydirection = $_POST['orderbydirection'];
$maxrankweek = 0;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get team weekly rankings information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get max week from team rank table
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS maxrankweek FROM teamweekranktbl";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$row = mysqli_fetch_assoc($sql_result_check);
$maxrankweek = $row['maxrankweek'];

//---------------------------------------------------------------
// Get team weekly rankings information
//---------------------------------------------------------------
$sql = "SELECT 
G.week as week,
G.gamenbr as gamenbr,
TH.id as hometeamid,
TH.location as hometeamlocation, 
TH.name as hometeamname, 
TH.teamurl as hometeamurl, 
TH.teamiconname as hometeamiconname, 
G.hometeamscore as hometeamscore, 
TSH.wins as hometeamwins, 
TSH.losses as hometeamlosses, 
TSH.ties as hometeamties,
TRH.powerranking as hometeampowerranking, 
TRH.offencetotal as hometeamoffencetotal, 
TRH.offencescoring as hometeamoffencescoring, 
TRH.offencepassing as hometeamoffencepassing, 
TRH.offencerushing as hometeamoffencerushing, 
TRH.defencetotal as hometeamdefencetotal, 
TRH.defencescoring as hometeamdefencescoring, 
TRH.defencepassing as hometeamdefencepassing, 
TRH.defencerushing as hometeamdefencerushing, 
TA.id as awayteamid,
TA.location as awayteamlocation, 
TA.name as awayteamname, 
TA.teamurl as awayteamurl, 
TA.teamiconname as awayteamiconname, 
G.awayteamscore as awayteamscore, 
TSA.wins as awayteamwins, 
TSA.losses as awayteamlosses, 
TSA.ties as awayteamties,
TRA.powerranking as awayteampowerranking, 
TRA.offencetotal as awayteamoffencetotal, 
TRA.offencescoring as awayteamoffencescoring, 
TRA.offencepassing as awayteamoffencepassing, 
TRA.offencerushing as awayteamoffencerushing, 
TRA.defencetotal as awayteamdefencetotal, 
TRA.defencescoring as awayteamdefencescoring, 
TRA.defencepassing as awayteamdefencepassing, 
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
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
LEFT JOIN gamebyetbl GB ON GB.season = G.season AND GB.week = G.week AND GB.teamid = $teamid	
WHERE (G.hometeamid = $teamid OR G.awayteamid = $teamid)
AND G.season = $season 
AND G.week <= $maxrankweek

UNION

SELECT 
GB.week as week,
'B' as gamenbr,
GB.teamid as hometeamid,
T.location as hometeamlocation, 
T.name as hometeamname, 
T.teamurl as hometeamurl, 
T.teamiconname as hometeamiconname, 
' ' as hometeamscore, 
' ' as hometeamwins, 
' ' as hometeamlosses, 
' ' as hometeamties,
' ' as hometeampowerranking, 
' ' as hometeamoffencetotal, 
' ' as hometeamoffencescoring, 
' ' as hometeamoffencepassing, 
' ' as hometeamoffencerushing, 
' ' as hometeamdefencetotal, 
' ' as hometeamdefencescoring, 
' ' as hometeamdefencepassing, 
' ' as hometeamdefencerushing, 
' ' as awayteamid,
'BYE' as awayteamlocation, 
' ' as awayteamname, 
' ' as awayteamurl, 
'B' as awayteamiconname, 
' ' as awayteamscore, 
' ' as awayteamwins, 
' ' as awayteamlosses, 
' ' as awayteamties,
' ' as awayteampowerranking, 
' ' as awayteamoffencetotal, 
' ' as awayteamoffencescoring, 
' ' as awayteamoffencepassing, 
' ' as awayteamoffencerushing, 
' ' as awayteamdefencetotal, 
' ' as awayteamdefencescoring, 
' ' as awayteamdefencepassing, 
' ' as awayteamdefencerushing
FROM gamebyetbl GB 
LEFT JOIN teamstbl T ON GB.teamid = T.id
WHERE GB.season = $season  AND GB.week <= $maxrankweek AND GB.teamid = $teamid
ORDER BY week $orderbydirection";
// print $sql;
// die();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

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
