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
$maxrankweek = 0;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get team weekly power rankings current week information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get max week from team rank table
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS maxrankweek FROM teamweekranktbl WHERE season = $season";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$row = mysqli_fetch_assoc($sql_result_check);
$maxrankweek = $row['maxrankweek'];

//---------------------------------------------------------------
// get team weekly power rankings current week information
//---------------------------------------------------------------
$sql = "SELECT 
week,
offencetotal as pot, 
offencescoring as pos,  
offencepassing as pop, 
offencerushing as por, 
defencetotal as pdt,  
defencescoring as pds, 
defencepassing as pdp,  
defencerushing as pdr 
FROM `teamweekranktbl` 
WHERE teamid = $teamid
and season = $season
and week = $maxrankweek
";
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
$pot = array();
$pos = array();
$pop = array();
$por = array();

$pdt = array();
$pds = array();
$pdp = array();
$pdr = array();

$r = mysqli_fetch_assoc($sql_result);
// $pot = 33 - $r[pot];
// $pos = 33 - $r[pos];
// $pop = 33 - $r[pop];
// $por = 33 - $r[por];

$pot[0] = 33 - $r[pot];
$pos[0] = 33 - $r[pos];
$pop[0] = 33 - $r[pop];
$por[0] = 33 - $r[por];

$pdt[0] = 33 - $r[pdt];
$pds[0] = 33 - $r[pds];
$pdp[0] = 33 - $r[pdp];
$pdr[0] = 33 - $r[pdr];


$returnArray = array();
$returnArray[0] = $pot[0];
$returnArray[1] = $pos[0];
$returnArray[2] = $pop[0];
$returnArray[3] = $por[0];

$returnArray[4] = $pdt[0];
$returnArray[5] = $pds[0];
$returnArray[6] = $pdp[0];
$returnArray[7] = $pdr[0];

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($returnArray));

?>
