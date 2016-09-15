<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');


//
// post input
//
$orderby = "membername";
$season = "";
$week = "";

if( isset($_POST['orderby']) )
{
     $orderby = $_POST['orderby'];
}

if( isset($_POST['season']) )
{
     $season = $_POST['season'];
}

if( isset($_POST['week']) )
{
     $week = $_POST['week'];
}

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
$gamesleftinweek = "";

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get late day of pick member information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get late day of pick member information.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// First check to see if there is a game today
//---------------------------------------------------------------
$sql = "SELECT count(id) as gamecount    
FROM gamestbl 
WHERE DATE_FORMAT(gamedatetime,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')";
// print $sql;

$sql_check = @mysql_query($sql, $dbConn);
if (!$sql_check)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select get check latepicks to db Unable to get late day of pick member information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

$r = mysql_fetch_assoc($sql_check);
if ($r['gamecount'] == 0)
{
	exit(json_encode(""));
}

//---------------------------------------------------------------
// get all member picks for today going forward with member list
//---------------------------------------------------------------
$sql = "SELECT id as memberid, membername, screenname, email   
FROM membertbl M
WHERE M.status = 'active' AND id NOT IN 
(SELECT memberid
FROM memberpickstbl MP
LEFT JOIN gamestbl G ON G.gamenbr = MP.gamenbr AND G.season = MP.season
WHERE DATE_FORMAT(gamedatetime,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')
AND DATE_FORMAT(gamedatetime,'%T') > DATE_FORMAT(NOW(),'%T'))";
// print $sql;

// $sql = "SELECT 
// id as memberid, membername, screenname, email   
// FROM membertbl M
// LEFT JOIN ( 
//     SELECT memberid
//     FROM memberpickstbl MP
//     LEFT JOIN gamestbl G ON G.gamenbr = MP.gamenbr AND G.season = MP.season
//     WHERE DATE_FORMAT(gamedatetime,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')
//     AND DATE_FORMAT(gamedatetime,'%T') > DATE_FORMAT(NOW(),'%T')
//     ) MPG ON MPG.memberid = M.id
// WHERE id IS NULL ";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select get latepicks to db Unable to get late day of pick member information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$members = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $members[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($members));

?>
