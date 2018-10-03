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

//------------------------------------------------------
// get admin member info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to save game team scores.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to save game team scores.");

	$rv = "";
	exit($rv);
}

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

	 // echo "SQL:" . $sql ."<br>" ;
	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to save game team scores home and away.");
		$log->writeLog("SQL: $sql");

		$rc = -100;
		$msgtext = "System Error Home Team: $sqlerr. sql = $sql";

		exit($msgtext);
	}
} 

// 
// close db connection
// 
mysql_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
