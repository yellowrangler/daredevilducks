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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to save game team date time.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to save game team date time.");

	$rv = "";
	exit($rv);
}


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

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to save game team date time.");
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
