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
$modulecontent = "Unable to get late pick member information.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get total picks left for season week
//---------------------------------------------------------------
$sql = "SELECT COUNT(1) AS gamesleftinweek
	FROM gamestbl G 
	LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
	AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
	AND GW.week = '$week' AND GW.season = '$season'
	WHERE G.week = '$week' AND G.season = '$season'
	AND G.gamedatetime > NOW()";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get gamesleftinweek
//
$r = mysqli_fetch_assoc($sql_result);
$gamesleftinweek = $r['gamesleftinweek'];

//---------------------------------------------------------------
// get all member picks for week going forward with member list
//---------------------------------------------------------------
$sql = "SELECT memberid, membername, screenname, email, noemail, status 
	FROM
	(
		SELECT id as memberid, membername, screenname, email, noemail, status,
		CASE WHEN MSEL.memberpicks IS NULL
		THEN 0
		ELSE MSEL.memberpicks
		END AS memberpicks,
		CASE WHEN MSEL.memberpicks = $gamesleftinweek
		THEN 'Ok'
		ELSE 'Lackard' 
		END AS memberpickstatus
		FROM membertbl M
		LEFT JOIN (
			SELECT memberid, COUNT(1) as memberpicks
			FROM memberpickstbl MP 
			WHERE MP.week = '$week' AND MP.season = '$season'
			AND gamenbr IN 
			(
				SELECT G.gamenbr 
				FROM gamestbl G 
				LEFT JOIN gameweekstbl GW ON GW.season = G.season AND GW.week = G.week
				AND G.gamedatetime >= GW.weekstart AND G.gamedatetime <= GW.weekend
				WHERE G.week = '$week' AND G.season = '$season'
				AND G.gamedatetime > NOW()
			)
			GROUP BY memberid
		) MSEL ON MSEL.memberid = M.id
		GROUP BY M.id
	) MSEL2
	WHERE MSEL2.status = 'active'
	 AND MSEL2.memberpickstatus = 'Lackard'
	 AND COALESCE(MSEL2.noemail,0) != 1
	 ORDER BY $orderby ASC";
	
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
