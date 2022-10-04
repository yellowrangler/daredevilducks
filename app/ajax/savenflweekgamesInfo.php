<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//

// print_r($_POST);
// print("<br><br>");

$id = $_POST['id'];
$season = $_POST['season'];
$gameweek = $_POST['gameweek'];
$week = $_POST['week'];
$weekstart = $_POST['weekstart'];
$weekend = $_POST['weekend'];
$msgtext = "Seaon Week Games saved for Season $season[0]";

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

//
// db connect
//
$modulecontent = "Unable to save game team network.";
include_once ('mysqlconnect.php');


$count = count($id);

for ($i = 0; $i < $count; $i++)
{
	//-----------------------------------------------------------------
	// update game weeks info for all weeks in season 
	//-----------------------------------------------------------------
	$sql = "UPDATE gameweekstbl 
		SET weekstart='$weekstart[$i]',
			weekend='$weekend[$i]',
			enterdate='$enterdateTS' 
			WHERE id = $id[$i]";

	// print("Saved weeks sql: $sql <br><br>");

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to update game week info.";
	include ('mysqlquery.php');
}


// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
