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

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get team bracket for season $season.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get images information
//---------------------------------------------------------------
$sql = "SELECT imagename as bracket, season
FROM teambrackettbl WHERE  season =  $season";

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