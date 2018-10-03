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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get late pick member information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get late pick member information.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// get total picks left for season week
//---------------------------------------------------------------
$sql = "SELECT COUNT(1) AS gamesleftinweek
	FROM gamestbl G 
	LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
	AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
	AND GW.week = '$week' AND GW.season = '$season'
	WHERE G.week = '$week' AND G.season = '$season'
	AND G.gamedatetime > NOW()";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select gmesleftinweek to db Unable to get late pick member information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get gamesleftinweek
//
$r = mysql_fetch_assoc($sql_result);
$gamesleftinweek = $r['gamesleftinweek'];

//---------------------------------------------------------------
// get all member picks for week going forward with member list
//---------------------------------------------------------------
$sql = "SELECT memberid, membername, screenname, email, status 
	FROM
	(
		SELECT id as memberid, membername, screenname, email, status,
		CASE WHEN MSEL.memberpicks IS NULL
		THEN 0
		ELSE MSEL.memberpicks
		END AS memberpicks,
		CASE WHEN MSEL.memberpicks = $gamesleftinweek
		THEN 'Ok'
		ELSE 'Lackard' 
		END AS memberpickstatus
		FROM membertbl M
		LEFT JOIN (
			SELECT memberid, COUNT(1) as memberpicks
			FROM memberpickstbl MP 
			WHERE MP.week = '$week' AND MP.season = '$season'
			AND gamenbr IN 
			(
				SELECT G.gamenbr 
				FROM gamestbl G 
				LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
				AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
				WHERE G.week = '$week' AND G.season = '$season'
				AND G.gamedatetime > NOW()
			)
			GROUP BY memberid
		) MSEL ON MSEL.memberid = M.id
		GROUP BY M.id
	) MSEL2
	WHERE MSEL2.status = 'active'
	AND MSEL2.memberpickstatus = 'Lackard'
	ORDER BY $orderby ASC";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select get latepicks to db Unable to get late pick member information.");
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
