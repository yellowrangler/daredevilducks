<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');


//
// get or post variables
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
    $msg = $msg . "No season passed - terminated";
    exit($msg);

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
    $msg = $msg . "No week passed";
    exit($msg);
  }
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get team bracket for season and week.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get images information
//---------------------------------------------------------------
$sql = "SELECT imagename, season, week, final 
FROM teambrackettbl 
WHERE season = $season AND week >= $week
ORDER BY season, week
LIMIT 1";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// See if we got anything. If not get whatever is below date
//
$rowcount=mysqli_num_rows($sql_result);
if ($rowcount == 0)
{
  //---------------------------------------------------------------
  // get images information
  //---------------------------------------------------------------
  $sql = "SELECT imagename, season, week, final 
  FROM teambrackettbl 
  WHERE season = $season
  ORDER BY season, week DESC
  LIMIT 1";

  //
  // sql query
  //
  $function = "select";
  include ('mysqlquery.php');
}

//
// See if we still have nothibg the we are last season
//
$rowcount=mysqli_num_rows($sql_result);
if ($rowcount == 0)
{
  $season = $season - 1;

  //---------------------------------------------------------------
  // get images information
  //---------------------------------------------------------------
  $sql = "SELECT imagename, season, week, final 
  FROM teambrackettbl 
  WHERE season = $season
  ORDER BY season, week DESC
  LIMIT 1";

  //
  // sql query
  //
  $function = "select";
  include ('mysqlquery.php');
}


//
// get the bracket information
//
$r = mysqli_fetch_assoc($sql_result);
$teambracket = $r;


//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($teambracket));

?>
