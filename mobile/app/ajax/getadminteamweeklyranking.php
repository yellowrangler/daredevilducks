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

//
// db connect
//
$modulecontent = "Unable to get admin team weekly rankings information.";
include_once ('mysqlconnect.php');

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
