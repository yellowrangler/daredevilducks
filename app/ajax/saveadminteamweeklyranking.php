<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//
function validateFullRow($row)
{
	$retmsg = "";

	foreach($row as $key => $value)
	{
		if ($value == "")
		{
			$retmsg = "Error: No value for " . $key . " with teamid ". row["team"] . ". Data not saved!";
		}
	}
    
    return $retmsg;
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

//
// set variables
//
$enterdate = $datetime;

$currentRowArray = [
    "team" => "",
    "season" => "",
    "week" => "",
    "pw" => "",
    "oo" => "",
    "os" => "",
    "op" => "",
    "or" => "",
    "do" => "",
    "ds" => "",
    "dp" => "",
    "dr" => ""
];


$teamRankRecordArray[] = "";
$msg = "";

$msgtext = "";
$msgtext = $msgtext . "Starting Save Team Weekly Ranking.";


//
// record count variables
//
$currentrecordcount = 0;

foreach($_POST as $key => $value)
{
	//
	// check for team
	//
	$labelcount = substr_count($key, "team");
	if ($labelcount > 0)
	{
		if ($currentRowArray["team"] == "")
		{
			$currentRowArray["team"] = $value;
		}
		else
		{
			$msg = validateFullRow($currentRowArray);
			if ($msg != "")
			{
				$msgtext = $msgtext . $msg;
				exit($msgtext);
			}

			//
			// add row to array
			//
			$teamRankRecordArray [$currentrecordcount] = $currentRowArray;
			$currentrecordcount = $currentrecordcount + 1;

			//
			//  clear counting variables except row count
			//
			foreach($currentRowArray as $ckey => $cvalue)
			{
				$currentRowArray[$ckey] = "";
			}	

			//
			// now add the new current key in
			//
			$currentRowArray["team"] = $value;	
		}

		continue;
	}


	foreach($currentRowArray as $crakey => $cravalue)
	{
		if (substr_count($crakey, "team") > 0)
		{
			continue;
		}

		$teamcount = substr_count($key, $currentRowArray["team"]);
		$labelcount = substr_count($key, $crakey);
		if ($labelcount > 0 && $teamcount > 0)
		{
			if ($cravalue == "")
			{
				$currentRowArray[$crakey] = $value;
			}
			else
			{

				$msgtext = $msgtext . "Error: Double value or wrong teamid for " . $key . " and teamid = ". $currentteamidnbr . ". Data not saved!";
				exit($msgtext);
			}
			break;
		}
	}
	
}

//
// last man standing
//
if ($currentrecordcount > 1)
{
	$msg = validateFullRow($currentRowArray);
	if ($msg != "")
	{
		$msgtext = $msgtext . $msg;
		exit($msgtext);
	}
}
	

//
// add row to array
//
$teamRankRecordArray [$currentrecordcount] = $currentRowArray;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

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
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get admin team weekly rankings information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get admin team weekly rankings information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$nbrInserted = 0;
$nbrUpdated = 0;
//---------------------------------------------------------------
// get admin team weekly rankings information
//---------------------------------------------------------------
$teamcount = 0;
foreach($teamRankRecordArray as $key => $rowArray) {

	//
	// increment team count
	//
    $teamcount = $teamcount + 1;

	//
	// build column variables from array
	//
	$season = $rowArray["season"];
	$week = $rowArray["week"];
	$teamid = $rowArray["team"];
	$powerranking = $rowArray["pw"];
	$offencescoring = $rowArray["os"];
	$offencepassing = $rowArray["op"];
	$offencerushing = $rowArray["or"];
	$offencetotal = $rowArray["oo"];
	$defencescoring = $rowArray["ds"];
	$defencepassing = $rowArray["dp"];
	$defencerushing = $rowArray["dr"];
	$defencetotal = $rowArray["do"];

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
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to find team weekly ranking for $teamid.");
	    $log->writeLog("SQL: $sql");

	    $status = -100;
	    $msg = $msg . "SQL error: $sqlerr <br /> Error doing select to db Unable to find team weekly ranking for $teamid.<br /> SQL: $sql";
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
		// $msgtext = $msgtext .  "<br/> sql update:$sql<br/> ";

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
		// $msgtext = $msgtext .  "sql insert:$sql<br/>";

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

} // end of foreach 


//
// close db connection
//
mysql_close($dbConn);

//
// close message
//
$msgtext = $msgtext . "<br /> Details: Season: $season. Week: $week. Team count: $teamcount.";
$msgtext = $msgtext . "<br /> Totals: Rows read: $filerow. Number Inserted: $nbrInserted. Number Updated: $nbrUpdated.";


//
// pass back info
//
exit($msgtext);

?>