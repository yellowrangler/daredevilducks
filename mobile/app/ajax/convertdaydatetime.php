<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// db connect
//
$modulecontent = "Unable to convert day time.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get game information
//---------------------------------------------------------------
$sql = "SELECT * FROM gamestbl";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to select games.";
include ('mysqlquery.php');

//
// update gametimestamp field
//
while($r = mysqli_fetch_assoc($sql_result)) {
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

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to update games date time info.";
	include ('mysqlquery.php');
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit();

?>
