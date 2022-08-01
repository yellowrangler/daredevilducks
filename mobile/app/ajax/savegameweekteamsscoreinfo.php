<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];
$hometeamscore = $_POST['hometeamscore'];
$awayteamscore = $_POST['awayteamscore'];
$hometeamid = $_POST['hometeamid'];
$awayteamid = $_POST['awayteamid'];

$gamecount = 0;

$msgtext = "Game Scores for week Saved Succesfully!";
  
$post = $_POST; 

// print_r($gamenbr);
// print_r($hometeamscore);
// print_r($awayteamscore);
// print_r($hometeamid);
// print_r($awayteamid);

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");

//
// db connect
//
$modulecontent = "Unable to save game team scores.";
include_once ('mysqlconnect.php');

$gamecount = count($gamenbr);
for ($i = 0; $i < $gamecount; $i++)
{

	//-----------------------------------------------------------------
	// add games scores for this week that are home and away
	//-----------------------------------------------------------------
	$sql = "UPDATE gamestbl
		 SET hometeamscore='$hometeamscore[$i]', awayteamscore='$awayteamscore[$i]'
		 WHERE season = $season AND week = $week 
		 AND hometeamid= '$hometeamid[$i]' 
		 AND awayteamid = '$awayteamid[$i]'
		 AND gamenbr = '$gamenbr[$i]' ";

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to update team scores home and away.";
	include ('mysqlquery.php');
} 

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
