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

//
// get post variables passed in
//
if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("System error: No season passed - getnflteamstats terminated");

	$rv = "";
	exit($rv);
}

if (isset($_POST["gametypeid"]))
{
	$gametypeid = $_POST["gametypeid"];
}
else
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("System error: No gametypeid passed - getnflteamstats terminated");

	$rv = "";
	exit($rv);
}

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl team statistical information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl team statistical information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get nfl team statistical information
//---------------------------------------------------------------
$sql = "SELECT DISTINCT 
tt.id as teamid, 
location as teamlocation, 
name as teamname, 
tss.postseasonstatus as postseasonstatus,
league, 
conference, 
division,
teamiconname,
teamorder,
teamurl,
COALESCE(percent,0) AS percent,

COALESCE(wins,0) AS teamwins,
COALESCE(losses,0) AS teamlosses,
COALESCE(ties,0) AS teamties,
COALESCE(totalgames,0) AS totalgames,
COALESCE(percent,0) AS teampercent,

COALESCE(homewins,0) AS homewins,
COALESCE(homelosses,0) AS homelosses,
COALESCE(hometies,0) AS hometies,
COALESCE(hometotalgames,0) AS hometotalgames,
COALESCE(homepercent,0) AS homepercent,

COALESCE(awaywins,0) AS awaywins,
COALESCE(awaylosses,0) AS awaylosses,
COALESCE(awayties,0) AS awayties,
COALESCE(awaytotalgames,0) AS awaytotalgames,
COALESCE(awaypercent,0) AS awaypercent,

COALESCE(confwins,0) AS confwins,
COALESCE(conflosses,0) AS conflosses,
COALESCE(confties,0) AS confties,
COALESCE(conftotalgames,0) AS conftotalgames,
COALESCE(confpercent,0) AS confpercent,

CASE percent WHEN NULL THEN '0.0'
ELSE ROUND(CONCAT(percent * 100 , '%'),1) 
END AS percentdisplay,

CASE homepercent WHEN NULL THEN '0.0'
ELSE ROUND(CONCAT(homepercent * 100 , '%'),1) 
END AS homepercentdisplay,

CASE awaypercent WHEN NULL THEN '0.0'
ELSE ROUND(CONCAT(awaypercent * 100 , '%'),1) 
END AS awaypercentdisplay,

CASE confpercent WHEN NULL THEN '0.0'
ELSE ROUND(CONCAT(confpercent * 100 , '%'),1) 
END AS confpercentdisplay

FROM teamstbl tt
LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
LEFT JOIN teamseasontbl tss ON tt.id = tss.teamid AND tss.season = $season
WHERE ts.season = '$season' and ts.gametypeid = $gametypeid

UNION ALL

SELECT DISTINCT
	tt.id as teamid, 
	location as teamlocation, 
	name as teamname, 
	' ' as postseasonstatus,
	league, 
	conference, 
	division,
	teamiconname,
	teamorder,
	teamurl,
	'0' as percent,

	'0' as teamwins,
	'0' as teamlosses,
	'0' as teamties,
	'0' as teamtotalgames,
	'0' as teampercent,

	'0' as homewins, 
	'0' as homelosses, 
	'0' as hometies, 
	'0' as hometotalgames, 
	'0' as homepercent, 

	'0' as awaywins, 
	'0' as awaylosses, 
	'0' as awayties, 
	'0' as awaytotalgames, 
	'0' as awaypercent, 

	'0' as confwins, 
	'0' as conflosses, 
	'0' as confties, 
	'0' as conftotalgames, 
	'0' as confpercent, 

	'0.0' as percentdisplay,
	'0.0' as homepercentdisplay,
	'0.0' as awaypercentdisplay,
	'0.0' as confpercentdisplay
	FROM teamstbl tt
	LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
	LEFT JOIN teamseasontbl tss ON tt.id = tss.teamid AND tss.season = $season
	WHERE tt.id NOT IN (
	SELECT DISTINCT 
		tt.id as teamid
		FROM teamstbl tt
		LEFT JOIN teamstatstbl ts ON tt.id = ts.teamid
		LEFT JOIN teamseasontbl tss ON tt.id = tss.teamid AND tss.season = 2016
		WHERE ts.season = '2016' and ts.gametypeid = 2
	)

	ORDER BY conference ASC, division ASC, percent DESC";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl team statistical information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// Tarry added this 08/25/2016 if nothing returned the because begining of season
//
$rows = mysql_num_rows($sql_result);
// echo "rows = $rows";	
if ($rows == 0)
{
	//---------------------------------------------------------------
	// Get nfl team statistical information
	//---------------------------------------------------------------
	$sql = "SELECT tt.id as teamid, 
	location as teamlocation, 
	name as teamname, 
	' ' as postseasonstatus,
	league, 
	conference, 
	division,
	teamiconname,
	teamorder,
	teamurl,
	'0' as teamwins,
	'0' as teamlosses,
	'0' as teamties,
	'0' as teamtotalgames,
	'0' as wins,
	'0' as losses,
	'0' as ties,
	'0' as totalgames,
	'0' as percent,
	'0' as homewins, 
	'0' as homelosses, 
	'0' as hometies, 
	'0' as hometotalgames, 
	'0' as homepercent, 
	'0' as awaywins, 
	'0' as awaylosses, 
	'0' as awayties, 
	'0' as awaytotalgames, 
	'0' as awaypercent, 
	'0' as confwins, 
	'0' as conflosses, 
	'0' as confties, 
	'0' as conftotalgames, 
	'0' as confpercent, 
	'0.0' as percentdisplay,
	'0.0' as homepercentdisplay,
	'0.0' as awaypercentdisplay,
	'0.0' as confpercentdisplay
	FROM teamstbl tt
	ORDER BY conference ASC, division ASC";
	// print $sql;

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl team statistical start of year information.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msgtext = "System Error: $sqlerr";
	}

}
	

//
// fill the array
//
$teamstats = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $teamstats[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($teamstats));

?>
