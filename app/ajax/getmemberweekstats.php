<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$gametypeid = 1;
$membergroupid = 0;
$showexperts = false;

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
}

if( isset($_POST['showexperts']) )
{
     $showexperts = $_POST['showexperts'];
}


// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get member weekly stat information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get member weekly stat information.");

	$rv = "";
	exit($rv);
}

$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

if ($membergroupid == 0)
{
    $sql = "SELECT DISTINCT
    M.screenname as screenname,
    M.id as memberid,
    M.membername as membername,
    M.role as memberrole,
    M.avatar as memberavatar,   
    MS.losses as losses,
    MS.wins as wins,
    MS.ties as ties,
    MS.week as week,
    DATE_FORMAT(GW.weekstart,'%b %D') as weekstart,
    DATE_FORMAT(GW.weekend,'%b %D') as weekend
    FROM membertbl M
    LEFT JOIN memberweekstatstbl MS on M.id = MS.memberid
    LEFT JOIN gameweekstbl GW on MS.week = GW.week AND MS.season = GW.season
    WHERE  M.status = 'active'
    AND MS.season = $season AND MS.week = $week";

    if ($showexperts == "false")
    {
        $sql = $sql . " AND M.role != 'expert' ";
    }
    
    $sql = $sql . " ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";
}
else
{
    $sql = "SELECT DISTINCT
    M.screenname as screenname,
    M.id as memberid,
    M.membername as membername,
    M.role as memberrole,
    M.avatar as memberavatar,   
    MS.losses as losses,
    MS.wins as wins,
    MS.ties as ties,
    MS.week as week,
    DATE_FORMAT(GW.weekstart,'%b %D') as weekstart,
    DATE_FORMAT(GW.weekend,'%b %D') as weekend
    FROM membergroupmembertbl MG
    LEFT JOIN membertbl M ON M.id = MG.memberid
    LEFT JOIN memberweekstatstbl MS on M.id = MS.memberid
    LEFT JOIN gameweekstbl GW on MS.week = GW.week AND MS.season = GW.season
    WHERE M.status = 'active' AND MG.membergroupid = $membergroupid
    AND MS.season = $season AND MS.week = $week
    ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";
}

// echo $sql;
// die();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get member weekly stat information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$memberweekstats = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $memberweekstats[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($memberweekstats));

?>
