<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get current season week.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get nfl game type information
//---------------------------------------------------------------
$sql = "SELECT season, week 
FROM gameweekstbl 
WHERE weekend >= DATE_SUB(now(), INTERVAL 1 DAY)
ORDER BY season, week ASC LIMIT 1";

//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// check to see if anything returned
// if none then past end of season
// run special query
//
$count = mysqli_num_rows($sql_result);
if ($count < 1)
{
	//---------------------------------------------------------------
	// get nfl week information
	//---------------------------------------------------------------
	$sql = "SELECT MAX(season) as season, MAX(week) as week
	FROM gameweekstbl 
	WHERE weekstart <= now()";

	$modulecontent = "Unable to get nfl CURRENT season week 2 information.";

	//
	// sql query
	//
	$function = "select";
	include 'mysqlquery.php';
}

//
// get season week
// 
$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	$r = mysqli_fetch_assoc($sql_result);
	$week = $r['week'];
	$season = $r['season'];
}
else
{
	$week = 1;
	$season = date("Y");
}

$data = array('season' => $season, 'week' => $week);

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($data));

?>
