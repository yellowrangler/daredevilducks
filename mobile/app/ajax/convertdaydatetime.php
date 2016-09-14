<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

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
// Get game information
//---------------------------------------------------------------
$sql = "SELECT * FROM gamestbl";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	echo mysql_error();
	exit();	
}

//
// update gametimestamp field
//
while($r = mysql_fetch_assoc($sql_result)) {
	// format required "sep 4 2014 8:30 pm";
	if ($r['gametime'] == "TBD")
	{
		$gametime = "4:30 PM";
	}
	else
	{
		$gametime = $r['gametime'];
	}

	$datetime = $r['gamedate'] . " " . $r['season'] . " " .$gametime;
	echo $datetime; echo " string<br/>"; 
	$unixTS = strtotime($datetime);
	echo $unixTS; echo " unix<br/>"; 
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	echo $mysqlTS; echo " mysql<br/><br/>"; 

	$gamedatetime = $mysqlTS; 
	$datetimestr = strtotime($gamedatetime);
	$gameday = date("D",$datetimestr); 
	$gametime = date("g:i a",$datetimestr); 
	$gamedate = date("M j",$datetimestr);

	$id = $r['id'];

	$sql = "UPDATE gamestbl 
	SET gameday = '$gameday', 
	gametime = '$gametime', 
	gamedate = '$gamedate', 
	enterdate = '$enterdateTS' WHERE id = $id";

	echo "sql = " . $sql . "<br />";
	
	$sql_result_update = @mysql_query($sql, $dbConn);
	if (!$sql_result_update)
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
