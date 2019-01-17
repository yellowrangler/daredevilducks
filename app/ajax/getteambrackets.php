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

// if (isset($_POST["week"]))
// {
//   $week = $_POST["week"];
// }
// else
// {
//   if (isset($_GET["week"]))
//   {
//     $week = $_GET["week"];
//   }
//   else
//   {
//     $msg = $msg . "No week passed";
//     exit($msg);

//   }
// }

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get team brackets for season and week.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get images information
//---------------------------------------------------------------
$sql = "SELECT imagename as bracket, season, week, final 
FROM teambrackettbl 
WHERE season = $season 
ORDER BY week";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the bracket information
//
//
// fill the array
//
$teambrackets = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $teambrackets[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($teambrackets));

?>
