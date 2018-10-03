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
$week = $_POST['week'];
$teamid = $_POST['teamid'];
$maxrankweek = 0;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
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
    $log->writeLog("DB error: $dberr - Error mysql connect. Unable to get team weekly power rankings all season information.");

    $rv = "";
    exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
    $log = new ErrorLog("logs/");
    $dberr = mysql_error();
    $log->writeLog("DB error: $dberr - Error selecting db Unable to get team weekly power rankings all season information.");

    $rv = "";
    exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get max week from team rank table
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS maxrankweek FROM teamweekranktbl WHERE season = $season";
$sql_result_check = @mysql_query($sql, $dbConn);
if (!$sql_result_check)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get team weekly power rankings all season information for max week.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

$row = mysql_fetch_assoc($sql_result_check);
$maxrankweek = $row['maxrankweek'];

//---------------------------------------------------------------
// get team weekly power rankings all season information
//---------------------------------------------------------------
$sql = "SELECT powerranking, week
FROM `teamweekranktbl` 
WHERE teamid = $teamid
and season = $season
and week <= $maxrankweek
";
// print $sql;
// die();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get team weekly power rankings all season information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$powerrankingsteams = array();
$powerrankingsweeks = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $powerrankingsteams[] = 32 - $r[powerranking];
    $powerrankingsweeks[] = "Week " . $r[week];
}

$returnArray = array();
$returnArray[0] = $powerrankingsteams;
$returnArray[1] = $powerrankingsweeks;

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($returnArray));

?>