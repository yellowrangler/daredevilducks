<?php

echo "makegametimestamp started";

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

//------------------------------------------------------
// get season
//------------------------------------------------------
$season = "";
if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else if (isset($_GET["season"]))
{
	$season = $_GET["season"];
}
else 
{
	echo "No season passed - makegametimestamp terminated";
	exit();
}

//------------------------------------------------------
// validate season
//------------------------------------------------------
if (is_numeric($season))
{
	echo "season passed - $season";
}
else
{
	echo "Invalid season passed: $season - makegametimestamp terminated";
	exit();
}

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
$sql = "SELECT * FROM gamestbl where season = '$season'";
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

	$gamedate = $r['gamedate'];
	// $season = $r['season'];	                  This was used when entire db was scanned now pass year
	$dateYearArray = explode(" ", $gamedate);
	if ($dateYearArray[0] == "Jan")
	{
		$year = $season + 1;
	}
	else if ($dateYearArray[0] == "Feb")
	{
		$year = $season + 1;
	}
	else
	{
		$year = $season;
	}

	// echo "gamedate:".$gamedate."</br>";
	// echo "dateYearArray:".$dateYearArray."</br>";
	// echo "year:".$year."</br>";
	
	$datetime = $r['gamedate'] . " " . $year . " " .$gametime;
	echo $datetime; echo " string<br/>"; 
	$unixTS = strtotime($datetime);
	echo $unixTS; echo " unix<br/>"; 
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	echo $mysqlTS; echo " mysql<br/><br/>"; 

	$gamedatetime = $mysqlTS;
	$id = $r['id'];

	$sql = "UPDATE gamestbl SET gamedatetime = '$gamedatetime', gametime = '$gametime', 
		gameyear = '$year', enterdate = '$enterdateTS' WHERE id = $id";
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
echo "makegametimestamp successful";
exit();

?>
