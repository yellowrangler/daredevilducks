<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;


//
// build array of games
//
$season = 2015;
$week = 0;

$weekstart = array();
$weekend = array();

$weekstart[1] = "Sep 10 2015";
$weekend[1] = "Sep 14 2015";

$weekstart[2] = "Sep 17 2015";
$weekend[2] = "Sep 21 2015";

$weekstart[3] = "Sep 24 2015";
$weekend[3] = "Sep 28 2015";

$weekstart[4] = "Oct 1 2015";
$weekend[4] = "Oct 5 2015";

$weekstart[5] = "Oct 8 2015";
$weekend[5] = "Oct 12 2015";

$weekstart[6] = "Oct 15 2015";
$weekend[6] = "Oct 19 2015";

$weekstart[7] = "Oct 22 2015";
$weekend[7] = "Oct 26 2015";

$weekstart[8] = "Oct 29 2015";
$weekend[8] = "Nov 2 2015";

$weekstart[9] = "Nov 5 2015";
$weekend[9] = "Nov 9 2015";

$weekstart[10] = "Nov 12 2015";
$weekend[10] = "Nov 16 2015";

$weekstart[11] = "Nov 19 2015";
$weekend[11] = "Nov 23 2015";

$weekstart[12] = "Nov 26 2015";
$weekend[12] = "Nov 30 2015";

$weekstart[13] = "Dec 3 2015";
$weekend[13] = "Dec 7 2015";

$weekstart[14] = "Dec 10 2015";
$weekend[14] = "Dec 14 2015";

$weekstart[15] = "Dec 17 2015";
$weekend[15] = "Dec 21 2015";

$weekstart[16] = "Dec 24 2015";
$weekend[16] = "Dec 28 2015";

$weekstart[17] = "Jan 3 2015";
$weekend[17] = "Jan 7 2015";

//
// get todays date and build mysql timestamp
// 
$unixTS = time();
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
$currenrTS = $mysqlTS;
$year = date("Y",$currenrTS);

//------------------------------------------------------
// get admin user info
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
	echo mysql_error();
	exit();
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	echo mysql_error();
	exit();
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// loop through array and create gameweektbl
//---------------------------------------------------------------
foreach ($weekstart as $week => $weekvalue) {
	$unixTS = strtotime($weekvalue);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$startdateTS = $mysqlTS;

	$unixTS = strtotime($weekend[$week]);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$enddateTS = $mysqlTS;

	// echo "enterdateTS => " . $enterdateTS . "<br />";

	$sql = "INSERT INTO gameweekstbl 
	(season, week, weekstart, weekend, enterdate)  
	VALUES ( $season, $week, 
	'$startdateTS', 
	'$enddateTS',
	'$enterdateTS' )";

	echo "sql => " . $sql . "<br />";
	
	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		echo mysql_error();
		exit();	
	}
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit();

?>
