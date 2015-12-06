<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$msg = "";

// set variables
$enterdate = $datetime;

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	$msg = "No season passed - builteamstats terminated";
	exit($msg);
}

$msg = "Input variables: Season:$season<br />";

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
$teamid = 0;

$games = 0;
$wins = 0;
$losses = 0;
$ties = 0;
$percentage = 0;

$homegames = 0;
$homewins = 0;
$homelosses = 0;
$hometies = 0;
$homepercentage = 0;

$awaygames = 0;
$awaywins = 0;
$awaylosses = 0;
$awayties = 0;
$awaypercentage = 0;

$confgames = 0;
$confwins = 0;
$conflosses = 0;
$confties = 0;
$confpercentage = 0;

$divgames = 0;
$divwins = 0;
$divlosses = 0;
$divties = 0;
$divpercentage = 0;


//
// display variables
//
$teamcount = 0;

while($row = mysql_fetch_assoc($sql_result_prime)) {

	// count teams
	$teamcount = $teamcount + 1;

	$teamid = $row['id'];

	//
	// start sql to get wins
	//
	$sql = "SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	(
		(hometeamid = $teamid and hometeamscore > awayteamscore)
    	OR 
		(awayteamid = $teamid and awayteamscore > hometeamscore)
	)
    
    UNION ALL
    
    SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = $teamid and hometeamscore > awayteamscore )

	UNION ALL
    
    SELECT count(*) as wins
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = $teamid and awayteamscore > hometeamscore )

	UNION ALL

	SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore > hometeamscore)
	)
	AND
	(th.conference = ta.conference)

	UNION ALL

	SELECT count(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore > awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore > hometeamscore)
	)
	AND
	(th.conference = ta.conference)
	AND
	(th.division = ta.division)";

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

	//
	// union 5 selects to get total, home, away, conf and div wins
	//
	$idx = 0;
	$winsArray = array();
	while($row = mysql_fetch_assoc($sql_result)) {
		$winsArray[$idx] = $row['wins'];
		$idx = $idx + 1;
	}

	$wins = $winsArray[0];
	$homewins = $winsArray[1];
	$awaywins = $winsArray[2];
	$confwins = $winsArray[3];
	$divwins = $winsArray[4];	

	//
	// start sql to get losses
	//
	$sql = "SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	(
		(hometeamid = $teamid and hometeamscore < awayteamscore)
    	OR 
		(awayteamid = $teamid and awayteamscore < hometeamscore)
	)
    
    UNION ALL
    
    SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = $teamid and hometeamscore < awayteamscore )

	UNION ALL
    
    SELECT count(*) as losses
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = $teamid and awayteamscore < hometeamscore )

	UNION ALL

	SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore < hometeamscore)
	)
	AND
	(th.conference = ta.conference)

	UNION ALL

	SELECT count(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore < awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore < hometeamscore)
	)
	AND
	(th.conference = ta.conference)
	AND
	(th.division = ta.division)";

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

	//
	// union 5 selects to get total, home, away, conf and div losses
	//
	$idx = 0;
	$lossesArray = array();
	while($row = mysql_fetch_assoc($sql_result)) {
		$lossesArray[$idx] = $row['losses'];
		$idx = $idx + 1;
	}

	$losses = $lossesArray[0];
	$homelosses = $lossesArray[1];
	$awaylosses = $lossesArray[2];
	$conflosses = $lossesArray[3];
	$divlosses = $lossesArray[4];


	//
	// start sql to get ties
	//
	$sql = "SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	(
		(hometeamid = $teamid and hometeamscore = awayteamscore)
    	OR 
		(awayteamid = $teamid and awayteamscore = hometeamscore)
	)
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)
    
    UNION ALL
    
    SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = $teamid and hometeamscore = awayteamscore )
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)

	UNION ALL
    
    SELECT count(*) as ties
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = $teamid and awayteamscore = hometeamscore )
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)

	UNION ALL

	SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore = awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore = hometeamscore)
	)
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)
	AND
	(th.conference = ta.conference)

	UNION ALL

	SELECT count(*) as ties
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( 	(hometeamid = $teamid and hometeamscore = awayteamscore)  
		OR 
		(awayteamid = $teamid and awayteamscore = hometeamscore)
	)
	AND
	(
		(hometeamscore != 0 AND awayteamscore != 0)
	)
	AND
	(th.conference = ta.conference)
	AND
	(th.division = ta.division)";

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

	//
	// union 5 selects to get total, home, away, conf and div ties
	//
	$idx = 0;
	$tiesArray = array();
	while($row = mysql_fetch_assoc($sql_result)) {
		$tiesArray[$idx] = $row['ties'];
		$idx = $idx + 1;
	}

	$ties = $tiesArray[0];
	$hometies = $tiesArray[1];
	$awayties = $tiesArray[2];
	$confties = $tiesArray[3];
	$divties = $tiesArray[4];


	//
	// calculate games from totals played 
	//
	$games = $wins + $losses + $ties;
	$homegames = $homewins + $homelosses + $hometies;
	$awaygames = $awaywins + $awaylosses + $awayties;
	$confgames = $confwins + $conflosses + $confties;
	$divgames = $divwins + $divlosses + $divties;

	//
	// calculate percentage
	//
	$p = $wins / $games;
	$percent = round($p, 3);

	$p = $homewins / $homegames;
	$homepercent = round($p, 3);

	$p = $awaywins / $awaygames;
	$awaypercent = round($p, 3);

	$p = $confwins / $confgames;
	$confpercent = round($p, 3);

	$p = $divwins / $divgames;
	$divpercent = round($p, 3);

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * from teamstatstbl where teamid = $teamid AND season = ".$season;

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
			SET totalgames = $games, wins = $wins, losses = $losses, ties = $ties, percent = $percent, 
			hometotalgames = $homegames, homewins = $homewins, homelosses = $homelosses, hometies = $hometies, homepercent = $homepercent,
			awaytotalgames = $awaygames, awaywins = $awaywins, awaylosses = $awaylosses, awayties = $awayties, awaypercent = $awaypercent,
			conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
			divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
			season = $season, enterdate = '$enterdateTS' 
			WHERE teamid = $teamid AND season = ".$season;;

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
			(totalgames, wins, losses, ties, percent, 
			hometotalgames, homewins, homelosses, hometies, homepercent,
			awaytotalgames, awaywins, awaylosses, awayties, awaypercent,
			conftotalgames, confwins, conflosses, confties, confpercent,
			divtotalgames, divwins, divlosses, divties, divpercent,
			season, enterdate, teamid) 
			VALUES ($games, $wins, $losses, $ties, $percent, 
				$homegames, $homewins, $homelosses, $hometies, $homepercent,
				$awaygames, $awaywins, $awaylosses, $awayties, $awaypercent,
				$confgames, $confwins, $conflosses, $confties, $confpercent,
				$divgames, $divwins, $divlosses, $divties, $divpercent,
				$season, '$enterdateTS', $teamid)";

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

$msg = $msg . "Totals Teams:$teamcount.";
//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
