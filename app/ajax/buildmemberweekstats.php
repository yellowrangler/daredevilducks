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

// debug
print $msg;

//
// db connect
//
$modulecontent = "Unable to update member week stats.";
include_once ('mysqlconnect.php');

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
$sql = "SELECT * FROM membertbl where status = 'active'";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to get member list.";
include ('mysqlquery.php');
$sql_result_members = $sql_result;

//---------------------------------------------------------------
// get total weeks to date
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS weeks
FROM gameweekstbl 
WHERE season = $season
AND weekstart <= now()";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to get max weeks list.";
include ('mysqlquery.php');
$sql_result_weeks = $sql_result;

//
// get total weeks
//
$r = mysqli_fetch_assoc($sql_result_weeks);
$weekstotal = $r[weeks];

// debug
// print "<br />weeksttotal $weekstotal";

// added 8/25/2016 if weeks is null
if ($weekstotal == null)
{
	$weekstotal = 0;
}

//
// loop through all members
//
while($row = mysqli_fetch_assoc($sql_result_members))
{

	// count members
	$membercount = $membercount + 1;
	// debug
	// print "<br /> top member loop membercount $membercount";

	//
	// reset values
	//
	$rolledupwins = 0;
	$rolleduplosses = 0;
	$rolledupties = 0;
	$rolleduppercentage = 0;

	$memberid = $row['id'];

	// debug
	// print "<br /> top member loop memberid $memberid";

	//
	// for every week get totals
	//
	for ($week = 1; $week <= $weekstotal; $week++)
	{
		// debug
		// print "<br /> top week loop week $week";

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
		LEFT JOIN memberpickstbl MP ON (MP.teamid = G.hometeamid OR MP.teamid = G.awayteamid) 
		AND MP.week = G.week 
		AND MP.season = G.season 
		AND MP.memberid ='$memberid'
		WHERE (G.season = '$season' AND G.week = $week)
		AND MP.memberid = $memberid
	    AND NOT (G.hometeamscore = G.awayteamscore AND G.hometeamscore = 0 AND G.awayteamscore = 0)
		ORDER BY G.gamedatetime";

		// debug
		// print "<br /> sql to get games picked for week sql <br />$sql";
		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select member week stats - count all.";
		include ('mysqlquery.php');
		$sql_result_week = $sql_result;

		//
		// get games in week
		//
		$sql = "SELECT
		SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END) AS regularseasontotalgames,
		SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END) AS postseasontotalgames,
		COUNT(gamenbr) as totalgames
		FROM gamestbl
		WHERE season = $season and week = $week";

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select games for week stats - count gamenbr.";
		include ('mysqlquery.php');
		$sql_result_games = $sql_result;

		//
		// get total games played to date
		//
		$totalgames = 0;
		$count = mysqli_num_rows($sql_result_games);
		if ($count > 0)
		{
			$r = mysqli_fetch_assoc($sql_result_games);
			$totalgames = $r['totalgames'];
		}
		else
		{
		    $msg = $msg . "No games played this week! week:$week totalgames:$totalgames";
			exit($msg);
		}

		// debug
		// print "<br /> count for selection before loop $count";

		//
		// We now have all the games for the season week for the member.
		// Lets loop through and do the math.
		//
		while ($r = mysqli_fetch_assoc($sql_result_week))
		{
			// debug
			// print "<br /> top week calc loop r[week] " . $r['week'];
			// print_r($r);

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
					print($msg);
					exit($msg);
					break;
			}  // end of switch

			//
			// all games for week will have the same gametypeid
			//
			$gametypeid = $r['gametypeid'];

			// debug
			// print "<br /> bottom of week calc loop r[week] " . $r['week'];
			// print_r($r);

		}  // end of while member games for week

		// debug
		// print "<br /> end of while member games for week loop";
		// exit();

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

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select games for week stats - count team id in stats table.";
		include ('mysqlquery.php');
		$sql_result_check_week = $sql_result;

		$count = mysqli_num_rows($sql_result_check_week);

		//debug
		// print "<br /> update or insert. week = $week. memberid = $memberid";


		if ($count > 0)
		{
			//
			// do update
			//
			$function = "update";

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
			$function = "insert";

			$sql = "INSERT INTO memberweekstatstbl
				(totalgames, playerpickedgames, wins, losses, ties, totalgamespercent, playerpickedpercent, season, week, enterdate, gametypeid, memberid)
				VALUES ($totalgames, $playerpickedgames, $wins, $losses, $ties, $totalgamespercent, $playerpickedpercent, $season, $week, '$enterdateTS', $gametypeid, $memberid)";
		}

		// debug
		// print "<br /> before sql run. function = $function week $week";
		//
		// sql query
		//
		$modulecontent = "Unable to insert or update member week stats.";
		include ('mysqlquery.php');
		$sql_result_insert_update = $sql_result;

	} // end of outer week loop

	// debug
	// print "<br /> end of outer week loop";
	// exit();

	//
	// loop through rest of weeks - uncomment to get cumulative rolled up results
	//

	// debug
	print "<br /> <br />loop thru rest of weeks";
	print "<br /> start = $week. weeksinregularseason = $weeksinregularseason memberid = $memberid <br />";


 	$start = $week;
	for ($week = $start; $week <= $weeksinregularseason; $week++)
	{
		$sql = "UPDATE memberweekstatstbl
			SET totalgames = 0, wins = 0, losses = 0, ties = 0, playerpickedpercent = 0, totalgamespercent = 0, season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
			WHERE memberid = $memberid AND season = $season AND week = $week";

		//
		// sql query
		//
		$function = "update";
		$modulecontent = "Unable to insert or update member week stats.";
		include ('mysqlquery.php');
		$sql_result_update = $sql_result;

		// debug
		// print "<br /> rest of week loop";
		// print "<br /> function = $function memberid = $memberid";

	} // end of for week loop

} // end of looping through members

$msg = $msg . "Totals Members:$membercount. Weeks:$weekstotal";

// debug
// print "<br /> $msg";

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);

?>
