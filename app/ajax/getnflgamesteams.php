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
$season = $_POST["season"];

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get nfl game team information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get nfl team information
//---------------------------------------------------------------
$sql = "SELECT
	G.season as season,
	G.week as week,
	G.id as gameid,
	G.gamenbr as gamenbr,
	G.gamedate as gamedate,
	G.gameyear as gameyear,
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
	GT.gametype as gametype

FROM gamestbl G 
LEFT JOIN teamstbl TA ON TA.id = G.awayteamid
LEFT JOIN teamstbl TH ON TH.id = G.hometeamid
LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
LEFT JOIN gamenetworktbl GN ON GN.id = G.networkid
-- WHERE G.season = '$season'
ORDER BY gamedatetime, G.id ASC";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$teams = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $teams[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($teams));

?>
