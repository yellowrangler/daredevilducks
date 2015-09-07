<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
if (isset($_POST['gametypeid']))
  $gametypeid = $_POST['gametypeid'];
else
  $gametypeid = 0;

// debug
// $season = 2014;
// $gametypeid = 2;

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

//------------------------------------------------------
// get admin user info
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl game team information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl game team information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT
  MS.season as season,
  MS.memberid as week,
  MS.id as id,
  MS.wins as wins,
  MS.losses as losses,
  MS.ties as ties,
  MS.totalgames as totalgames,
  MS.percent as percent,
  CONCAT( ROUND( ( MS.percent * 100 ), 1 ),  '%' ) as showpercent,
  MS.gametypeid as gametypeid,
  M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE MS.season = '$season' ";

if ($gametypeid != 0)
{
  $sql = $sql . " AND MS.gametypeid ='$gametypeid' ";
}

$sql = $sql . " ORDER BY MS.percent DESC, M.membername ASC ";

// echo $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl game team information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$memberstats = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $memberstats[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($memberstats));

?>
