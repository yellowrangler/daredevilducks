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
$gameday = $_POST['gameday'];
$gamedate = $_POST['gamedate'];
$gameyear = $_POST['gameyear'];
$gametime = $_POST['gametime'];
$hometeamid = $_POST['hometeamid'];
$awayteamid = $_POST['awayteamid'];

$gamecount = 0;

$msgtext = "Game Date Time for week Saved Succesfully!";
  
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
$modulecontent = "Unable to save game team date time.";
include_once ('mysqlconnect.php');

$gamecount = count($gamenbr);
for ($i = 0; $i < $gamecount; $i++)
{
	//
	// build gamedatetime
	//
	$dt = $gameday[$i] . " " . $gamedate[$i] . " " . $gameyear[$i] . " " .$gametime[$i];
	$unixTS = strtotime($dt);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$gamedatetime = $mysqlTS;

	//
	// convert date components to be consistent
	//
	$datetimestr = strtotime($gamedatetime);
	$gamedaystr = date("D",$datetimestr); 
	$gametimestr = date("g:i a",$datetimestr); 
	$gamedatestr = date("M j",$datetimestr);


	//-----------------------------------------------------------------
	// add games scores for this week that are home and away
	//-----------------------------------------------------------------
	$sql = "UPDATE gamestbl
		 SET gamedate = '$gamedatestr',
			gameyear = '$gameyear[$i]',
			gametime = '$gametimestr',
			gameday = '$gamedaystr', 
			gamedatetime = '$gamedatetime'
		 WHERE season = $season AND week = $week 
		 AND hometeamid= '$hometeamid[$i]' 
		 AND awayteamid = '$awayteamid[$i]'
		 AND gamenbr = '$gamenbr[$i]' ";

	 // echo "SQL:" . $sql ."<br>" ;

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to update game team date time.";
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
