<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;
$msg = "";

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$msg = $msg . "No season passed - getmemberpicklist terminated";
		exit($msg);
	}
}

if (isset($_POST["week"]))
{
	$week = $_POST["week"];
}
else
{
	if (isset($_GET["week"]))
	{
		$week = $_GET["week"];
	}
	else
	{
		$msg = $msg . "No week passed - getmemberpicklist terminated";
		exit($msg);
	}
}

$msg = "Input variables: Season:$season week:$week<br />";

//------------------------------------------------------
// db admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

// $season = 2015;
// week = 17;

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn)
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get member pick list.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to get member pick list.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn))
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get member pick list.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to get member pick list.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get list of all member picks
//---------------------------------------------------------------
$sql = "SELECT memberid, QM.membername as membername, email, phonenumber, screenname, picks
FROM
(
	SELECT memberid, membername, COUNT(*) as picks
	FROM memberpickstbl MP
	LEFT JOIN membertbl M on MP.memberid = M.id
	WHERE season = $season and week = $week
	GROUP BY membername, memberid

	UNION

	SELECT  DISTINCT id as memberid, membername, CAST('0' AS INT) as picks
	FROM membertbl
	WHERE id NOT IN
	(
		SELECT  memberid as id
		FROM memberpickstbl MP
		LEFT JOIN membertbl M on MP.memberid = M.id
		WHERE season = $season and week = $week
	)
	AND status = 'active'
) AS QM
LEFT JOIN membertbl M on QM.memberid = M.id";

$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get member pick list.");
    $log->writeLog("SQL: $sql");

    $status = -110;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to get member pick list.<br /> SQL: $sql";
	exit($msg);
}

//
// set variables
//
$totalmembers = 0;
$memberspicked = 0;
$membersdidnotpick = 0;

$memberid = 0;
$membername = "";
$email = "";
$phonenumber = "";
$screenname = "";
$picks = 0;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count active members
	$totalmembers = $totalmembers + 1;

	// get data
	$memberid = $row[memberid];
	$membername = $row[membername];
	$email = $row[email];
	$phonenumber = $row[phonenumber];
	$screenname = $row[screenname];
	$picks = $row[picks];

	// check picks
	if ($picks == 0)
	{
			$membersdidnotpick = $membersdidnotpick + 1;
	}
	else
	{
			$memberspicked = $memberspicked + 1;
	}

	$msg = $msg . "Member Name: " . str_pad($membername, 25) . " Picks: " . str_pad($picks, 3) . " <br />";
}

$msg = $msg . "<br />Totals members:$totalmembers Members who picked:$memberspicked Members who did not pick:$membersdidnotpick.";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
