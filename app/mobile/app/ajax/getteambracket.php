<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');


//
// get post variables
//
if (isset($_POST["season"]))
{
  $season = $_POST["season"];
}
else
{
  $season = "";
}

if (isset($_POST["week"]))
{
  $week = $_POST["week"];
}
else
{
  $week = "";
}

if (isset($_POST["bracket"]))
{
  $bracket = $_POST["bracket"];
}
else
{
  $bracket = "";
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get team bracket for season or week or bracket name.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get images information
//---------------------------------------------------------------
$sql = "SELECT imagename as bracket, season, week, final 
FROM teambrackettbl WHERE ";

$where = "";

if ($season != "")
{
  if ($where != "")
  {
    $where = $where . " AND season = " . $season;
  }
  else
  {
    $where = $where . " season = " . $season;
  }
}

if ($week != "")
{
  if ($where != "")
  {
    $where = $where . " AND week = " . $week;
  }
  else
  {
    $where = $where . " week = " . $week;
  }
}

if ($bracket != "")
{
  if ($where != "")
  {
    $where = $where . " AND imagename = '$bracket' ";
  }
  else
  {
    $where = $where . " imagename = '$bracket' ";
  }
}

$sql = $sql . $where;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

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
