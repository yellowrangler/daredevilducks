<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$id = $_POST['gameid'];
$gameid = $_POST['gameid'];
$season = $_POST['season'];
$week = $_POST['week'];
$gamenbr = $_POST['gamenbr'];
$gameday = $_POST['gameday'];
$gamedate = $_POST['gamedate'];
$gameyear = $_POST['gameyear'];
$networkid = $_POST['networkid'];
$gametime = $_POST['gametime'];
$hometeamid = $_POST['hometeamid'];
$awayteamid =  $_POST['awayteamid'];
$hometeamscore = $_POST['hometeamscore'];
$awayteamscore = $_POST['awayteamscore'];
$gametypeid = $_POST['gametypeid'];   

//
//  set global values
//
$msgtext = "ok";

// print_r($_POST);
// die()

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
// $returnArrayLog->writeLog("Update game request started" );

//
// db connect
//
$modulecontent = "Unable to add game for ddd game $gameid.";
include_once ('mysqlconnect.php');

//
// build gamedatetime
//
$datetime = $gameday . " " . $gamedate . " " . $gameyear . " " .$gametime;
$unixTS = strtotime($datetime);
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
$gamedatetime = $mysqlTS;

//
// convert date components to be consistent
//
$datetimestr = strtotime($gamedatetime);
$gameday = date("D",$datetimestr); 
$gametime = date("g:i a",$datetimestr); 
$gamedate = date("M j",$datetimestr);


//---------------------------------------------------------------
// update game 
//---------------------------------------------------------------

$sql = "INSERT INTO gamestbl ( season, week, 
	gamenbr, gamedate, gameyear, gameday, gametime, gametypeid,
 	networkid, hometeamid, awayteamid, hometeamscore, awayteamscore,
	gamedatetime, enterdate )
	VALUES ( '$season', '$week', 
		'$gamenbr', '$gamedate', '$gameyear', '$gameday', '$gametime', '$gametypeid',
		'$networkid', '$hometeamid', '$awayteamid', '$hometeamscore', '$awayteamscore', 
		'$gamedatetime', '$enterdateTS'	)";
}

//
// sql query
//
$function = "insert";
include ('mysqlquery.php');

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//

exit($msgtext);
?>