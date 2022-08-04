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
	$msg = $msg . "No season passed - Initializememberweekstats terminated";
	exit($msg);
}

if (isset($_POST["weeksinregularseason"]))
{
	$weeksinregularseason = $_POST["weeksinregularseason"];
}
else
{
	$msg = $msg . "No weeksinregularseason passed - Initializememberweekstats terminated";
	exit($msg);
}

if (isset($_POST["weeksinplayoffseason"]))
{
	$weeksinplayoffseason = $_POST["weeksinplayoffseason"];
}
else
{
	$msg = $msg . "No weeksinplayoffseason passed - Initializememberweekstats terminated";
	exit($msg);
}

$msg = "Input variables: Season:$season weeksinregularseason:$weeksinregularseason weeksinplayoffseason:$weeksinplayoffseason<br />";

//
// set variables
//
$gametypeid = 0;
$wins = 0;
$losses = 0;
$ties = 0;
$week = 0;
$playerpickedgames = 0;
$playerpickedpercent = 0;
$totalgames = 0;
$totalgamespercent = 0;

// $season = 2015;
// $weeksinseason = 17;

//
// db connect
//
$modulecontent = "Unable to initialize member week stats.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));		

//---------------------------------------------------------------
// Get list of all dare devile ducks members
//---------------------------------------------------------------
$sql = "SELECT id as memberid 
FROM  membertbl 
ORDER BY 'memberid'";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_prime = $sql_result;

//
// display variables
//
$membercount = 0;
$memberinsertedcount = 0;
$memberid = 0;

while($row = mysqli_fetch_assoc($sql_result_prime)) {

	// count membercount
	$membercount = $membercount + 1;

	$memberid = $row['memberid'];

	//
	// loop through all regular season weeks
	//
	$gametypeid = 2;
	for ($week = 1; $week <= $weeksinregularseason; $week++)
	{
		//---------------------------------------------------------------
		// Get list of all dare devile ducks members
		//---------------------------------------------------------------
		$sql = "SELECT memberid 
		FROM  memberweekstatstbl 
		WHERE memberid = $memberid and season = $season and week = $week and gametypeid = $gametypeid";

		//
		// sql query
		//
		$function = "select";
		include ('mysqlquery.php');
		$sql_result_check = $sql_result;

		$num_rows = mysqli_num_rows($sql_result_check);

		if ($num_rows == 0)
		{
			// 
			// do insert team
			// 
			$sql = "INSERT INTO memberweekstatstbl 
				(totalgames, playerpickedgames, week, wins, losses, ties, totalgamespercent, playerpickedpercent, season, enterdate, memberid, gametypeid) 
				VALUES ($totalgames, $playerpickedgames, $week, $wins, $losses, $ties, $totalgamespercent, $playerpickedpercent, $season, '$enterdateTS', $memberid, $gametypeid)";

			//
			// sql query
			//
			$function = "insert";
			$modulecontent = "Unable to initialize member week stats. error during insert.";
			include ('mysqlquery.php');
			$sql_r = $sql_result;
	
			$memberinsertedcount = $memberinsertedcount + 1;
		}

	}  // end of looping through regular season weeks


	//
	// loop through all post season weeks
	//
	$gametypeid = 3;
	for ($playoffweek = 1; $playoffweek <= $weeksinplayoffseason; $playoffweek++)
	{
		$week = $weeksinregularseason + $playoffweek;
		//---------------------------------------------------------------
		// Get list of all dare devile ducks members
		//---------------------------------------------------------------
		$sql = "SELECT memberid 
		FROM  memberweekstatstbl 
		WHERE memberid = $memberid and season = $season and week = $week and gametypeid = $gametypeid";

		//
		// sql query
		//
		$function = "select";
		$modulecontent = "Unable to initialize member week stats. error during select.";
		include ('mysqlquery.php');
		$sql_result_check = $sql_result;

		$num_rows = mysqli_num_rows($sql_result_check);

		if ($num_rows == 0)
		{
			// 
			// do insert team
			// 
			$sql = "INSERT INTO memberweekstatstbl 
				(totalgames, playerpickedgames, week, wins, losses, ties, totalgamespercent, playerpickedpercent, season, enterdate, memberid, gametypeid) 
				VALUES ($totalgames, $playerpickedgames, $week, $wins, $losses, $ties, $totalgamespercent, $playerpickedpercent, $season, '$enterdateTS', $memberid, $gametypeid)";

			//
			// sql query
			//
			$function = "insert";
			$modulecontent = "Unable to initialize member week stats. error during insert.";
			include ('mysqlquery.php');
			$sql_r = $sql_result;	

			$memberinsertedcount = $memberinsertedcount + 1;
		}

	}  // end of looping through weeks

} // end of for looping through games

$msg = $msg . "Totals Members:$membercount Members Weeks Inserted:$memberinsertedcount.";

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);
?>
