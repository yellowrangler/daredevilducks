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
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$msg = "No season passed - builteamstats terminated";
		exit($msg);

	}
}

$msg = "Input variables: Season:$season<br />";

//
// db connect
//
$modulecontent = "Unable to update team stats.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get list of all nfl teams
//---------------------------------------------------------------
$sql = "SELECT * FROM teamstbl ORDER BY conference ASC, division ASC, teamorder ASC";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to select team stats.";
include ('mysqlquery.php');
$sql_result_prime = $sql_result;

//
// loop through all teams
//
$teamid = 0;

$games = 0;
$wins = 0;
$losses = 0;
$ties = 0;

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

while($row = mysqli_fetch_assoc($sql_result_prime)) {

	// // count teams
	$teamcount = $teamcount + 1;

	$teamid = $row['id'];

	//
	// start sql to get wins
	//
	$sql = "SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
	COUNT(*) as wins
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
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
	COUNT(*) as wins
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = $teamid and hometeamscore > awayteamscore )

	UNION ALL
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
	COUNT(*) as wins
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = $teamid and awayteamscore > hometeamscore )

	UNION ALL

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
	COUNT(*) as wins
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

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonwins,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonwins,
	COUNT(*) as wins
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

	// echo "<br />Wins select sql: $sql<br /><br /><br />";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to select team stats - count wins.";
	include ('mysqlquery.php');

	//
	// union 5 selects to get total, home, away, conf and div wins
	//
	$idx = 0;
	$winsArray = array();
	while($row = mysqli_fetch_assoc($sql_result)) {
		$winsArray[$idx] = $row['wins'];
		$regularseasonwinsArray[$idx] = $row['regularseasonwins'];
		$postseasonwinsArray[$idx] = $row['postseasonwins'];

		$idx = $idx + 1;
	}

	$wins = $winsArray[0];
	$homewins = $winsArray[1];
	$awaywins = $winsArray[2];
	$confwins = $winsArray[3];
	$divwins = $winsArray[4];	

	$regularseasonwins = $regularseasonwinsArray[0];
	$regularseasonhomewins = $regularseasonwinsArray[1];
	$regularseasonawaywins = $regularseasonwinsArray[2];
	$regularseasonconfwins = $regularseasonwinsArray[3];
	$regularseasondivwins = $regularseasonwinsArray[4];	

	$postseasonwins = $postseasonwinsArray[0];
	$postseasonhomewins = $postseasonwinsArray[1];
	$postseasonawaywins = $postseasonwinsArray[2];
	$postseasonconfwins = $postseasonwinsArray[3];
	$postseasondivwins = $postseasonwinsArray[4];	

	//
	// start sql to get losses
	//
	$sql = "SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
	COUNT(*) as losses
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
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
	COUNT(*) as losses
	from gamestbl g
	left join teamstbl th on g.hometeamid = th.id 
	where
	season = $season
	AND 
	( hometeamid = $teamid and hometeamscore < awayteamscore )

	UNION ALL
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
	COUNT(*) as losses
	from gamestbl g
	left join teamstbl ta on g.awayteamid = ta.id 
	where
	season = $season
	AND 
	( awayteamid = $teamid and awayteamscore < hometeamscore )

	UNION ALL

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
	COUNT(*) as losses
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

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonlosses,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonlosses,
	COUNT(*) as losses
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

	// echo "<br />losses select sql: $sql<br /><br /><br />";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to select team stats - count losses.";
	include ('mysqlquery.php');

	//
	// union 5 selects to get total, home, away, conf and div losses
	//
	$idx = 0;
	$lossesArray = array();
	while($row = mysqli_fetch_assoc($sql_result)) {
		$lossesArray[$idx] = $row['losses'];
		$regularseasonlossesArray[$idx] = $row['regularseasonlosses'];
		$postseasonlossesArray[$idx] = $row['postseasonlosses'];

		$idx = $idx + 1;
	}

	$losses = $lossesArray[0];
	$homelosses = $lossesArray[1];
	$awaylosses = $lossesArray[2];
	$conflosses = $lossesArray[3];
	$divlosses = $lossesArray[4];

	$regularseasonlosses = $regularseasonlossesArray[0];
	$regularseasonhomelosses = $regularseasonlossesArray[1];
	$regularseasonawaylosses = $regularseasonlossesArray[2];
	$regularseasonconflosses = $regularseasonlossesArray[3];
	$regularseasondivlosses = $regularseasonlossesArray[4];	

	$postseasonlosses = $postseasonlossesArray[0];
	$postseasonhomelosses = $postseasonlossesArray[1];
	$postseasonawaylosses = $postseasonlossesArray[2];
	$postseasonconflosses = $postseasonlossesArray[3];
	$postseasondivlosses = $postseasonlossesArray[4];	

	//
	// start sql to get ties
	//
	$sql = "SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
	COUNT(*) as ties
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
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END), 0) AS postseasonties,
	COUNT(*) as ties
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
    
    SELECT 
    COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
	COUNT(*) as ties
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

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
	COUNT(*) as ties
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

	SELECT 
	COALESCE(SUM(CASE WHEN gametypeid = 2 THEN 1 ELSE 0 END),0) AS regularseasonties,
	COALESCE(SUM(CASE WHEN gametypeid = 3 THEN 1 ELSE 0 END),0) AS postseasonties,
	COUNT(*) as ties
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

	// echo "<br /><br />ties select sql: $sql<br /><br /><br />";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to select team stats - count ties.";
	include ('mysqlquery.php');

	// TC
	// union 5 selects to get total, home, away, conf and div ties
	//
	$idx = 0;
	$tiesArray = array();
	while($row = mysqli_fetch_assoc($sql_result)) {
		$tiesArray[$idx] = $row['ties'];
		$regularseasontiesArray[$idx] = $row['regularseasonties'];
		$postseasontiesArray[$idx] = $row['postseasonties'];

		$idx = $idx + 1;
	}

	$ties = $tiesArray[0];
	$hometies = $tiesArray[1];
	$awayties = $tiesArray[2];
	$confties = $tiesArray[3];
	$divties = $tiesArray[4];

	$regularseasonties = $regularseasontiesArray[0];
	$regularseasonhometies = $regularseasontiesArray[1];
	$regularseasonawayties = $regularseasontiesArray[2];
	$regularseasonconfties = $regularseasontiesArray[3];
	$regularseasondivties = $regularseasontiesArray[4];	

	$postseasonties = $postseasontiesArray[0];
	$postseasonhometies = $postseasontiesArray[1];
	$postseasonawayties = $postseasontiesArray[2];
	$postseasonconfties = $postseasontiesArray[3];
	$postseasondivties = $postseasontiesArray[4];	

	//
	// calculate games from totals played 
	//
	$games = $wins + $losses + $ties;
	$homegames = $homewins + $homelosses + $hometies;
	$awaygames = $awaywins + $awaylosses + $awayties;
	$confgames = $confwins + $conflosses + $confties;
	$divgames = $divwins + $divlosses + $divties;

	$regularseasongames = $regularseasonwins + $regularseasonlosses + $regularseasonties;
	$regularseasonhomegames = $regularseasonhomewins + $regularseasonhomelosses + $regularseasonhometies;
	$regularseasonawaygames = $regularseasonawaywins + $regularseasonawaylosses + $regularseasonawayties;
	$regularseasonconfgames = $regularseasonconfwins + $regularseasonconflosses + $regularseasonconfties;
	$regularseasondivgames = $regularseasondivwins + $regularseasondivlosses + $regularseasondivties;

	$postseasongames = $postseasonwins + $postseasonlosses + $postseasonties;
	$postseasonhomegames = $postseasonhomewins + $postseasonhomelosses + $postseasonhometies;
	$postseasonawaygames = $postseasonawaywins + $postseasonawaylosses + $postseasonawayties;
	$postseasonconfgames = $postseasonconfwins + $postseasonconflosses + $postseasonconfties;
	$postseasondivgames = $postseasondivwins + $postseasondivlosses + $postseasondivties;

	//
	// calculate percentage
	//
	$percent = 0;
	$homepercent = 0;
	$awaypercent = 0;
	$confpercent = 0;
	$divpercent = 0;

	$regularseasonpercent = 0;
	$regularseasonhomepercent = 0;
	$regularseasonawaypercent = 0;
	$regularseasonconfpercent = 0;
	$regularseasondivpercent = 0;

	$postseasonpercent = 0;
	$postseasonhomepercent = 0;
	$postseasonawaypercent = 0;
	$postseasonconfpercent = 0;
	$postseasondivpercent = 0;
	
	if ($games > 0)
	{
		$p = $wins / $games;
		$percent = round($p, 3);
	}

	if ($homegames > 0)
	{
		$p = $homewins / $homegames;
		$homepercent = round($p, 3);
	}

	if ($awaygames > 0)
	{
		$p = $awaywins / $awaygames;
		$awaypercent = round($p, 3);
	}

	if ($confgames > 0)
	{
		$p = $confwins / $confgames;
		$confpercent = round($p, 3);
	}

	if ($divgames > 0)
	{
		$p = $divwins / $divgames;
		$divpercent = round($p, 3);
	}
		

	if ($regularseasongames > 0)
	{
		$p = $regularseasonwins / $regularseasongames;
		$regularseasonpercent = round($p, 3);
	}

	if ($regularseasonhomegames > 0)
	{
		$p = $regularseasonhomewins / $regularseasonhomegames;
		$regularseasonhomepercent = round($p, 3);
	}

	if ($regularseasonawaygames > 0)
	{
		$p = $regularseasonawaywins / $regularseasonawaygames;
		$regularseasonawaypercent = round($p, 3);
	}

	if ($regularseasonconfgames > 0)
	{
		$p = $regularseasonconfwins / $regularseasonconfgames;
		$regularseasonconfpercent = round($p, 3);
	}

	if ($regularseasondivgames > 0)
	{
		$p = $regularseasondivwins / $regularseasondivgames;
		$regularseasondivpercent = round($p, 3);
	}

	if ($postseasongames > 0)
	{
		$p = $postseasonwins / $postseasongames;
		$postseasonpercent = round($p, 3);
	}

	if ($postseasonhomegames > 0)
	{
		$p = $postseasonhomewins / $postseasonhomegames;
		$postseasonhomepercent = round($p, 3);
	}

	if ($postseasonawaygames > 0)
	{
		$p = $postseasonawaywins / $postseasonawaygames;
		$postseasonawaypercent = round($p, 3);
	}

	if ($postseasonconfgames > 0)
	{
		$p = $postseasonconfwins / $postseasonconfgames;
		$postseasonconfpercent = round($p, 3);
	}

	if ($postseasondivgames > 0)
	{
		$p = $postseasondivwins / $postseasondivgames;
		$postseasondivpercent = round($p, 3);
	}

	//
	// total season games 
	// 
	if ($games > 0)
	{
		$gametypeid = 1;
		$sql = "SELECT * from teamstatstbl where teamid = $teamid AND season = $season AND gametypeid = $gametypeid";

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select team stats - count team id in stats table.";
		include ('mysqlquery.php');

		$count = mysqli_num_rows($sql_result);
		if ($count > 0)
		{
			// 
			// do update
			// 
			$function = "update";

			$sql = "UPDATE teamstatstbl 
				SET totalgames = $games, wins = $wins, losses = $losses, ties = $ties, percent = $percent, 
				hometotalgames = $homegames, homewins = $homewins, homelosses = $homelosses, hometies = $hometies, homepercent = $homepercent,
				awaytotalgames = $awaygames, awaywins = $awaywins, awaylosses = $awaylosses, awayties = $awayties, awaypercent = $awaypercent,
				conftotalgames = $confgames, confwins = $confwins, conflosses = $conflosses, confties = $confties, confpercent = $confpercent,
				divtotalgames = $divgames, divwins = $divwins, divlosses = $divlosses, divties = $divties, divpercent = $divpercent,
				season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
				WHERE teamid = $teamid AND season = $season AND gametypeid = $gametypeid";
		}
		else
		{
			// 
			// do insert
			// 
			$function = "insert";

			$sql = "INSERT INTO teamstatstbl 
				(totalgames, wins, losses, ties, percent, 
				hometotalgames, homewins, homelosses, hometies, homepercent,
				awaytotalgames, awaywins, awaylosses, awayties, awaypercent,
				conftotalgames, confwins, conflosses, confties, confpercent,
				divtotalgames, divwins, divlosses, divties, divpercent,
				season, gametypeid, enterdate, teamid) 
				VALUES ($games, $wins, $losses, $ties, $percent, 
					$homegames, $homewins, $homelosses, $hometies, $homepercent,
					$awaygames, $awaywins, $awaylosses, $awayties, $awaypercent,
					$confgames, $confwins, $conflosses, $confties, $confpercent,
					$divgames, $divwins, $divlosses, $divties, $divpercent,
					$season, $gametypeid, '$enterdateTS', $teamid)";
		}

		// echo "<br />sql for total: $sql <br />";

		//
		// sql query
		//
		$modulecontent = "Unable to update or insert total team stats.";
		include ('mysqlquery.php');
	}

	//
	// regular season games 
	// 
	if ($regularseasongames > 0)
	{
		$gametypeid = 2;
		$sql = "SELECT * from teamstatstbl where teamid = $teamid AND season = $season AND gametypeid = $gametypeid";

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select team regular stats - count team id in stats table.";
		include ('mysqlquery.php');

		$count = mysqli_num_rows($sql_result);
		if ($count > 0)
		{
			// 
			// do update
			// 
			$function = "update";

			$sql = "UPDATE teamstatstbl 
				SET totalgames = $regularseasongames, 
				wins = $regularseasonwins, losses = $regularseasonlosses, ties = $regularseasonties, 
				percent = $regularseasonpercent, 
				hometotalgames = $regularseasonhomegames, homewins = $regularseasonhomewins, 
				homelosses = $regularseasonhomelosses, hometies = $regularseasonhometies, 
				homepercent = $regularseasonhomepercent,
				awaytotalgames = $regularseasonawaygames, awaywins = $regularseasonawaywins, 
				awaylosses = $regularseasonawaylosses, awayties = $regularseasonawayties, 
				awaypercent = $regularseasonawaypercent,
				conftotalgames = $regularseasonconfgames, confwins = $regularseasonconfwins, 
				conflosses = $regularseasonconflosses, confties = $regularseasonconfties, 
				confpercent = $regularseasonconfpercent,
				divtotalgames = $regularseasondivgames, divwins = $regularseasondivwins, 
				divlosses = $regularseasondivlosses, divties = $regularseasondivties, 
				divpercent = $regularseasondivpercent,
				season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
				WHERE teamid = $teamid AND season = $season AND gametypeid = $gametypeid";
		}
		else
		{
			// 
			// do insert
			// 
			$function = "insert";

			$sql = "INSERT INTO teamstatstbl 
				(totalgames, wins, losses, ties, percent, 
				hometotalgames, homewins, homelosses, hometies, homepercent,
				awaytotalgames, awaywins, awaylosses, awayties, awaypercent,
				conftotalgames, confwins, conflosses, confties, confpercent,
				divtotalgames, divwins, divlosses, divties, divpercent,
				season, gametypeid, enterdate, teamid) 
				VALUES ($regularseasongames, $regularseasonwins, $regularseasonlosses, 
					$regularseasonties, $regularseasonpercent, 
					$regularseasonhomegames, $regularseasonhomewins, 
					$regularseasonhomelosses, $regularseasonhometies, 
					$regularseasonhomepercent,
					$regularseasonawaygames, $regularseasonawaywins, 
					$regularseasonawaylosses, $regularseasonawayties, 
					$regularseasonawaypercent,
					$regularseasonconfgames, $regularseasonconfwins, 
					$regularseasonconflosses, $regularseasonconfties, 
					$regularseasonconfpercent,
					$regularseasondivgames, $regularseasondivwins, 
					$regularseasondivlosses, $regularseasondivties, 
					$regularseasondivpercent,
					$season, $gametypeid, '$enterdateTS', $teamid)";
		}

		// echo "<br />sql for regular: $sql <br />";

		//
		// sql query
		//
		$modulecontent = "Unable to update team regular stats.";
		include ('mysqlquery.php');
	}

	//
	// post season games 
	// 
	if ($postseasongames > 0)
	{
		$gametypeid = 3;
		$sql = "SELECT * from teamstatstbl where teamid = $teamid AND season = $season AND gametypeid = $gametypeid";

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to select team post stats - count team id in stats table.";
		include ('mysqlquery.php');

		$count = mysqli_num_rows($sql_result);
		if ($count > 0)
		{
			// 
			// do update
			// 
			$function = "update";

			$sql = "UPDATE teamstatstbl 
				SET totalgames = $postseasongames, 
				wins = $postseasonwins, losses = $postseasonlosses, ties = $postseasonties, 
				percent = $postseasonpercent, 
				hometotalgames = $postseasonhomegames, homewins = $postseasonhomewins, 
				homelosses = $postseasonhomelosses, hometies = $postseasonhometies, 
				homepercent = $postseasonhomepercent,
				awaytotalgames = $postseasonawaygames, awaywins = $postseasonawaywins, 
				awaylosses = $postseasonawaylosses, awayties = $postseasonawayties, 
				awaypercent = $postseasonawaypercent,
				conftotalgames = $postseasonconfgames, confwins = $postseasonconfwins, 
				conflosses = $postseasonconflosses, confties = $postseasonconfties, 
				confpercent = $postseasonconfpercent,
				divtotalgames = $postseasondivgames, divwins = $postseasondivwins, 
				divlosses = $postseasondivlosses, divties = $postseasondivties, 
				divpercent = $postseasondivpercent,
				season = $season, gametypeid = $gametypeid,  enterdate = '$enterdateTS' 
				WHERE teamid = $teamid AND season = $season AND gametypeid = $gametypeid";
		}
		else
		{
			// 
			// do insert
			// 
			$function = "insert";

			$sql = "INSERT INTO teamstatstbl 
				(totalgames, wins, losses, ties, percent, 
				hometotalgames, homewins, homelosses, hometies, homepercent,
				awaytotalgames, awaywins, awaylosses, awayties, awaypercent,
				conftotalgames, confwins, conflosses, confties, confpercent,
				divtotalgames, divwins, divlosses, divties, divpercent,
				season, gametypeid, enterdate, teamid) 
				VALUES ($postseasongames, $postseasonwins, $postseasonlosses, 
					$postseasonties, $postseasonpercent, 
					$postseasonhomegames, $postseasonhomewins, 
					$postseasonhomelosses, $postseasonhometies, 
					$postseasonhomepercent,
					$postseasonawaygames, $postseasonawaywins, 
					$postseasonawaylosses, $postseasonawayties, 
					$postseasonawaypercent,
					$postseasonconfgames, $postseasonconfwins, 
					$postseasonconflosses, $postseasonconfties, 
					$postseasonconfpercent,
					$postseasondivgames, $postseasondivwins, 
					$postseasondivlosses, $postseasondivties, 
					$postseasondivpercent,
					$season, $gametypeid, '$enterdateTS', $teamid)";
		}

		// echo "<br />sql for post: $sql <br />";

		//
		// sql query
		//
		$modulecontent = "Unable to insert or update team post stats - count team id in stats table.";
		include ('mysqlquery.php');
	}

} // end of looping through teams

$msg = $msg . "Totals Teams:$teamcount.";

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);
?>
