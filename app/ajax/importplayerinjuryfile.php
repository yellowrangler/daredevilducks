<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
//  set global values
//
$msgtext = "";
$teaminjuryfieldnbr = 5;
$importfiledirectory = "../../data/importfiles/";

$playerIdx = 0;
$teamIdx = 1;
$posIdx = 2;
$injuryIdx = 3;
$statusIdx = 4;

$player = "";
$team = "";
$pos = "";
$injury = "";
$status = "";

$nbrInserted = 0;
$nbrUpdated = 0;

//
// post input
//
if( isset($_POST['importplayerinjuryfile']) )
{
	$importplayerinjuryfile = $_POST['importplayerinjuryfile']; 
}
else
{
	$msgtext = "Invalid post";
	exit($msgtext);
}


if( isset($_POST['season']) )
{
	$season = $_POST['season']; 
}
else
{
	$msgtext = "Invalid post";
	exit($msgtext);
}

if( isset($_POST['week']) )
{
	$week = $_POST['week']; 
}
else
{
	$msgtext = "Invalid post";
	exit($msgtext);
}

//
// show file name passed in
//
$msgtext = $msgtext . "Input Parameters: Import FileName: $importplayerinjuryfile  Season: $season  Week: $week";

// print_r($_POST);
// die()

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// // create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// db connect
//
$modulecontent = "Unable to update team injury for ddd file $importplayerinjuryfile.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// read csv file
//---------------------------------------------------------------
$fullyqualifiedimportfilename = $importfiledirectory . $importplayerinjuryfile;
if (!file_exists ($fullyqualifiedimportfilename) )
{
	$msgtext = "File $fullyqualifiedimportfilename does not exist!";
	exit($msgtext);
}

//---------------------------------------------------------------
// see if player injury for season and week already exits
//---------------------------------------------------------------
$sql = "SELECT id as teaminjuryid 
FROM  playerinjurytbl 
WHERE season = $season AND week = $week";

// 
// sql query
//
$function = "select";
$modulecontent = "Unable to find player injury record";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$count = mysqli_num_rows($sql_result_check);
if ($count > 0)
{
	$sql = "DELETE FROM playerinjurytbl WHERE season = $season AND week = $week"; 
}

// 
// sql query
//
$function = "delete";
$modulecontent = "Unable to delete player injury records";
include ('mysqlquery.php');
$sql_result_delete = $sql_result;

$filerow = 0;
$handle = fopen("$fullyqualifiedimportfilename", "r");
while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
	$filerow++;

    $num = count($data);

    // 
    // first row is header
    //
    if ($filerow == 1)
    {
    	continue;
    }

	if ($num != $teaminjuryfieldnbr)
	{
		$msgtext = $msgtext . "<p> Invalid column  count: $num <br /></p>\n";
		exit($msgtext);
	}

	//
	// build column variables from row
	//
	$playerTmp = $data[$playerIdx];
	$player = mysqli_real_escape_string($dbConn, $playerTmp);

	$team = $data[$teamIdx];
	$pos = $data[$posIdx];

	$injuryTmp = $data[$injuryIdx];
	$injury = mysqli_real_escape_string($dbConn, $injuryTmp);

	$status = $data[$statusIdx];

	// 
	// do insert
	// 
	$sql = "INSERT INTO playerinjurytbl 
		(season, week, teamid, playername, position, injury, status,enterdate) 
		VALUES ($season, $week, $team, '$player', '$pos', '$injury', '$status', '$enterdateTS')";
		
	// print($sql);
	 	
	//
	// sql query
	//
	$function = "insert";
	$modulecontent = "Unable to insert playerinjurytbl.";
	include ('mysqlquery.php');
	$sql_result_insert = $sql_result;

	$nbrInserted = $nbrInserted + 1;
	

} // end of while 

//
// close import file
//
fclose($handle);

// 
// close db connection
// 
mysqli_close($dbConn);

//
// final message 
//
$msgtext = $msgtext . "<br />Totals: Rows read: $filerow. Number Inserted: $nbrInserted.";

//
// pass back info
//

exit($msgtext);
?>
