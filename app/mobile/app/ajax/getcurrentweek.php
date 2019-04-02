<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// db connect
//
$modulecontent = "Unable to get current week.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get nfl game type information
//---------------------------------------------------------------
$sql = "SELECT season, week 
FROM gameweekstbl 
WHERE weekstart <= now() AND weekend >= now()";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get week
//
$r = mysqli_fetch_assoc($sql_result);
$week = $r['week'];

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($week);

?>
