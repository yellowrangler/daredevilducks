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
$modulecontent = "Unable to access ddd seasonweeks for new season weeks.";
include_once ("mysqlconnect.php");

$seasonweekscount = 1;
$totalseasonweekscount = count($seasonArray);

foreach($seasonArray as $seasonweeksKey => $seasonweeksValue) 
{
	// 
	// these are the seasonweekss
	// 
	$season = $seasonweeksValue['season'];
	$week = $seasonweeksValue['week'];

	$unixTS = strtotime($seasonweeksValue['weekstart']);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$startdateTS = $mysqlTS;

	$unixTS = strtotime($seasonweeksValue['weekend']);
	$mysqlTS = date("Y-m-d H:i:s", $unixTS);
	$enddateTS = $mysqlTS;

	// 
	// current date time
	// 
	$datetime = date("Y-m-d H:i:s");
	$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

	$gametypeid = $seasonweeksValue['gametypeid'];

	// 
	// if data is there update otherwise insert
	// 
	$sql = "SELECT * FROM gameweekstbl WHERE season = $season AND week = $week";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to find gameweek for season = $sesson and week = $week.";
	include ('mysqlquery.php');

	$count = mysqli_num_rows($sql_result);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$function = "update";

		$sql = "UPDATE gameweekstbl 
			SET season = $season, 
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
		$function = "insert";

		$sql = "INSERT INTO gameweekstbl 
		(season, week, weekstart, weekend, enterdate)  
		VALUES ( $season, 
		$week, 
		'$startdateTS', 
		'$enddateTS',
		'$enterdateTS' )";	
	}

	//
	// sql query
	//
	// $modulecontent = "Unable to do $function for gameweek for season = $sesson and week = $week.";
	// include ('mysqlquery.php');

	echo $sql . $lr;

	$seasonweekscount = $seasonweekscount + 1;
}

print  "$lr";
print "Season Week Count = $seasonweekscount";
print  "$lr";

?>