<?php

//
// if was run with error and must delete all entries 
// find last highest id for table and use next number as insert
// id so dont get big gap in mysql auto ids 
// 

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

// $csvfiledirectory = "../../data/importfiles/";
$csvfiledirectory = "../../rubyscripts/";

// $lr = "\n";
$lr = "<br>";

//
// get input
//
$csvfile = ""; 
if( isset($_GET["csvfile"]) )
{
	$csvfile = $_GET['csvfile']; 
}
else
{
	$msgtext = "Invalid parm csvfile";
	exit($msgtext);
}

//---------------------------------------------------------------
// csv file
//---------------------------------------------------------------
$fullyqualifiedcsvfilename = $csvfiledirectory . $csvfile;
if (!file_exists ($fullyqualifiedcsvfilename) )
{
	$msgtext = "File $fullyqualifiedcsvfilename does not exist!";
	exit($msgtext);
}

if (($handle = fopen("$fullyqualifiedcsvfilename", "r")) === FALSE) {
    $msgtext = "File $fullyqualifiedcsvfilename error trying to open!";
	exit($msgtext);
}

// 
// read in csv file and add to array and compine with headers
// 
$headers = fgetcsv($handle, 1024, ',');
$seasonArray = array();

while ($row = fgetcsv($handle, 1024, ',')) {
    $seasonArray[] = array_combine($headers, $row);
}

fclose($handle);

//---------------------------------------------------------------
// seasonArray 
//---------------------------------------------------------------

//
// db connect
//
$modulecontent = "Unable to access ddd bye for new season.";
include_once ("mysqlconnect.php");

$byecount = 1;
$totalbyecount = count($seasonArray);

foreach($seasonArray as $byeKey => $byeValue) 
{
	// 
	// these are the byes
	// 

	// 
	// get bye teamid from team name
	// 
	$sql = "";
	$sql = "select id as teamid from teamstbl where name ='" . $byeValue['team'] . "'";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to access ddd bye team info for new season. key = " . $byeValue['hometeam'];
	include ("mysqlquery.php");

	$r = mysqli_fetch_assoc($sql_result);
	$teamid = $r['teamid'];

	// 
	// build the detail insert sql
	// 
	$id = $byecount;
	$season = $byeValue['season'];
	$week = $byeValue['week'];
	$gametypeid = $byeValue['gametypeid'];

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT id as gamebyeid FROM gamebyetbl 
	WHERE season = $season AND week = $week AND teamid = $teamid";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to find gameweek for season = $sesson and week = $week.";
	include ('mysqlquery.php');

	$r = mysqli_fetch_assoc($sql_result);
	$gamebyeid = $r['gamebyeid'];

	$count = mysqli_num_rows($sql_result);
	if ($count > 0) {
		// 
		// do update
		// 
		$function = "update";

		$sql = "UPDATE gamebyetbl 
			SET season = $season, 
			week = $week, 
			teamid = $teamid, 
			gametypeid = $gametypeid 
			WHERE season = $season AND week = $week AND id = $gamebyeid";
	}
	else {
		// 
		// do insert
		// 
		$function = "insert";

		$sql = "INSERT INTO gamebyetbl 
		(season, week, teamid, gametypeid)  
		VALUES ( $season, 
			$week, 
			$teamid, 
			$gametypeid)";		
	}

	//
	// sql query
	//
	// $modulecontent = "Unable to do $function for game byes for season = $sesson and week = $week.";
	// include ('mysqlquery.php');

	$byecount = $byecount + 1;

	echo "sql => " . $sql . $lr;
}

print  "$lr";
print "Game Count = $byecount";
print  "$lr";
?>