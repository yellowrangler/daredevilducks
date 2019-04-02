<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

//
// db connect
//
$modulecontent = "Unable to get nfl CURRENT season week information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get nfl week information
//---------------------------------------------------------------
$sql = "SELECT season, week
FROM gameweekstbl 
WHERE weekstart <= now() AND weekend >= now()";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

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
	$sql = "SELECT MAX(season), MAX(week)
	FROM gameweekstbl 
	WHERE weekstart <= now()";

	//
	// sql query
	//
	$function = "select";
	include ('mysqlquery.php');
}

//
// fill the array
//
$weeks = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $weeks[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($weeks));

?>
