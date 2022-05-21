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

$msg = "Input variables: Season:$season week:$week<br /><br />";

//
// db connect
//
$modulecontent = "Unable to get  Unable to get member pick list.";
include_once ('mysqlconnect.php');

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

//
// sql query
//
$function = "select";
include('mysqlquery.php');
$sql_result_prime = $sql_result;

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

$pickStrLength = 12 / 2;
$membernameStrLength = 40 / 2;
$picksStr = "Picks";
$membernameStr = "Member Name";
$msg = $msg . "&nbsp;" . str_replace('~', '&nbsp;', str_pad($picksStr, $pickStrLength, '~', STR_PAD_BOTH)) . str_replace('~', '&nbsp;', str_pad($membernameStr, $membernameStrLength, '~', STR_PAD_BOTH)) . "<br /><br />";

while($row = mysqli_fetch_assoc($sql_result_prime)) {

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

	$padLength = 12 - strlen($picks);
	$msg = $msg . "&nbsp;&nbsp;" . str_replace('~', '&nbsp;', str_pad($picks, $padLength, '~')) . $membername . "<br />";
}

$msg = $msg . "<br />Totals members: $totalmembers <br />Members who picked: $memberspicked <br />Members who did not pick: $membersdidnotpick.<br />";

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);

?>