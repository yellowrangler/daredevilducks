<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$gametypeid = 1;
$membergroupid = 0;
$showexperts = 0;

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
     if (!is_numeric($membergroupid))
     {
        $membergroupid = 0;
     }
}

if( isset($_POST['showexperts']) )
{
     $showexperts = $_POST['showexperts'];
}


// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

//
// db connect
//
$modulecontent = "Unable to get member weekly stat information.";
include_once ('mysqlconnect.php');

$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

if ($membergroupid == 0)
{
    $sql = "SELECT DISTINCT
    M.screenname as screenname,
    M.id as memberid,
    M.membername as membername,
    M.role as memberrole,
    M.avatar as memberavatar,   
    MS.losses as losses,
    MS.wins as wins,
    MS.ties as ties,
    MS.week as week,
    MS.playerpickedpercent as playerpickedpercent,
    CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
    DATE_FORMAT(GW.weekstart,'%b %D') as weekstart,
    DATE_FORMAT(GW.weekend,'%b %D') as weekend
    FROM membertbl M
    LEFT JOIN memberweekstatstbl MS on M.id = MS.memberid
    LEFT JOIN gameweekstbl GW on MS.week = GW.week AND MS.season = GW.season
    WHERE  M.status = 'active'
    AND MS.season = $season AND MS.week = $week";

    if ($showexperts == 0)
    {
        $sql = $sql . " AND M.role != 'expert' ";
    }
    
    $sql = $sql . " ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";
}
else
{
    $sql = "SELECT DISTINCT
    M.screenname as screenname,
    M.id as memberid,
    M.membername as membername,
    M.role as memberrole,
    M.avatar as memberavatar,   
    MS.losses as losses,
    MS.wins as wins,
    MS.ties as ties,
    MS.week as week,
    DATE_FORMAT(GW.weekstart,'%b %D') as weekstart,
    DATE_FORMAT(GW.weekend,'%b %D') as weekend
    FROM membergroupmembertbl MG
    LEFT JOIN membertbl M ON M.id = MG.memberid
    LEFT JOIN memberweekstatstbl MS on M.id = MS.memberid
    LEFT JOIN gameweekstbl GW on MS.week = GW.week AND MS.season = GW.season
    WHERE M.status = 'active' AND MG.membergroupid = $membergroupid
    AND MS.season = $season AND MS.week = $week
    ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";
}

// echo $sql;
// die();

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// fill the array
//
$memberweekstats = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $memberweekstats[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($memberweekstats));

?>
