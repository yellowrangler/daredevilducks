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
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Build Team Stats tables started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update team stats.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update team stats.");

	$rv = "";
	exit($rv);
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
    $msgtext = "System Error: $sqlerr";
}

//
// loop through all teams
//
$games = 0;
$win = 0;
$losses = 0;
$ties = 0;
$percentage = 0;
$seasonyear = 2014;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// print_r($row['id']);

	$sql = "SELECT count(*) as games
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id
	left join teamstbl ta on g.awayteamid = ta.id
	where hometeamid = ".$row['id']." OR awayteamid = ".$row['id'];

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count all.");
	    $log->writeLog("SQL: $sql");

	    $status = -200;
	    $msgtext = "System Error: $sqlerr";
	}	

	$r = mysql_fetch_assoc($sql_result);
	$games = $r['games'];

	$sql = "SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where (hometeamid = ".$row['id']." and hometeamscore > awayteamscore)
    OR 
    (awayteamid = ".$row['id']." and awayteamscore > hometeamscore)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count wins.");
	    $log->writeLog("SQL: $sql");

	    $status = -210;
	    $msgtext = "System Error: $sqlerr";
	}	

	$r = mysql_fetch_assoc($sql_result);
	$wins = $r['wins'];

	$sql = "SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where (hometeamid = ".$row['id']." and hometeamscore < awayteamscore)
    OR 
    (awayteamid = ".$row['id']." and awayteamscore < hometeamscore)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count losses.");
	    $log->writeLog("SQL: $sql");

	    $status = -220;
	    $msgtext = "System Error: $sqlerr";
	}	

	$r = mysql_fetch_assoc($sql_result);
	$losses = $r['losses'];

	$sql = "SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where (hometeamid = ".$row['id']." and hometeamscore = awayteamscore)
    OR 
    (awayteamid = ".$row['id']." and awayteamscore = hometeamscore)";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count ties.");
	    $log->writeLog("SQL: $sql");

	    $status = -230;
	    $msgtext = "System Error: $sqlerr";
	}	

	$r = mysql_fetch_assoc($sql_result);
	$ties = $r['ties'];

	//
	// calculate percentage
	//
	$p = $wins / $games;
	$percent = round($p, 2);

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * from teamstatstbl where teamid = ".$row['id'];

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update team stats - count team id in stats table.");
	    $log->writeLog("SQL: $sql");

	    $status = -240;
	    $msgtext = "System Error: $sqlerr";
	}	

	$count = mysql_num_rows($sql_result);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE teamstatstbl 
			SET totalgames = $games, wins = $wins, losses = $losses, ties = $ties, percent = $percent, seasonyear = $seasonyear, enterdate = '$enterdateTS' 
			WHERE teamid = ".$row['id'];

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update team stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -250;
		    $msgtext = "System Error: $sqlerr";
		}	

	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO teamstatstbl 
			(totalgames, wins, losses, ties, percent, seasonyear, enterdate, teamid) 
			VALUES ($games, $wins, $losses, $ties, $percent, $seasonyear, '$enterdateTS', ".$row['id'].")";

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert team stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msgtext = "System Error: $sqlerr";
		}

	}

} // end of looping through teams


//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//


?>
