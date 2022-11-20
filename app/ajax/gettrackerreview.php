<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

// 
// default values
// 

$trackrequest = "";
$trackselectwhere = "";
$trackselectwherecompare = "";
$trackselectwherevalue = "";
$trackorderby = "";
$trackorderbysort = "";

$memberid = "";
$orderby = "";
$where = "";
$orderby = "";
$groupby = "";
$groupbyvalue = "";


// print_r($_POST);
// die();

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

if (isset($_POST["trackselectwhere"]))
{
	$trackselectwhere = $_POST["trackselectwhere"];
}
else
{
	if (isset($_GET["trackselectwhere"]))
	{
		$trackselectwhere = $_GET["trackselectwhere"];
	}
	else
	{
		$trackselectwhere = "";
	}
}

if (isset($_POST["trackselectwherecompare"]))
{
	$trackselectwherecompare = $_POST["trackselectwherecompare"];
}
else
{
	if (isset($_GET["trackselectwherecompare"]))
	{
		$trackselectwherecompare = $_GET["trackselectwherecompare"];
	}
	else
	{
		$trackselectwherecompare = "";
	}
}

if (isset($_POST["trackselectwherevalue"]))
{
	$trackselectwherevalue = $_POST["trackselectwherevalue"];
}
else
{
	if (isset($_GET["trackselectwherevalue"]))
	{
		$trackselectwherevalue = $_GET["trackselectwherevalue"];
	}
	else
	{
		$trackselectwherevalue = "";
	}
}

if (isset($_POST["trackorderby"]))
{
	$trackorderby = $_POST["trackorderby"];
}
else
{
	if (isset($_GET["trackorderby"]))
	{
		$trackorderby = $_GET["trackorderby"];
	}
	else
	{
		$trackorderby = "";
	}
}

if (isset($_POST["trackorderbysort"]))
{
	$trackorderbysort = $_POST["trackorderbysort"];
}
else
{
	if (isset($_GET["trackorderbysort"]))
	{
		$trackorderbysort = $_GET["trackorderbysort"];
	}
	else
	{
		$trackorderbysort = "";
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
		$memberid = "";
	}
}

if (isset($_POST["groupbyvalue"]))
{
	$groupbyvalue = $_POST["groupbyvalue"];
}
else
{
	if (isset($_GET["groupbyvalue"]))
	{
		$groupbyvalue = $_GET["groupbyvalue"];
	}
	else
	{
		$groupbyvalue = "";
	}
}


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
	case "selectstandard":
		if ($trackselectwhere != "")
		{
			$where = " WHERE $trackselectwhere $trackselectwherecompare  '$trackselectwherevalue' ";
		}

		$orderby = "";
		if (($trackorderby != "") && ($trackorderbysort != ""))
		{
			$orderby = "ORDER BY $trackorderby $trackorderbysort";
		}

		$selectstandard = "SELECT 
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
		$where  
		$orderby";

		$sql = $selectstandard;

		// print("trackorderby: $trackorderby <br/>");
		// print("sql: $sql  <br/>");
		// die();
		break;

	case "countaction":
		$groupby = " GROUP BY ";
		$groupbyvalue = " screenname ";

		if ($memberid != "")
		{
			$where = " WHERE memberid =  '$memberid' ";
		}
		

		$orderby = "ORDER BY ";
		if ($trackorderby == "")
		{
			$trackorderby = "screenname";
		}

		$sqlcountaction = "SELECT screenname, count(*) as hits,
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
		$where
		$groupby $groupbyvalue 
		$orderby $trackorderby $trackorderbysort ";

		$sql = $sqlcountaction;

		break;

	case "countactiongroup":
		$groupby = " GROUP BY ";
		$groupbyvalue = " tdate, screenname ";

		if ($memberid != "")
		{
			$where = " WHERE memberid =  '$memberid' ";
		}

		$orderby = "ORDER BY ";
		if ($trackorderby == "")
		{
			$trackorderby = "screenname, tdate";
		}
		
		$sqlcountactiongroup = "SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
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
		$where
		$groupby $groupbyvalue 
		$orderby $trackorderby $trackorderbysort";

		$sql = $sqlcountactiongroup;
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
