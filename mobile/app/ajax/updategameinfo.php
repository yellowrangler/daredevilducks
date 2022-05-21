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
$modulecontent = "Unable to update game for ddd game $gameid.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// see if game exists. if so update otherwise insert 
//---------------------------------------------------------------
$sql = "SELECT * FROM  gamestbl WHERE gamenbr = '$gamenbr' AND season = '$season'"; 

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$count = mysqli_num_rows($sql_result_check);
if ($count > 0)
{
	// 
	// do update
	// 
	$function = "update";

	$sql = "UPDATE gamestbl
	SET season = '$season', 
		week = '$week', 
		gamenbr = '$gamenbr', 
		gamedate = '$gamedate',
		gameyear = '$gameyear',
		gameday = '$gameday', 
		networkid = '$networkid', 
		gametime = '$gametime', 
		hometeamid = '$hometeamid', 
		awayteamid = '$awayteamid', 
		hometeamscore = '$hometeamscore', 
		awayteamscore = '$awayteamscore', 
		gametypeid = '$gametypeid',
		gamedatetime = '$gamedatetime',		
		enterdate = '$enterdateTS'
	WHERE gamenbr = '$gamenbr'
	AND season = '$season'"; 
}
else
{
	// 
	// do insert
	// 
	$function = "insert";

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
$modulecontent = "Unable to $function game for ddd game $gameid.";
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
