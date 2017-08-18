<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$msg = "";

//
// build array of games
//
$season = 2017;
$week = 0;

$weekstart = array(21);
$weekend = array(21);
$weekgametypeid = array(21);

$weekstart[0] = "Sep 7 2017";
$weekend[0] = "Sep 12 2017";
$weekgametypeid[0] = 2;

$weekstart[1] = "Sep 14 2017";
$weekend[1] = "Sep 19 2017";
$weekgametypeid[1] = 2;

$weekstart[2] = "Sep 21 2017";
$weekend[2] = "Sep 26 2017";
$weekgametypeid[2] = 2;

$weekstart[3] = "Sep 28 2017";
$weekend[3] = "Oct 3 2017";
$weekgametypeid[3] = 2;

$weekstart[4] = "Oct 5 2017";
$weekend[4] = "Oct 10 2017";
$weekgametypeid[4] = 2;

$weekstart[5] = "Oct 12 2017";
$weekend[5] = "Oct 17 2017";
$weekgametypeid[5] = 2;

$weekstart[6] = "Oct 19 2017";
$weekend[6] = "Oct 24 2017";
$weekgametypeid[6] = 2;

$weekstart[7] = "Oct 16 2017";
$weekend[7] = "Oct 31 2017";
$weekgametypeid[7] = 2;

$weekstart[8] = "Nov 2 2017";
$weekend[8] = "Nov 7 2017";
$weekgametypeid[8] = 2;

$weekstart[9] = "Nov 9 2017";
$weekend[9] = "Nov 14 2017";
$weekgametypeid[9] = 2;

$weekstart[10] = "Nov 16 2017";
$weekend[10] = "Nov 21 2017";
$weekgametypeid[10] = 2;

$weekstart[11] = "Nov 23 2017";
$weekend[11] = "Nov 28 2017";
$weekgametypeid[11] = 2;

$weekstart[12] = "Nov 30 2017";
$weekend[12] = "Dec 5 2017";
$weekgametypeid[12] = 2;

$weekstart[13] = "Dec 7 2017";
$weekend[13] = "Dec 12 2017";
$weekgametypeid[13] = 2;

$weekstart[14] = "Dec 14 2017";
$weekend[14] = "Dec 19 2017";
$weekgametypeid[14] = 2;

$weekstart[15] = "Dec 21 2017";
$weekend[15] = "Dec 26 2017";
$weekgametypeid[15] = 2;

$weekstart[16] = "Dec 28 2017";
$weekend[16] = "Jan 1 2017";
$weekgametypeid[16] = 2;

$weekstart[17] = "Jan 6 2017";
$weekend[17] = "Jan 8 2017";
$weekgametypeid[17] = 3;

$weekstart[18] = "Jan 13 2017";
$weekend[18] = "Jan 15 2017";
$weekgametypeid[18] = 3;

$weekstart[19] = "Jan 21 2017";
$weekend[19] = "Jan 22 2017";
$weekgametypeid[19] = 3;

$weekstart[20] = "Feb 4 2017";
$weekend[20] = "Feb 5 2017";
$weekgametypeid[20] = 3;

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

$weekcount = 0;
//---------------------------------------------------------------
// loop through array and create gameweektbl
//---------------------------------------------------------------
foreach ($weekstart as $idx => $weekvalue) {
	$unixTS = strtotime($weekvalue);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$startdateTS = $mysqlTS;

	$unixTS = strtotime($weekend[$idx]);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$enddateTS = $mysqlTS;

	$gametypeid = $weekgametypeid[$week];

	$week = $idx + 1;

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * FROM gameweekstbl WHERE season = $season AND week = $week";

	$sql_result_check = @mysql_query($sql, $dbConn);
	if (!$sql_result_check)
	{
	    echo mysql_error();
		exit();	
	}	

	$count = mysql_num_rows($sql_result_check);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE gameweekstbl 
			SET season = $season, 
			gametypeid = $gametypeid, 
			week = $week, 
			weekstart = '$startdateTS', 
			weekend = '$enddateTS', 
			enterdate = '$enterdateTS' 
			WHERE season = $season AND week = $week";
	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO gameweekstbl 
		(season, gametypeid, week, weekstart, weekend, enterdate)  
		VALUES ( $season, $gametypeid,
		$week, 
		'$startdateTS', 
		'$enddateTS',
		'$enterdateTS' )";
	}

	echo "sql => " . $sql . "<br />";

	$sql_result_insert_update = @mysql_query($sql, $dbConn);
	if (!$sql_result_insert_update)
	{
		echo mysql_error();
		exit();	
	}

	$weekcount = $weekcount + 1;

}  // end of for

//
// close db connection
//
mysql_close($dbConn);


$msg = $msg . "For season: $season added $weekcount game weeks";

//
// pass back info
//
exit($msg);

?>
