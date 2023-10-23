<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get data
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
		print("Error: No season. Not passed.");
		die();
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
		print("Error: No week. Not passed.");
		die();
	}
}

if (isset($_POST["hometeamid"]))
{
	$hometeamid = $_POST["hometeamid"];
}
else
{
	if (isset($_GET["hometeamid"]))
	{
		$hometeamid = $_GET["hometeamid"];
	}
	else
	{
		print("Error: No hometeamid. Not passed.");
		die();
	}
}

if (isset($_POST["awayteamid"]))
{
	$awayteamid = $_POST["awayteamid"];
}
else
{
	if (isset($_GET["awayteamid"]))
	{
		$awayteamid = $_GET["awayteamid"];
	}
	else
	{
		print("Error: No awayteamid. Not passed.");
		die();
	}
}

// 
// Variables
// 
$hometeaminjuryHTML = "";
$awayteaminjuryHTML = "";

$hometeamnbr = 0;
$awayteamnbr = 0;

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$returnArray = array();

//
// db connect
//
$modulecontent = "Unable to get player injury stats information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get player injury stats information for home team
//---------------------------------------------------------------
$sql = "SELECT playername, position, injury, status 
FROM playerinjurytbl 
WHERE season = $season AND week = $week and teamid = $hometeamid";

// print $sql;
// exit();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the query results for hometeam
//
while($r = mysqli_fetch_assoc($sql_result)) {
	$player = $r["playername"];
	$pos = $r["position"];
	$injury = $r["injury"];
	$status = $r["status"];
	
	$hometeaminjuryHTML .= 
	"
	<tr style='vertical-align:middle;line-height:12px;padding:0;'>
		<td style='text-align:center;'>$player</td>
		<td style='text-align:center;'>$pos</td>
		<td style='text-align:left;'>$injury</td>
		<td style='text-align:left;'>$status</td>
   </tr>
   ";

   $hometeamnbr += 1;
}

//---------------------------------------------------------------
// Get player injury stats information for away team
//---------------------------------------------------------------
$sql = "SELECT playername, position, injury, status 
FROM playerinjurytbl 
WHERE season = $season AND week = $week and teamid = $awayteamid";

// print $sql;
// exit();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the query results for awayteamArray
//
while($r = mysqli_fetch_assoc($sql_result)) {
	$player = $r["playername"];
	$pos = $r["position"];
	$injury = $r["injury"];
	$status = $r["status"];

	$awayteaminjuryHTML .=  
	"
	<tr style='vertical-align:middle;line-height:12px;padding:0;'>
		<td style='text-align:left;'>$player</td>
	    <td style='text-align:center;'>$pos</td>
	   <td style='text-align:left;'>$injury</td>
	   <td style='text-align:left;'>$status</td>
   </tr>
   ";

   $awayteamnbr += 1;
}

// var_dump($hometeamArray);
// exit();

$returnArray = array();
$returnArray[0] = $hometeaminjuryHTML;
$returnArray[1] = $awayteaminjuryHTML;

// print ("<br/> hometeamnbr $hometeamnbr");
// print ("<br/> awayteamnbr $awayteamnbr");

// print("<br/> hometeaminjuryHTML $hometeaminjuryHTML");
// print("<br/> awayteaminjuryHTML $awayteaminjuryHTML");

//
// close db connection
//
mysqli_close($dbConn);

// echo gettype($hometeaminjuryHTML), "\n";
// echo gettype($returnArray), "\n";
//
// pass back info
//
exit(json_encode($returnArray));
?>
