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
$season = 2014;
$week = 0;

$weekstart = array();
$weekend = array();

$weekstart[1] = "Sep 4 2014";
$weekend[1] = "Sep 8 2014";

$weekstart[2] = "Sep 11 2014";
$weekend[2] = "Sep 15 2014";

$weekstart[3] = "Sep 18 2014";
$weekend[3] = "Sep 22 2014";

$weekstart[4] = "Sep 25 2014";
$weekend[4] = "Sep 29 2014";

$weekstart[5] = "Oct 2 2014";
$weekend[5] = "Oct 6 2014";

$weekstart[6] = "Oct 9 2014";
$weekend[6] = "Oct 13 2014";

$weekstart[7] = "Oct 16 2014";
$weekend[7] = "Oct 20 2014";

$weekstart[8] = "Oct 23 2014";
$weekend[8] = "Oct 27 2014";

$weekstart[9] = "Oct 30 2014";
$weekend[9] = "Nov 3 2014";

$weekstart[10] = "Nov 6 2014";
$weekend[10] = "Nov 10 2014";

$weekstart[11] = "Nov 13 2014";
$weekend[11] = "Nov 17 2014";

$weekstart[12] = "Nov 20 2014";
$weekend[12] = "Nov 24 2014";

$weekstart[13] = "Nov 27 2014";
$weekend[13] = "Dec 1 2014";

$weekstart[14] = "Dec 4 2014";
$weekend[14] = "Dec 8 2014";

$weekstart[15] = "Dec 11 2014";
$weekend[15] = "Dec 15 2014";

$weekstart[16] = "Dec 20 2014";
$weekend[16] = "Dec 22 2014";

$weekstart[17] = "Dec 28 2014";
$weekend[17] = "Dec 28 2014";

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
