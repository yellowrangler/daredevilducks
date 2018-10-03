<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$leaderType = $_POST['leaderType'];
$gametypeid = $_POST['gametypeid'];
$membergroupid = 0;
$showexperts = 0;

if( isset($_POST['membergroupid']) )
{
     $membergroupid = $_POST['membergroupid'];
}

if( isset($_POST['showexperts']) )
{
     $showexperts = $_POST['showexperts'];
}

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//------------------------------------------------------
// get admin user info
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
  $log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl game team information.");

  $rv = "";
  exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
  $log = new ErrorLog("logs/");
  $dberr = mysql_error();
  $log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl game team information.");

  $rv = "";
  exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT
  MS.season as season,
  MS.memberid as memberid,
  MS.id as id,
  MS.wins as wins,
  MS.losses as losses,
  MS.ties as ties,
  MS.totalgames as totalgames,
  MS.playerpickedgames as playerpickedgames,
  MS.totalgamespercent as totalgamespercent,
  MS.playerpickedpercent as playerpickedpercent,
  CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  MS.gametypeid as gametypeid,
  M.avatar as memberavatar,
  M.role as memberrole,  
  M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS
";
if ($membergroupid == 0)
{
  $sql = $sql . "LEFT JOIN membertbl M ON M.id = MS.memberid";
}
else
{
  $sql = $sql . "LEFT JOIN membergroupmembertbl MG ON MG.memberid = MS.memberid
   LEFT JOIN membertbl M ON M.id = MG.memberid";
}

if ($membergroupid == 0)
{
  $sql = $sql . "
  WHERE M.status = 'active'
  AND MS.season = '$season' AND gametypeid = $gametypeid";

  //
  // only applicable in non group lists
  //
  if ($showexperts == 0)
  {
      $sql = $sql . " AND M.role != 'expert' ";
  }
}
else
{
  $sql = $sql . "
  WHERE M.status = 'active' AND MG.membergroupid = '$membergroupid'
  AND MS.season = '$season' AND gametypeid = $gametypeid";
}


if ($leaderType == 'pickingpercent')
{
  $sql = $sql . " ORDER BY MS.playerpickedpercent DESC, M.screenname ASC ";
}
elseif ($leaderType == 'totalpercent')
{
  $sql = $sql . " ORDER BY MS.totalgamespercent DESC, M.screenname ASC ";
}
elseif ($leaderType == 'wins')
{
  $sql = $sql . " ORDER BY MS.wins DESC, M.screenname ASC ";
}
else
{
  $sql = $sql . " wrong argument passed ";
}

// echo $sql;
// die();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl game team information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// fill the array
//
$memberstats = array();
while($r = mysql_fetch_assoc($sql_result)) {
    $memberstats[] = $r;
}

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit(json_encode($memberstats));

?>
