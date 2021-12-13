<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
// $memberid = $_POST['memberid'];

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

//
// db connect
//
$modulecontent = "Unable to get nfl game bye team information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT
  GB.season as season,
  GB.week as week,
  GB.id as gameid,
  GB.teamid as teamid,
  T.name as teamname,
  T.location as teamlocation,  
  T.conference as conference,
  T.division as division,
  T.teamiconname as teamiconname,
  T.teamurl as teamurl,  
  TS.wins as wins,
  TS.losses as losses,
  TS.ties as ties
FROM gamebyetbl GB 
LEFT JOIN teamstbl T ON T.id = GB.teamid
LEFT JOIN gametypetbl GT ON GT.id = GB.gametypeid
LEFT JOIN teamweekstatstbl TS ON TS.teamid = GB.teamid AND TS.week = GB.week AND TS.season = GB.season
WHERE GB.season = '$season'
AND GB.week ='$week'
ORDER BY T.location";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$byeteams = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $byeteams[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($byeteams));

?>
