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
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$msg = $msg . "No season passed - Buildmemberweekstats terminated";
		exit($msg);

	}
}

if (isset($_POST["weeksinregularseason"]))
{
	$weeksinregularseason = $_POST["weeksinregularseason"];
}
else
{
	if (isset($_GET["weeksinregularseason"]))
	{
		$weeksinregularseason = $_GET["weeksinregularseason"];
	}
	else
	{
		$msg = $msg . "No weeksinregularseason passed - Buildmemberweekstats terminated";
		exit($msg);

	}
}

if (isset($_POST["weeksinplayoffseason"]))
{
	$weeksinplayoffseason = $_POST["weeksinplayoffseason"];
}
else
{
	if (isset($_GET["weeksinplayoffseason"]))
	{
		$weeksinplayoffseason = $_GET["weeksinplayoffseason"];
	}
	else
	{
		$msg = $msg . "No weeksinplayoffseason passed - Buildmemberweekstats terminated";
		exit($msg);

	}
}

$msg = "Input variables: Season:$season <br />";

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update member week stats.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to update member week stats.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update member week stats.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to update member week stats.";
	exit($msg);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));	

//
// display variables
//
$membercount = 0;
$totalgames = 0;
$regularseasontotalgames = 0;
$postseasontotalgames = 0;

//---------------------------------------------------------------
// Get list of all dare devil ducks members
//---------------------------------------------------------------
$sql = "SELECT * FROM membertbl";
$sql_result_prime = @mysql_query($sql, $dbConn);
if (!$sql_result_prime)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member week stats.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member week stats.<br /> SQL: $sql";
	exit($msg);
}

//---------------------------------------------------------------
// get total weeks to date
//---------------------------------------------------------------
$sql = "SELECT MAX(week) as weeks
FROM gameweekstbl where season = $season
AND weekend <= '$enterdateTS'";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member week stats - total weeks.");
    $log->writeLog("SQL: $sql");

    $status = -200;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member week stats - total weeks.<br /> SQL: $sql";
	exit($msg);
}	

//
// get total weeks
// 
$r = mysql_fetch_assoc($sql_result);
$weekstotal = $r[weeks];

//
// loop through all members
//
while($row = mysql_fetch_assoc($sql_result_prime)) 
{

	// count members
	$membercount = $membercount + 1;

	//
	// reset values
	//
	$rolledupwins = 0;
	$rolleduplosses = 0;
	$rolledupties = 0;
	$rolleduppercentage = 0;

	$memberid = $row['id'];

	//
	// for every week get totals
	//
	for ($week = 1; $week <= $weekstotal; $week++)
	{
		//
		// reset values - comment this out to get cumulative rolled up results
		//
		$wins = 0;
		$losses = 0;
		$ties = 0;

		$playerpickedgames = 0;
		$playerpickedpercent = 0;
		$totalgamespercent = 0;

		$totalgames = 0;


		$gametypeid = 0;

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
		  GT.gametype as gametype,
		  TH.name as hometeamname,
		  TA.name as awayteamname,	  
		  MP.teamid as teamselected
		FROM gamestbl G 
		LEFT JOIN teamstbl TH ON G.hometeamid = TH.id
		LEFT JOIN teamstbl TA ON G.awayteamid = TA.id	
		LEFT JOIN gametypetbl GT ON GT.id = G.gametypeid
		LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) AND MP.week = G.week AND MP.season = G.season AND MP.memberid ='$memberid'
		WHERE (G.season = '$season' AND G.week = $week)  
		AND MP.memberid = $memberid 
	    AND NOT (G.hometeamscore = G.awayteamscore AND G.hometeamscore = 0 AND G.awayteamscore = 0)
		ORDER BY G.gamedatetime";

		$sql_result_week = @mysql_query($sql, $dbConn);
		if (!$sql_result_week)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member week stats - count all.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member week stats - count all.<br /> SQL: $sql";
			exit($msg);
		}	

		//
		// get games in week
		//
		$sql = "SELECT 
		SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END) AS regularseasontotalgames,
		SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END) AS postseasontotalgames,
		COUNT(gamenbr) as totalgames
		FROM gamestbl  		
		WHERE season = $season and week = $week";

		$sql_result_games = @mysql_query($sql, $dbConn);
		if (!$sql_result_games)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member week stats - get games for week.");
		    $log->writeLog("SQL: $sql");

		    $status = -200;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member week stats - get games for week.<br /> SQL: $sql";
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
			$totalgames = $r['totalgames'];
		}
		else
		{
		    $msg = $msg . "No games played this week! week:$week totalgames:$totalgames";
			exit($msg);
		}

		//
		// We now have all the games for the season week for the member. 
		// Lets loop through and do the math.
		//
		while ($r = mysql_fetch_assoc($sql_result_week))
		{
			//
			// set up variablels
			//
			$teamselected = $r['teamselected'];
			$hometeamid = $r['hometeamid'];
			$awayteamid = $r['awayteamid'];
			$hometeamscore = $r['hometeamscore'];
			$awayteamscore = $r['awayteamscore'];	
			$awayteam = $r['awayteamname'];	
			$hometeam = $r['hometeamname'];

			//
			// determine win/loss/ties
			//
			switch ($teamselected) 
			{
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

			// 
			// all games for week will have the same gametypeid
			//
			$gametypeid = $r['gametypeid'];
			
		}  // end of while member games for week

		//
		// totals games is done outside the loop because some people join later
		//
		$playerpickedgames = $wins + $losses + $ties;

		//
		// calculate percentage for players picked
		//
		if ($playerpickedgames > 0)
		{
			$tiesadjust = $ties * 0.5;
			$p = ($wins + $tiesadjust) / $playerpickedgames;
			$playerpickedpercent = round($p, 3);
		}

		//
		// calculate percentage
		//
		if ($totalgames > 0)
		{
			$tiesadjust = $ties * 0.5;
			$p = ($wins + $tiesadjust) / $totalgames;
			$totalgamespercent = round($p, 3);
		}

		if ($week < $weeksinregularseason)
		{
			$gametypeid = 2;
		}
		elseif ($week > $weeksinregularseason)
		{
			$gametypeid = 3;
		}

		//--------------------------------------------------------------------------------------- 
		//
		// if data is there update otherwise insert
		//
		//---------------------------------------------------------------------------------------

		//
		// season week games 
		//
		$sql = "SELECT * from memberweekstatstbl 
		where memberid = $memberid AND season = $season 
		AND week = $week";

		$sql_result_check_week = @mysql_query($sql, $dbConn);
		if (!$sql_result_check_week)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to update member week stats - count team id in stats table.");
		    $log->writeLog("SQL: $sql");

		    $status = -240;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update member wek stats - count team id in stats table.<br />SQL: $sql";
			exit($msg);
		}	

		$count = mysql_num_rows($sql_result_check_week);

		if ($count > 0)
		{
			// 
			// do update
			// 
			$sql = "UPDATE memberweekstatstbl 
				SET totalgames = $totalgames, playerpickedgames = $playerpickedgames, 
				wins = $wins, losses = $losses, ties = $ties, 
				totalgamespercent = $totalgamespercent, playerpickedpercent = $playerpickedpercent, 
				season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
				WHERE memberid = $memberid 
				AND season = $season 
				AND week = $week";
		}
		else
		{
			// 
			// do insert
			// 
			$sql = "INSERT INTO memberweekstatstbl 
				(totalgames, playerpickedgames, wins, losses, ties, totalgamespercent, playerpickedpercent, season, enterdate, gametypeid, memberid) 
				VALUES ($totalgames, $playerpickedgames, $wins, $losses, $ties, $totalgamespercent, $playerpickedpercent, $season, '$enterdateTS', $gametypeid, $memberid)";
		}  

		$sql_result_insert_update = @mysql_query($sql, $dbConn);
		if (!$sql_result_insert_update)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert or update member week stats.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to insert or update member week stats.<br />SQL: $sql";
			exit($msg);
		}
	} // end of outer week loop

	//
	// loop through rest of weeks - uncomment to get cumulative rolled up results
	//
	// $start = $week;
	// for ($week = $start; $week <= $gamesInRegularSeason; $week++)
	// {
	// 	$sql = "UPDATE memberweekstatstbl 
	// 		SET totalgames = $totalgames, wins = $wins, losses = $losses, ties = $ties, percent = $percent, season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
	// 		WHERE memberid = $memberid AND season = $season AND week = $week";

	// 	$sql_result_update = @mysql_query($sql, $dbConn);
	// 	if (!$sql_result_update)
	// 	{
	// 	    $log = new ErrorLog("logs/");
	// 	    $sqlerr = mysql_error();
	// 	    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update member week stats.");
	// 	    $log->writeLog("SQL: $sql");

	// 	    $status = -250;
	// 	    $msgtext = "System Error: $sqlerr";
	// 	}

	// } // end of for week loop 

} // end of looping through members

$msg = $msg . "Totals Members:$membercount. Weeks:$weekstotal";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>