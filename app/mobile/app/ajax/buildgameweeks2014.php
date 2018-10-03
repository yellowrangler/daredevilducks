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
$season = 2014;
$week = 1;

$weekstart = array(21);
$weekend = array(21);
$weekgametypeid = array(21);

$weekstart[0] = "Sep 9 2014";
$weekend[0] = "Sep 8 2014";
$weekgametypeid[0] = 2;

$weekstart[1] = "Sep 11 2014";
$weekend[1] = "Sep 15 2014";
$weekgametypeid[1] = 2;

$weekstart[2] = "Sep 18 2014";
$weekend[2] = "Sep 22 2014";
$weekgametypeid[2] = 2;

$weekstart[3] = "Sep 25 2014";
$weekend[3] = "Sep 29 2014";
$weekgametypeid[3] = 2;

$weekstart[4] = "Oct 2 2014";
$weekend[4] = "Oct 6 2014";
$weekgametypeid[4] = 2;

$weekstart[5] = "Oct 9 2014";
$weekend[5] = "Oct 13 2014";
$weekgametypeid[5] = 2;

$weekstart[6] = "Oct 16 2014";
$weekend[6] = "Oct 20 2014";
$weekgametypeid[6] = 2;

$weekstart[7] = "Oct 23 2014";
$weekend[7] = "Oct 27 2014";
$weekgametypeid[7] = 2;

$weekstart[8] = "Oct 30 2014";
$weekend[8] = "Nov 3 2014";
$weekgametypeid[8] = 2;

$weekstart[9] = "Nov 6 2014";
$weekend[9] = "Nov 10 2014";
$weekgametypeid[9] = 2;

$weekstart[10] = "Nov 13 2014";
$weekend[10] = "Nov 17 2014";
$weekgametypeid[10] = 2;

$weekstart[11] = "Nov 20 2014";
$weekend[11] = "Nov 24 2014";
$weekgametypeid[11] = 2;

$weekstart[12] = "Nov 27 2014";
$weekend[12] = "Dec 1 2014";
$weekgametypeid[12] = 2;

$weekstart[13] = "Dec 4 2014";
$weekend[13] = "Dec 8 2014";
$weekgametypeid[13] = 2;

$weekstart[14] = "Dec 11 2014";
$weekend[14] = "Dec 15 2014";
$weekgametypeid[14] = 2;

$weekstart[15] = "Dec 20 2014";
$weekend[15] = "Dec 22 2014";
$weekgametypeid[15] = 2;

$weekstart[16] = "Dec 28 2014";
$weekend[16] = "Dec 28 2014";
$weekgametypeid[16] = 2;

$weekstart[17] = "Jan 3 2014";
$weekend[17] = "Jan 4 2014";
$weekgametypeid[17] = 3;

$weekstart[18] = "Jan 10 2014";
$weekend[18] = "Jan 11 2014";
$weekgametypeid[18] = 3;

$weekstart[19] = "Jan 18 2014";
$weekend[19] = "Jan 18 2014";
$weekgametypeid[19] = 3;

$weekstart[20] = "Feb 1 2014";
$weekend[20] = "Feb 1 2014";
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
