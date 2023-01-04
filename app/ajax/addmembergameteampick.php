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
		$log->writeLog("Data error: $msgtext - No Season. Unable to add member game pick for ddd member. Contact Airdreamer!");
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
		$log->writeLog("Data error: $msgtext - No week. Unable to add member game pick for ddd member. Contact Airdreamer!");
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
		$log->writeLog("Data error: $msgtext - No memberid. Unable to add member game pick for ddd member. Contact Airdreamer!");
		exit($msgtext);
	}
}

if ($memberid == 37)
{
	exit('Account Closed');
}


$strCut = "pick_";
$gamenbr = "";
$teamid = "";
$msgtext = "ok";

$action = "addmember";
$module= "addmembergameteampick.php";

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

// print "game array  ";
// print_r($gameArray);
// print "  team array  ";
// print_r($teamArray);

// 
// messaging
//
$returnArrayLog = new AccessLog("logs/");

//
// db connect
//
$modulecontent = "Unable to add member game pick for ddd member $memberid.";
include_once ('mysqlconnect.php');

//
// Get total games to pick for week
//
$sql = "SELECT count(*) AS gamescount FROM gamestbl WHERE season = $season and week = $week";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_result_check = $sql_result;

$r = mysqli_fetch_assoc($sql_result_check);
$gamescount = $r['gamescount'];

//
// Validate team pick data. We have been getting duplicate picks for same/different teams.
//

// if teams picked greater then games to pick out you go
if ($count > $gamescount)
{
	$log = new ErrorLog("logs/");
	$msgtext = "Error: Too many teams picked! Contact Airdreamer!";
	$log->writeLog("Format error: $msgtext - Error with format from JS. Picked: $count. Games: $gamescount. ");

	exit($msgtext);
}

// if no teams picked out you go
if ($count == 0)
{
	$log = new ErrorLog("logs/");
	$msgtext = "Error: No teams picked!";
	$log->writeLog("Format error: $msgtext - Error with format from JS. $modulecontent. Contact Airdreamer!");

	exit($msgtext);
}

// if duplicate teams picked out you go
$teamUniqueArray = Array();
$teamDiffArray = Array();
$teamUniqueArray = array_unique( $teamArray );
$teamDiffArray = array_diff_assoc( $teamArray, $teamUniqueArray);
$diffCount = count($teamDiffArray);  

if ($diffCount > 0)
{
	$log = new ErrorLog("logs/");
	$msgtext = "Error: Duplicate teams picked!";
	// $log->writeLog("Format error: $msgtext - Error with format from JS. $modulecontent. Contact Airdreamer!");

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

	
	//
	// sql query
	//
	$function = "select";
	include ('mysqlquery.php');
	$sql_result_check = $sql_result;

	$num_rows = mysqli_num_rows($sql_result_check);

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
			// print "this is insert sql: $sql";

		//
		// sql query
		//
		$function = "insert";
		include ('mysqlquery.php');
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

		//
		// sql query
		//
		$function = "update";
		include ('mysqlquery.php');
	}

} 

// &pick_17=8&pick_25=25&pick_22=21&pick_19=26&pick_20=7&pick_24=18&pick_23=31&pick_18=1&pick_21=19&pick_26=29&pick_27=32&pick_29=2&pick_30=10&pick_28=16&pick_31=30&pick_32=12  

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//

exit($msgtext);
?>
