<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');


//
// post input
//
$orderby = "membername";
$season = "";
$week = "";

if( isset($_POST['orderby']) )
{
     $orderby = $_POST['orderby'];
}

if( isset($_POST['season']) )
{
     $season = $_POST['season'];
}

if( isset($_POST['week']) )
{
     $week = $_POST['week'];
}

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$gamesleftinweek = "";

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get late day of pick member information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// First check to see if there is a game today
//---------------------------------------------------------------
$sql = "SELECT count(id) as gamecount    
FROM gamestbl 
WHERE DATE_FORMAT(gamedatetime,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');
$sql_check = $sql_result;

$r = mysqli_fetch_assoc($sql_check);
if ($r['gamecount'] == 0)
{
	exit(json_encode(""));
}

//---------------------------------------------------------------
// get all member picks for today going forward with member list
//---------------------------------------------------------------
$sql = "SELECT id as memberid, membername, screenname, email, noemail   
FROM membertbl M
WHERE M.status = 'active'
AND COALESCE(noemail,0) != 1 
AND id NOT IN 
(SELECT memberid
FROM memberpickstbl MP
LEFT JOIN gamestbl G ON G.gamenbr = MP.gamenbr AND G.season = MP.season
WHERE DATE_FORMAT(gamedatetime,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')
AND DATE_FORMAT(gamedatetime,'%T') > DATE_FORMAT(NOW(),'%T'))";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$members = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $members[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($members));

?>
