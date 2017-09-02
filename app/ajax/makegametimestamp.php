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
$msg = "";
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
	$msg = $msg . "No season passed - makegametimestamp terminated";
	exit($msg);
}

//------------------------------------------------------
// validate season
//------------------------------------------------------
if (is_numeric($season))
{
	$msg = $msg . "season passed - $season <br />";
}
else
{
	$msg = $msg . "Invalid season passed: $season - makegametimestamp terminated <br />";
	exit($msg);
}

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to makegametimestamp. season = $season.");

	$msg = $msg . "DB error: $dberr - Error mysql connect. Unable to makegametimestamp. season = $season.";
	exit($msg);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to makegametimestamp. season = $season.");

	$msg = $msg . "DB error: $dberr - Error selecting db Unable to makegametimestamp. season = $season.";
	exit($msg);
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
	$log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to makegametimestamp. season = $season.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to makegametimestamp. season = $season.<br /> SQL: $sql";
	exit($msg);
}

//
// update gametimestamp field
//
$totalgames = 0;
while($r = mysql_fetch_assoc($sql_result)) {
	$totalgames = $totalgames + 1;

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
	$msg = $msg . "datetime" . $datetime . " string<br/>"; 

	$unixTS = strtotime($datetime);
	$msg = $msg . "unixTS" . $unixTS . " unix<br/>"; 

	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$msg = $msg .  "mysqlTS" . $mysqlTS . " mysql<br/><br/>"; 

	$gamedatetime = $mysqlTS;
	$id = $r['id'];

	$sql = "UPDATE gamestbl SET gamedatetime = '$gamedatetime', gametime = '$gametime', 
		gameyear = '$year', enterdate = '$enterdateTS' WHERE id = $id";
	$sql_result_update = @mysql_query($sql, $dbConn);
	if (!$sql_result_update)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to makegametimestamp. season = $season.");
	    $log->writeLog("SQL: $sql");

	    $status = -270;
	    $msgtext = "System Error: $sqlerr";	
	}
}

$msg = $msg . "makegametimestamp successful. Total games $totalgames";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($msg);

?>
