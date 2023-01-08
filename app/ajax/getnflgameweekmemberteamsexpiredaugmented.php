<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];
$addtime = $_POST['addtime'];


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
$modulecontent = "Unable to get nfl game team expired augmented information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT
  G.season as season,
  G.week as week,
  G.id as gameid,
  G.gamenbr as gamenbr,
  DATE_SUB(NOW(), INTERVAL $addtime HOUR) as testdate,
  NOW() as curdate,
  CASE 
  WHEN G.gamedatetime < DATE_SUB(NOW(), INTERVAL $addtime HOUR) THEN 'ok'
  ELSE 'block'
  END AS gamestatus
FROM gamestbl G 
WHERE G.season = '$season'
AND G.week = '$week'
AND G.gamenbr = '$gamenbr'";

// echo "sql = $sql";
// die();

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
