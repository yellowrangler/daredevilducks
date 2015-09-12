<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

$msg = "Buildteamstats Started <br />";

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	$msg = "No season passed - builteamstats terminated";
	exit($msg);
}

$msg = $msg . "Input variables: Season:$season<br />";

//------------------------------------------------------
// db admin user info
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
	$msg = $msg .  "DB error: $dberr - Error mysql connect. Unable to update team stats.";
	$log->writeLog($msg);

	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$msg = $msg .  "DB error: $dberr - Error selecting db Unable to update team stats.";
	$log->writeLog($msg);

	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get list of all nfl teams
//---------------------------------------------------------------
$sql = "SELECT * FROM teamstbl ORDER BY conference ASC, division ASC, teamorder ASC";
$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats.<br /> SQL: $sql";

    exit($msg);
}

//
// loop through all teams
//
$games = 0;
$win = 0;
$losses = 0;
$ties = 0;
$percentage = 0;

//
// display variables
//
$teamcount = 0;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count teams
	$teamcount = $teamcount + 1;

	$sql = "SELECT count(*) as gamesToPlay
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id
	left join teamstbl ta on g.awayteamid = ta.id
	where
	season = ".$season."
	AND 
	(
		hometeamid = ".$row['id']." OR awayteamid = ".$row['id']." 
	)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count all.");
	    $log->writeLog("SQL: $sql");

	    $status = -200;
        $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats - count all.<br /> SQL: $sql";

	    exit($msg);
	}	

	$r = mysql_fetch_assoc($sql_result);
	$gamesToPlay = $r['gamesToPlay'];

	$sql = "SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = ".$season."
	AND 
	(
		(hometeamid = ".$row['id']." and hometeamscore > awayteamscore)
    	OR 
		(awayteamid = ".$row['id']." and awayteamscore > hometeamscore)
	)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count wins.");
	    $log->writeLog("SQL: $sql");

	    $status = -210;
	    $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats - count wins.<br /> SQL: $sql";

	    exit($msg);
	}	

	$r = mysql_fetch_assoc($sql_result);
	$wins = $r['wins'];

	$sql = "SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where 
	season = ".$season." 
	AND
	(
		(hometeamid = ".$row['id']." AND hometeamscore < awayteamscore)
    	OR 
    	(awayteamid = ".$row['id']." AND awayteamscore < hometeamscore)
	)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count losses.");
	    $log->writeLog("SQL: $sql");

	    $status = -220;
	    $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats - count losses.<br /> SQL: $sql";

	    exit($msg);
	}	

	$r = mysql_fetch_assoc($sql_result);
	$losses = $r['losses'];

	$sql = "SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where 
	season = ".$season."
	AND
	(
		(hometeamid = ".$row['id']." AND hometeamscore = awayteamscore)
    	OR 
    	(awayteamid = ".$row['id']." AND awayteamscore = hometeamscore)
	)
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)";


	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count ties.");
	    $log->writeLog("SQL: $sql");

	    $status = -230;
	    $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats - count ties.<br /> SQL: $sql";

	    exit($msg);
	}	

	$r = mysql_fetch_assoc($sql_result);
	$ties = $r['ties'];

	//
	// calculate games from totals played
	//
	$games = $wins + $losses + $ties;

	//
	// calculate percentage
	//
	$p = $wins / $games;
	$percent = round($p, 3);

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * from teamstatstbl where teamid = ".$row['id']." AND season = ".$season;

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count team id in stats table.");
	    $log->writeLog("SQL: $sql");

	    $status = -240;
	    $msg = $msg . "System Error: $sqlerr - Error doing select to db Unable to update team stats - count team id in stats table.<br /> SQL: $sql";

	    exit($msg);
	}	

	$count = mysql_num_rows($sql_result);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE teamstatstbl 
			SET totalgames = $games, wins = $wins, losses = $losses, ties = $ties, percent = $percent, season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = ".$row['id']." AND season = ".$season;;

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update team stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -250;
		    $msg = $msg . "System Error: $sqlerr - Error doing update to db Unable to update team stats.<br /> SQL: $sql";

		    exit($msg);
		}	

	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO teamstatstbl 
			(totalgames, wins, losses, ties, percent, season, enterdate, teamid) 
			VALUES ($games, $wins, $losses, $ties, $percent, $season, '$enterdateTS', ".$row['id'].")";

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert team stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msg = $msg . "System Error: $sqlerr - Error doing update to db Unable to insert team stats.<br /> SQL: $sql";

		    exit($msg);
		}

	}

} // end of looping through teams

$msg = $msg . "Totals Teams:$teamcount. <br /> Buildteamstats Finished.";
//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
