<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$trackrequest = "";
$parmset = "";
$parmvalue = "";

if (isset($_POST["trackrequest"]))
{
	$trackrequest = $_POST["trackrequest"];
}
else
{
	if (isset($_GET["trackrequest"]))
	{
		$trackrequest = $_GET["trackrequest"];
	}
	else
	{
		print("No trackrequest");
		die();
	}
}

if (isset($_POST["parmset"]))
{
	$parmset = $_POST["parmset"];
}
else
{
	if (isset($_GET["parmset"]))
	{
		$parmset = $_GET["parmset"];
	}
}

if (isset($_POST["parmvalue"]))
{
	$parmvalue = $_POST["parmvalue"];
}
else
{
	if (isset($_GET["parmvalue"]))
	{
		$parmvalue = $_GET["parmvalue"];
	}
}

$sqlselectallorderby = "SELECT 
  id,
  memberid,
  screenname,
  season,
  week,
  trackaction,
  trackmodule,
  tracktext,
  trackdate,
  device
FROM tracktbl  
ORDER BY id";

$sqlcountontrackaction = "SELECT screenname, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teamStand,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
GROUP BY screenname ";

$sqlgroupcountontrackaction = "SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
  COUNT(CASE WHEN trackaction = 'viewtotalpickgames' THEN 1 ELSE NULL END) AS viewPicks,
  COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
  COUNT(CASE WHEN trackaction = 'pickgames' THEN 1 ELSE NULL END) AS pickGames,
  COUNT(CASE WHEN trackaction = 'weekly totals' THEN 1 ELSE NULL END) AS playerWeekly,
  COUNT(CASE WHEN trackaction = 'player totals' THEN 1 ELSE NULL END) AS playerTls,  
  COUNT(CASE WHEN trackaction = 'hall of fame' THEN 1 ELSE NULL END) AS hof,
  COUNT(CASE WHEN trackaction = 'hall of memory' THEN 1 ELSE NULL END) AS hom,
  COUNT(CASE WHEN trackaction = 'team stats dialog' THEN 1 ELSE NULL END) AS teamStatDia,
  COUNT(CASE WHEN trackaction = 'team scores and stats' THEN 1 ELSE NULL END) AS teamScrsStat,
  COUNT(CASE WHEN trackaction = 'team standings' THEN 1 ELSE NULL END) AS teamStand,  
  COUNT(CASE WHEN trackaction = 'team discovery' THEN 1 ELSE NULL END) AS teamDisc,
  COUNT(CASE WHEN trackaction = 'takesurvey' THEN 1 ELSE NULL END) AS takeSurvey,
  COUNT(CASE WHEN trackaction = 'nfl news' THEN 1 ELSE NULL END) AS nflnews
FROM tracktbl
GROUP BY tdate, screenname
ORDER BY screenname, tdate";

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get tracker review information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get requested tracker information
//---------------------------------------------------------------
switch ($trackrequest) {
	case "selectallorderby":
		$sql = $sqlselectallorderby;
		break;

	case "countontrackaction":
		$sql = $sqlcountontrackaction;
		break;

	case "groupcountontrackaction":
		$sql = $sqlgroupcountontrackaction;
		break;			

	default:
		print("Invalid trackrequest: $trackrequest");
		die();
}

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$trackerdata = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $trackerdata[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
echo(json_encode($trackerdata));

// flush();
// ob_flush();
exit(0);
?>
