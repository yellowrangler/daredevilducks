<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
//  set global values
//
$msgtext = "";
$teamrankfieldnbr = 13;
$importfiledirectory = "../../data/importfiles/";

$rownbrIdx = 0;
$seasonIdx = 1;
$weekIdx = 2;
$teamnameIdx = 3;
$powerrankingIdx = 4;
$offencescoringIdx = 5;
$offencepassingIdx = 6;
$offencerushingIdx = 7;
$offencetotalIdx = 8;
$defencescoringIdx = 9;
$defencepassingIdx = 10;
$defencerushingIdx = 11;
$defencetotalIdx = 12;

$rownbr = 0;
$season = 0;
$week = 0;
$teamname = 0;
$powerranking = 0;
$offencescoring = 0;
$offencepassing = 0;
$offencerushing = 0;
$offencetotal = 0;
$defencescoring = 0;
$defencepassing = 0;
$defencerushing = 0;
$defencetotal = 0;

$teamid = 0;

$nbrInserted = 0;
$nbrUpdated = 0;

$seasonReport = 0;
$weekReport = 0;

//
// post input
//
if( isset($_POST['importteamweeklyrankfile']) )
{
	$importteamweeklyrankfile = $_POST['importteamweeklyrankfile']; 
}
else
{
	$msgtext = "Invalid post";
	exit($msgtext);
}

//
// show file name passed in
//
$msgtext = $msgtext . "Input Parameters: Import FileName: $importteamweeklyrankfile";

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
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Add member request started" );

//------------------------------------------------------
// get ddd access
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
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update team weekly ranking for ddd file $importteamweeklyrankfile.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update team weekly ranking for ddd file $importteamweeklyrankfile.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// read csv file
//---------------------------------------------------------------
$fullyqualifiedimportfilename = $importfiledirectory . $importteamweeklyrankfile;
if (!file_exists ($fullyqualifiedimportfilename) )
{
	$msgtext = "File $fullyqualifiedimportfilename does not exist!";
	exit($msgtext);
}


$filerow = 0;
$handle = fopen("$fullyqualifiedimportfilename", "r");
while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
	$filerow++;

    $num = count($data);
    // $msgtext = $msgtext . "<p> $num fields in line $filerow<br /></p>\n";

    // 
    // first row is header
    //
    if ($filerow == 1)
    {
    	continue;
    }

	if ($num != $teamrankfieldnbr)
	{
		$msgtext = $msgtext . "<p> Invalid column  count: $num <br /></p>\n";
		exit($msgtext);
	}

	//
	// build column variables from row
	//
	$rownbr = $data[$rownbrIdx];
	$season = $data[$seasonIdx];
	$week = $data[$weekIdx];
	$teamname = $data[$teamnameIdx];
	$powerranking = $data[$powerrankingIdx];
	$offencescoring = $data[$offencescoringIdx];
	$offencepassing = $data[$offencepassingIdx];
	$offencerushing = $data[$offencerushingIdx];
	$offencetotal = $data[$offencetotalIdx];
	$defencescoring = $data[$defencescoringIdx];
	$defencepassing = $data[$defencepassingIdx];
	$defencerushing = $data[$defencerushingIdx];
	$defencetotal = $data[$defencetotalIdx];

	//
	// show season and week
	//
	if ($seasonReport != $season || $weekReport != $week)
	{
		$msgtext = $msgtext . "<br />Import for - Season: $season. Week: $week.";

		$seasonReport = $season;
		$weekReport = $week;
	}
	

	//---------------------------------------------------------------
	// get team id
	//---------------------------------------------------------------
	$sql = "SELECT id as teamid 
	FROM  teamstbl 
	WHERE name = '$teamname'";

	$sql_result_prime = @mysql_query($sql, $dbConn);
	if (!$sql_result_prime)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to find team name for team weekly ranking for name $teamname.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to find team name for team weekly ranking for name $teamname.<br /> SQL: $sql";
		exit($msg);
	}

	$count = mysql_num_rows($sql_result_prime);
	if ($count == 0)
	{
		$msg = $msg . "<br />Cant find team for name $teamname.";
		exit($msg);
	}

	$row = mysql_fetch_assoc($sql_result_prime);
	$teamid = $row['teamid'];


	//---------------------------------------------------------------
	// see if this teams ranking already exits
	//---------------------------------------------------------------
	$sql = "SELECT id as teamweekrankid 
	FROM  teamweekranktbl 
	WHERE season = $season AND week = $week and teamid = $teamid";

	$sql_result_check = @mysql_query($sql, $dbConn);
	if (!$sql_result_check)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to find team name for team weekly ranking for name $teamname.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to find team name for team weekly ranking for name $teamname.<br /> SQL: $sql";
		exit($msg);
	}

	$count = mysql_num_rows($sql_result_check);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE teamweekranktbl 
			SET season = $season, week = $week, teamid = $teamid, powerranking = $powerranking,
			offencetotal = $offencetotal, offencepassing = $offencepassing, offencerushing = $offencerushing, 
			offencescoring = $offencescoring, defencetotal = $defencetotal, defencepassing = $defencepassing, 
			defencerushing = $defencerushing, defencescoring = $defencescoring, 
			enterdate = '$enterdateTS' 
			WHERE season = $season AND week = $week and teamid = $teamid";

		// debug
		// $msg = $msg .  "<br/> sql update:$sql<br/> ";

		$sql_result_update = @mysql_query($sql, $dbConn);
		if (!$sql_result_update)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to update teamweekranktbl.");
		    $log->writeLog("SQL: $sql");

		    $status = -250;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to update teamweekranktbl.<br />SQL: $sql";
			exit($msg);
		}	

		$nbrUpdated = $nbrUpdated + 1;
	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO teamweekranktbl 
			(season, week, teamid, powerranking, offencetotal, offencepassing, offencerushing, 
			 offencescoring, defencetotal, defencepassing, defencerushing, defencescoring, enterdate) 
			VALUES ($season, $week, $teamid, $powerranking, $offencetotal, $offencepassing, $offencerushing, 
			 $offencescoring, $defencetotal, $defencepassing, $defencerushing, $defencescoring, '$enterdateTS')";
			
		// debug
		// $msg = $msg .  "sql insert:$sql<br/>";

		$sql_result_insert = @mysql_query($sql, $dbConn);
		if (!$sql_result_insert)
		{
		    $log = new ErrorLog("logs/");
		    $sqlerr = mysql_error();
		    $log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to insert teamweekranktbl.");
		    $log->writeLog("SQL: $sql");

		    $status = -260;
		    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to insert teamweekranktbl.<br />SQL: $sql";
			exit($msg);
		}

		$nbrInserted = $nbrInserted + 1;
	}

} // end of while 

//
// close import file
//
fclose($handle);

// 
// close db connection
// 
mysql_close($dbConn);

//
// final message 
//

$msgtext = $msgtext . "<br />Totals: Rows read: $filerow. Number Inserted: $nbrInserted. Number Updated: $nbrUpdated.";

//
// pass back info
//

exit($msgtext);
?>
