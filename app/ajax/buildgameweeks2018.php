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
$season = 2018;
$week = 0;

$weekstart = array(21);
$weekend = array(21);
$weekgametypeid = array(21);

$weekstart[0] = "Sep 6 2018";
$weekend[0] = "Sep 11 2018";
$weekgametypeid[0] = 2;

$weekstart[1] = "Sep 13 2018";
$weekend[1] = "Sep 18 2018";
$weekgametypeid[1] = 2;

$weekstart[2] = "Sep 20 2018";
$weekend[2] = "Sep 25 2018";
$weekgametypeid[2] = 2;

$weekstart[3] = "Sep 27 2018";
$weekend[3] = "Oct 2 2018";
$weekgametypeid[3] = 2;

$weekstart[4] = "Oct 4 2018";
$weekend[4] = "Oct 9 2018";
$weekgametypeid[4] = 2;

$weekstart[5] = "Oct 11 2018";
$weekend[5] = "Oct 16 2018";
$weekgametypeid[5] = 2;

$weekstart[6] = "Oct 18 2018";
$weekend[6] = "Oct 23 2018";
$weekgametypeid[6] = 2;

$weekstart[7] = "Oct 25 2018";
$weekend[7] = "Oct 30 2018";
$weekgametypeid[7] = 2;

$weekstart[8] = "Nov 1 2018";
$weekend[8] = "Nov 6 2018";
$weekgametypeid[8] = 2;

$weekstart[9] = "Nov 8 2018";
$weekend[9] = "Nov 13 2018";
$weekgametypeid[9] = 2;

$weekstart[10] = "Nov 15 2018";
$weekend[10] = "Nov 20 2018";
$weekgametypeid[10] = 2;

$weekstart[11] = "Nov 22 2018";
$weekend[11] = "Nov 27 2018";
$weekgametypeid[11] = 2;

$weekstart[12] = "Nov 29 2018";
$weekend[12] = "Dec 4 2018";
$weekgametypeid[12] = 2;

$weekstart[13] = "Dec 6 2018";
$weekend[13] = "Dec 11 2018";
$weekgametypeid[13] = 2;

$weekstart[14] = "Dec 13 2018";
$weekend[14] = "Dec 18 2018";
$weekgametypeid[14] = 2;

$weekstart[15] = "Dec 20 2018";
$weekend[15] = "Dec 25 2018";
$weekgametypeid[15] = 2;

$weekstart[16] = "Dec 27 2018";
$weekend[16] = "Dec 31 2018";
$weekgametypeid[16] = 2;

$weekstart[17] = "Jan 3 2019";
$weekend[17] = "Jan 7 2019";
$weekgametypeid[17] = 3;

$weekstart[18] = "Jan 12 2019";
$weekend[18] = "Jan 14 2019";
$weekgametypeid[18] = 3;

$weekstart[19] = "Jan 20 2019";
$weekend[19] = "Jan 21 2019";
$weekgametypeid[19] = 3;

$weekstart[20] = "Feb 3 2019";
$weekend[20] = "Feb 4 2019";
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
