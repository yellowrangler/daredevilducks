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
$trackgroupby = "";

$countCaseStr = "COUNT(CASE WHEN trackaction = 'getMemberPickList' THEN 1 ELSE NULL END) AS pickList,
			  COUNT(CASE WHEN trackaction = 'savePickGames' THEN 1 ELSE NULL END) AS savePick,
			  COUNT(CASE WHEN trackaction = 'hallofFame' THEN 1 ELSE NULL END) AS HOF,
			  COUNT(CASE WHEN trackaction = 'weeklyTotals' THEN 1 ELSE NULL END) AS WeekTls,
			  COUNT(CASE WHEN trackaction = 'playerTotals' THEN 1 ELSE NULL END) AS playerTls,  
			  COUNT(CASE WHEN trackaction = 'teamStatsDialog' THEN 1 ELSE NULL END) AS teamStatDia,
			  COUNT(CASE WHEN trackaction = 'teamScoresStats' THEN 1 ELSE NULL END) AS teamScorSta,
			  COUNT(CASE WHEN trackaction = 'teamStandings' THEN 1 ELSE NULL END) AS teamStand,
			  COUNT(CASE WHEN trackaction = 'hallofMemory' THEN 1 ELSE NULL END) AS HOM,
			  COUNT(CASE WHEN trackaction = 'nflNews' THEN 1 ELSE NULL END) AS nflnews,
			  COUNT(CASE WHEN trackaction = 'teamCharts' THEN 1 ELSE NULL END) AS teamChart,  
			  COUNT(CASE WHEN trackaction = 'login' THEN 1 ELSE NULL END) AS login,
			  COUNT(CASE WHEN trackaction = 'faqs' THEN 1 ELSE NULL END) AS faq,
			  COUNT(CASE WHEN trackaction = 'helpRequest' THEN 1 ELSE NULL END) AS help,
			  COUNT(CASE WHEN trackaction = 'viewTotalPickGames' THEN 1 ELSE NULL END) AS vewTtlPckGa, 
			  COUNT(CASE WHEN trackaction = 'takeSurvey' THEN 1 ELSE NULL END) AS takeSurvey, 
			  COUNT(CASE WHEN trackaction = 'surveyResults' THEN 1 ELSE NULL END) AS surveyRes, 
			  COUNT(CASE WHEN trackaction = 'teamDiscovery' THEN 1 ELSE NULL END) AS teamDisc, 
			  COUNT(CASE WHEN trackaction = 'teamBrackets' THEN 1 ELSE NULL END) AS teamBrk, 
			  COUNT(CASE WHEN trackaction = 'ChristmasSnow' THEN 1 ELSE NULL END) AS snow";

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
		print("Error: No trackrequest. Not passed.");
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

if (isset($_POST["trackgroupby"]))
{
	$trackgroupby = $_POST["trackgroupby"];
}
else
{
	if (isset($_GET["trackgroupby"]))
	{
		$trackgroupby = $_GET["trackgroupby"];
	}
	else
	{
		$trackgroupby = "";
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
		if ($memberid != "")
		{
			$where = " WHERE memberid =  '$memberid' ";
		}
		
		$orderby = "ORDER BY ";
		if ($trackorderby == "")
		{
			$trackorderby = "screenname";
		}

		if ($trackgroupby != "")
		{
			$groupby = " GROUP BY ";

			$sqlcountaction = "SELECT screenname, count(*) as hits,
			  $countCaseStr
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort ";
		}
		else
		{
			$groupby = " GROUP BY ";
			$trackgroupby = " screenname ";

			$sqlcountaction = "SELECT screenname, count(*) as hits,
			  $countCaseStr
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort ";
		}

		$sql = $sqlcountaction;

		break;

	case "countactiongroup":
		if ($memberid != "")
		{
			$where = " WHERE memberid =  '$memberid' ";
		}

		$orderby = "ORDER BY ";
		if ($trackorderby == "")
		{
			$trackorderby = "screenname, tdate";
		}

		if ($trackgroupby != "")
		{
			$groupby = " GROUP BY ";

			$sqlcountactiongroup = "SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
			  $countCaseStr
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort";
		}
		else
		{
			$groupby = " GROUP BY ";
			$trackgroupby = " tdate, screenname ";

			$sqlcountactiongroup = "SELECT screenname, CAST(trackdate AS DATE) as tdate, count(*) as hits,
			  $countCaseStr
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort";
		}

		$sql = $sqlcountactiongroup;
		break;

	case "countdeviceusage":
		$orderby = "ORDER BY ";
		if ($trackorderby == "")
		{
			$trackorderby = "screenname";
		}

		if ($trackgroupby != "")
		{
			$groupby = " GROUP BY ";

			$sqlcountdeviceusage = "SELECT screenname, count(*) as devicehits,
	  			COUNT(CASE WHEN device = 'desktop' THEN 1 ELSE NULL END) AS desktophits,
	  			COUNT(CASE WHEN device = 'mobile' THEN 1 ELSE NULL END) AS mobilehits
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort ";
		}
		else
		{
			$sqlcountdeviceusage = "SELECT 'All members' as screenname, count(*) as devicehits,
  			COUNT(CASE WHEN device = 'desktop' THEN 1 ELSE NULL END) AS desktophits,
  			COUNT(CASE WHEN device = 'mobile' THEN 1 ELSE NULL END) AS mobilehits
			FROM tracktbl
			$where
			$groupby $trackgroupby 
			$orderby $trackorderby $trackorderbysort ";
		}
		

		$sql = $sqlcountdeviceusage;
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
