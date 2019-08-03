<?php

// 
// if was run with error and must delete all entries 
// find last highest id for table and use next number as insert
// id so dont get big gap in mysql auto ids 
// 

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

$csvfiledirectory = "../../data/importfiles/";
// $csvfiledirectory = "../../rubyscripts/";

// $lr = "\n";
$lr = "<br>";
$dontShowSql = 0;

//
// get input
//
$csvfile = "";
if (isset($_POST["csvfile"]))
{
	$dontShowSql = 1;
	$csvfile = $_POST["csvfile"];
}
else
{
	if (isset($_GET["csvfile"]))
	{
		$csvfile = $_GET["csvfile"];
	}
	else
	{
		$msgtext = "Invalid parm csvfile";
		exit($msgtext);
	}
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
$modulecontent = "Unable to access ddd game info for new season.";
include_once ("mysqlconnect.php");

$gamecount = 1;
$totalgamecount = count($seasonArray);

foreach($seasonArray as $gameKey => $gameValue) 
{
	// 
	// these are the games
	// 
	$gametypeid = $gameValue['gametypeid'];
	if ($gametypeid == '3')
	{
		// print "<br>$gametypeid Continue</br>";
		// print "<br>" . print_r($gameValue)  . "</br>";
		continue;
	}

	// 
	// get home and visiting team id from team name
	// 
	$sql = "";
	$sql = "select id as hometeamid from teamstbl where name ='" . $gameValue['hometeam'] . "'";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to access ddd team game info for new season. key = " . $gameValue['hometeam'];
	include ("mysqlquery.php");

	$r = mysqli_fetch_assoc($sql_result);
	$hometeamid = $r['hometeamid'];

	$sql = "";
	$sql = "select id as awayteamid from teamstbl where name ='" . $gameValue['awayteam'] . "'";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to access ddd team game info for new season. key = " . $gameValue['awayteam'];
	include ("mysqlquery.php");

	$r = mysqli_fetch_assoc($sql_result);
	$awayteamid = $r['awayteamid'];

	// 
	// get tv id from tv name
	// 
	$sql = "SELECT id as networkid FROM gamenetworktbl WHERE network = '" . $gameValue['network'] . "'";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to access ddd team game info for new season. key = " . $gameValue['network'];
	include ("mysqlquery.php");

	$r = mysqli_fetch_assoc($sql_result);
	$networkid = $r['networkid'];

	// 
	// build the detail insert sql
	// 
	$id = $gamecount;
	$season = $gameValue['season'];
	$week = $gameValue['week'];
	$gamenbr = $gamecount;
	$gamedate = $gameValue['date'];
	$gametime = $gameValue['time'];
	$awayteamscore = 0;
	$hometeamscore = 0;

	// 
	// Make gamedatetime, gameday and game year
	// 
	$datetime = $gamedate . " " . $gametime;
	$unixTS = strtotime($datetime);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);

	$gamedatetime = $mysqlTS;
	$gameday = date("D", $unixTS);
	$gameyear = date("Y", $unixTS);
	$gamedate = date("M j", $unixTS);

	// $gameday = $gameValue['day'];
	// $gameyear = $gameValue['gameyear'];
	// $datetime = $gameday . " " . $gamedate . " " . $gameyear . " " .$gametime;
	// $unixTS = strtotime($datetime);
	// $mysqlTS = date("Y-m-d H:i:s", $unixTS);
	// $gamedatetime = $mysqlTS;

	// 
	// current date time
	// 
	$datetime = date("Y-m-d H:i:s");
	$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

	// 
	// add game detail entries
	// 
	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT id as gameid FROM gamestbl 
	WHERE season = $season AND week = $week AND gamenbr = $gamenbr";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to find game for season = $season and week = $week.";
	include ('mysqlquery.php');

	$r = mysqli_fetch_assoc($sql_result);
	$gameid = $r['gameid'];

	$count = mysqli_num_rows($sql_result);
	if ($count > 0) {
		// 
		// do update
		// 
		$function = "update";

		$sql = "UPDATE gamestbl 
			SET season='$season',
			week='$week',
			gamenbr='$gamenbr',
			gamedate='$gamedate',
			gameyear='$gameyear',
			gameday='$gameday',
			networkid='$networkid',
			gametime='$gametime',
			hometeamid='$hometeamid',
			awayteamid='$awayteamid',
			hometeamscore='$hometeamscore',
			awayteamscore='$awayteamscore',
			gametypeid='$gametypeid',
			gamedatetime='$gamedatetime',
			enterdate='$enterdateTS'
			WHERE season = $season 
			AND week = $week 
			AND gamenbr = $gamenbr 
			AND id = $gameid";
	}
	else 
	{
		// 
		// do insert
		// 
		$function = "insert";

		$sql = "INSERT INTO gamestbl 
		(season, 
		week, 
		gamenbr, 
		gamedate, 
		gameday, 
		gameyear, 
		gametime, 
		gamedatetime, 
		networkid, 
		hometeamid, 
		awayteamid, 
		hometeamscore, 
		awayteamscore, 
		gametypeid, 
		enterdate)  
		VALUES  
		('$season', 
		'$week', 
		'$gamenbr', 
		'$gamedate', 
		'$gameday', 
		'$gameyear', 
		'$gametime', 
		'$gamedatetime', 
		'$networkid', 
		'$hometeamid', 
		'$awayteamid', 
		'$hometeamscore', 
		'$awayteamscore', 
		'$gametypeid', 
		'$enterdateTS')";		
	}

	//
	// sql query
	//
	$modulecontent = "Unable to do $function for game details for season = $sesson and week = $week.";
	include ('mysqlquery.php');

	$gamecount = $gamecount + 1;

	if ($dontShowSql == 0)
	{
		echo "<pre>" . $sql . "</pre>" . $lr;
	}
}

print  "$lr";
print "Record Count = $gamecount";
$gamecount = $gamecount - 1;
print  "$lr";
print "Game Count = $gamecount";
print  "$lr";
?>