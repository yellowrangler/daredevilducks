<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

//debug
// $season = 2015;
// $gametypeid = 2;
$msg = "";

if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	$msg = $msg . "No season passed - Buildmemberstats terminated";
	exit($msg);
}

if (isset($_POST["gametypeid"]))
{
	$gametypeid = $_POST["gametypeid"];
}
else
{
	$msg = $msg . "No gametypeid passed - Buildmemberstats terminated";
	exit($msg);
}

$msg = "Input variables: Season:$season gametypeid:$gametypeid<br />";

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update member stats.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to update member stats.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update member stats.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to update member stats.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//
// display variables
//
$membercount = 0;
$totalgames = 0;
$currentweek = 0;

//---------------------------------------------------------------
// Get list of all members 
//---------------------------------------------------------------
$sql = "SELECT * FROM membertbl";
$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member stats.<br /> SQL: $sql";
	exit($msg);
}

//---------------------------------------------------------------
// Get current week 
//---------------------------------------------------------------
$sql = "SELECT season, week 
FROM gameweekstbl 
WHERE weekend >= now() AND season = $season
ORDER BY season, week ASC LIMIT 1";

$sql_result_week = @mysql_query($sql, $dbConn);
if (!$sql_result_week)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get current season week for update member stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get current week
// 
$currentweek = 0;
$count = mysql_num_rows($sql_result_week);
if ($count > 0)
{
	$r = mysql_fetch_assoc($sql_result_week);
	$currentweek = $r['week'];
}
else
{
	//
	// if there is no current week returned it is because it is behind us
	// so we go there and get it
	//
	$sql = "SELECT season, week 
	FROM gameweekstbl 
	WHERE weekend < now() AND season = $season
	ORDER BY season, week DESC LIMIT 1";

	$sql_result_week = @mysql_query($sql, $dbConn);
	if (!$sql_result_week)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select2 to db Unable to get current season week for update member stats.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msgtext = "System Error: $sqlerr";
	}

	$count = mysql_num_rows($sql_result_week);
	if ($count > 0)
	{
		$r = mysql_fetch_assoc($sql_result_week);
		$currentweek = $r['week'];

		$currentweek = $currentweek + 1;
	}
	else
	{
		$msg = $msg . "No current week! currentweek:$currentweek";
		exit($msg);
	}  
}

//---------------------------------------------------------------
// Get games played to date
//---------------------------------------------------------------
$sql = "SELECT count(season) as gamesplayed
FROM gamestbl 
WHERE season = $season and week  < $currentweek";

$sql_result_games = @mysql_query($sql, $dbConn);
if (!$sql_result_games)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member stats - get games for up to week.");
    $log->writeLog("SQL: $sql");

    $status = -200;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member stats - get games for up to week.<br /> SQL: $sql";
	exit($msg);
}	

//
// get total games played to date
// 
$totalgames = 0;
$count = mysql_num_rows($sql_result_games);
if ($count > 0)
{
	$r = mysql_fetch_assoc($sql_result_games);
	$totalgames = $r['gamesplayed'];
}
else
{
    $msg = $msg . "No games played to date! currentweek:$currentweek totalgames:$totalgames";
	exit($msg);
}

//
// loop through all members
//
while($row = mysql_fetch_assoc($sql_result_prime)) {

	//
	// count members
	//
	$membercount = $membercount + 1;

	$memberid = $row['id'];

	$sql = "SELECT
	  G.season as season,
	  G.week as week,
	  G.id as gameid,
	  G.gamenbr as gamenbr,
	  G.gamedate as gamedate,
	  G.gametime as gametime,
	  G.gameday as gameday,
	  G.gametypeid as gametypeid,
	  G.hometeamid as hometeamid,
	  G.hometeamscore as hometeamscore,
	  G.awayteamid as awayteamid,
  	  G.awayteamscore as awayteamscore,
	  GT.gametype as gametypeid,
	  TH.name as hometeamname,
	  TA.name as awayteamname,	  
	  MP.teamid as teamselected
	FROM gamestbl G 
	LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
	LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
	LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
	LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) AND MP.week = G.week AND MP.season = G.season AND MP.memberid ='$memberid'
	WHERE G.season = '$season'
	AND G.gametypeid ='$gametypeid'
	AND MP.memberid = $memberid 
    AND NOT (G.hometeamscore = G.awayteamscore AND G.hometeamscore = 0 AND G.awayteamscore = 0)
	ORDER BY G.gamedatetime";

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member stats - count all.");
	    $log->writeLog("SQL: $sql");

	    $status = -200;
	    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member stats - count all.<br /> SQL: $sql";
		exit($msg);
	}	

	//
	// We now have all the games for the season for the member. 
	// Lets loop through and do the math.
	//
	$wins = 0;
	$losses = 0;
	$ties = 0;

	$playerpickedgames = 0;
	$playerpickedpercent = 0;
	$totalgamespercent = 0;

	while ($r = mysql_fetch_assoc($sql_result))
	{
		//
		// set up variablels
		//
		$teamselected = $r['teamselected'];
		$hometeamid = $r['hometeamid'];
		$awayteamid = $r['awayteamid'];
		$hometeamscore = $r['hometeamscore'];
		$awayteamscore = $r['awayteamscore'];	

		// debug
		$awayteam = $r['awayteamname'];	
		$hometeam = $r['hometeamname'];	

		//
		// determine win/loss/ties
		//
		switch ($teamselected) {
			case $hometeamid:
				if ($hometeamscore > $awayteamscore)
				{
					$wins = $wins + 1;
				}
				elseif ($hometeamscore < $awayteamscore)
				{
					$losses = $losses + 1;
				}
				else 
				{
					$ties = $ties + 1;
				}
				break;

			case $awayteamid:
				if ($awayteamscore > $hometeamscore)
				{
					$wins = $wins + 1;
				}
				elseif ($awayteamscore < $hometeamscore)
				{
					$losses = $losses + 1;
				}
				else
				{
					$ties = $ties + 1;
				}
				break;	
			
			default:
				$msg = $msg . "Switch default seleted:$teamselected hometeamid:$hometeamid awayteamid:$awayteamid";
				exit($msg);
				break;
		}  // end of switch
		
	}  // end of while member game
		
	//
	// player picked games is done outside the loop because some people join later
	//
	$playerpickedgames = $wins + $losses + $ties;

	//
	// calculate percentage for players picked
	//
	$tiesadjust = $ties * 0.5;
	$p = ($wins + $tiesadjust) / $playerpickedgames;
	$playerpickedpercent = round($p, 3);

	//
	// calculate percentage
	//
	$tiesadjust = $ties * 0.5;
	$p = ($wins + $tiesadjust) / $totalgames;
	$totalgamespercent = round($p, 3);

	// debug
	// $msg = $msg .  "<br/>memberid:$memberid</br>wins:$wins losses:$losses ties:$ties total:$totalgames totalgamespercent:$totalgamespercent</br>playerpickedgames:$playerpickedgames playerpickedpercent:$playerpickedpercent</br>";	
	
	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * from memberstatstbl where memberid = $memberid AND season = $season";

	$sql_result_check = @mysql_query($sql, $dbConn);
	if (!$sql_result_check)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member stats - count team id in stats table.");
	    $log->writeLog("SQL: $sql");

	    $status = -240;
	    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member stats - count team id in stats table.<br />SQL: $sql";
		exit($msg);
	}	

	$count = mysql_num_rows($sql_result_check);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE memberstatstbl 
			SET totalgames = $totalgames, playerpickedgames = $playerpickedgames,
			wins = $wins, losses = $losses, ties = $ties, 
			totalgamespercent = $totalgamespercent, playerpickedpercent = $playerpickedpercent,
			season = $season, gametypeid = $gametypeid,  
			enterdate = '$enterdateTS' 
			WHERE memberid = $memberid AND season = $season";

		// debug
		// $msg = $msg .  "<br/> sql update:$sql<br/> ";

		$sql_result_update = @mysql_query($sql, $dbConn);
		if (!$sql_result_update)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update member stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -250;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member stats.<br />SQL: $sql";
			exit($msg);
		}	
	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO memberstatstbl 
			(totalgames, playerpickedgames, wins, losses, ties, totalgamespercent, playerpickedpercent, season, enterdate, gametypeid, memberid) 
			VALUES ($totalgames, $playerpickedgames, $wins, $losses, $ties, $totalgamespercent, $playerpickedpercent, $season, '$enterdateTS', $gametypeid, $memberid)";
			
		// debug
		// $msg = $msg .  "sql insert:$sql<br/>";

		$sql_result_insert = @mysql_query($sql, $dbConn);
		if (!$sql_result_insert)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert team stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to insert member stats.<br />SQL: $sql";
			exit($msg);
		}
	}

} // end of looping through member

$msg = $msg . "Totals Members:$membercount. <br /> Totals Games:$totalgames. <br />Current week:$currentweek.";
//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
