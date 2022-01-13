<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

// 
//  global variables
// 
$nextgamenbr = 0;
$msg = "";

//
// get post variables
//
$season = "";
if (isset($_POST["season"]))
{
  $season = $_POST["season"];
}
else if (isset($_GET["season"]))
{
  $season = $_GET["season"];
}
else 
{
  $msg = $msg . "No season passed - getnextgamenbr terminated";
  exit($msg);
}

// print("season = $season");

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get next game number.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get images information
//---------------------------------------------------------------
$sql = "SELECT MAX(gamenbr) as maxgamenbr 
FROM gamestbl 
WHERE season = $season";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the bracket information
//
$r = mysqli_fetch_assoc($sql_result);

$gamenbr = $r['maxgamenbr'];
$nextgamenbr = $gamenbr + 1;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
print($nextgamenbr);
?>
