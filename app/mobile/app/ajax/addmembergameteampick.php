<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//

//
// I added this logic becaue someone gotin with no season or week
// I assume there wre other empty parms but I feel if these are gone
// we are in deep poop. So stop the show here
//
if (isset($_POST["season"]))
{
	$season = $_POST["season"];
}
else
{
	if (isset($_GET["season"]))
	{
		$season = $_GET["season"];
	}
	else
	{
		$log = new ErrorLog("logs/");
		$msgtext = "Error: Bad data passed in!";
		$log->writeLog("Data error: $msgtext - No Season. Unable to add member game pick for ddd member $memberid. Contact Airdreamer!");
		exit($msgtext);
	}
}

if (isset($_POST["week"]))
{
	$week = $_POST["week"];
}
else
{
	if (isset($_GET["week"]))
	{
		$week = $_GET["week"];
	}
	else
	{
		$log = new ErrorLog("logs/");
		$msgtext = "Error: Bad data passed in!";
		$log->writeLog("Data error: $msgtext - No week. Unable to add member game pick for ddd member $memberid. Contact Airdreamer!");
		exit($msgtext);

	}
}

if (isset($_POST["memberid"]))
{
	$memberid = $_POST["memberid"];
}
else
{
	if (isset($_GET["memberid"]))
	{
		$memberid = $_GET["memberid"];
	}
	else
	{
		$log = new ErrorLog("logs/");
		$msgtext = "Error: Bad data passed in!";
		$log->writeLog("Data error: $msgtext - No memberid. Unable to add member game pick for ddd member $memberid. Contact Airdreamer!");
		exit($msgtext);
	}
}

$strCut = "pick_";
$gamenbr = "";
$teamid = "";
$msgtext = "ok";

//
// collect the data coming in. 
//
$post = $_POST; 
$count = 0;
$gameArray = Array();
$teamArray = Array();
$gamenumberDuplicate = ""; 
foreach ( $post as $key=>$value )
{
	$pos = strpos($key, $strCut);
	if ($pos === false)
	{
		continue;
	}
	
	$gameArray[$count] = str_replace($strCut, "", $key);
	$teamArray[$count] = $value;

	$count = $count + 1;
}
  
//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");

//------------------------------------------------------
// get admin member info
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to add member game pick for ddd member $memberid.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to add member game pick for ddd member $memberid.");

	$rv = "";
	exit($rv);
}

//
// Get total games to pick for week
//
$sql = "SELECT count(*) AS gamescount FROM gamestbl WHERE season = $season and week = $week";

$sql_result_check = @mysql_query($sql, $dbConn);
if (!$sql_result_check)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select for game count. Unable to add member game pick.");
    $log->writeLog("SQL: $sql");

    $status = -110;
    $msgtext = "System Error: $sqlerr";
    exit($msgtext);
}

$r = mysql_fetch_assoc($sql_result_check);
$gamescount = $r['gamescount'];

//
// Validate team pick data. We have been getting duplicate picks for same/different teams.
//

// if teams picked greater then games to pick out you go
if ($count > $gamescount)
{
	$log = new ErrorLog("logs/");
	$msgtext = "Error: Too many teams picked! Contact Airdreamer!";
	$log->writeLog("Format error: $msgtext - Error with format from JS. Picked: $count. Games: $gamescount. Unable to add member game pick for ddd member $memberid.");

	exit($msgtext);
}

// if no teams picked out you go
if ($count == 0)
{
	$log = new ErrorLog("logs/");
	$msgtext = "Error: No teams picked!";
	$log->writeLog("Format error: $msgtext - Error with format from JS. Unable to add member game pick for ddd member $memberid. Contact Airdreamer!");

	exit($msgtext);
}

// if duplicate teams picked out you go
$teamDiffArray = array_diff_assoc( $teamArray, array_unique( $teamArray ) );
$diffCount = count($teamDiffArray);  
if (diffCount > 0)
{
	$log = new ErrorLog("logs/");
		$msgtext = "Error: Duplicate teams picked!";
	$log->writeLog("Format error: $msgtext - Error with format from JS. Unable to add member game pick for ddd member $memberid. Contact Airdreamer!");

	exit($msgtext);
}

//
// now loop through the picks
//
for ( $j = 0; $j < $count; $j++ )
{
	$gamenbr = $gameArray[$j];
	$teamid = $teamArray[$j];

	//---------------------------------------------------------------
	// if we have this already then update else insert
	//---------------------------------------------------------------
	$sql = "SELECT memberid 
	FROM  memberpickstbl 
	WHERE memberid = $memberid and season = $season and week = $week and gamenbr = $gamenbr";

	$sql_result_check = @mysql_query($sql, $dbConn);
	if (!$sql_result_check)
	{
	    $log = new ErrorLog("logs/");
	    $sqlerr = mysql_error();
	    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to add member game pick.");
	    $log->writeLog("SQL: $sql");

	    $status = -110;
	    $msgtext = "System Error: $sqlerr";
	}

	$num_rows = mysql_num_rows($sql_result_check);

	if ($num_rows == 0)
	{
		//-----------------------------------------------------------------
		// add games picks for this week that are for this memberid
		//-----------------------------------------------------------------
		$sql = "INSERT INTO memberpickstbl
			(
			 season, week, gamenbr, memberid, teamid, enterdate
			 ) VALUES (
			'$season', 
			'$week', 
			'$gamenbr', 
			'$memberid', 
			'$teamid', 		
			'$enterdateTS' )"; 

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
			$log = new ErrorLog("logs/");
			$sqlerr = mysql_error();
			$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to add member game pick for ddd member $memberid.");
			$log->writeLog("SQL: $sql");

			$rc = -100;
			$msgtext = "System Error: $sqlerr. sql = $sql";

			exit($msgtext);
		}
	}
	else
	{
		//-----------------------------------------------------------------
		// add games picks for this week that are for this memberid
		//-----------------------------------------------------------------
		$sql = "UPDATE memberpickstbl
			 SET season='$season', week='$week', 
			 gamenbr='$gamenbr', memberid='$memberid', 
			 teamid='$teamid', enterdate='$enterdateTS'
			 WHERE memberid = $memberid AND season = $season AND week = $week AND gamenbr = $gamenbr";

		$sql_result = @mysql_query($sql, $dbConn);
		if (!$sql_result)
		{
			$log = new ErrorLog("logs/");
			$sqlerr = mysql_error();
			$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to add member game pick for ddd member $memberid.");
			$log->writeLog("SQL: $sql");

			$rc = -100;
			$msgtext = "System Error: $sqlerr. sql = $sql";

			exit($msgtext);
		}
	}
} 

// &pick_17=8&pick_25=25&pick_22=21&pick_19=26&pick_20=7&pick_24=18&pick_23=31&pick_18=1&pick_21=19&pick_26=29&pick_27=32&pick_29=2&pick_30=10&pick_28=16&pick_31=30&pick_32=12  

// 
// close db connection
// 
mysql_close($dbConn);

//
// pass back info
//

exit($msgtext);
?>
