<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$year = $_POST['year'];
$photourlA = $_POST['photourlA'];
$photourlB = $_POST['photourlB'];
$title = $_POST['title'];
$detail = $_POST['detail'];

$msgtext = "Hall of Fame Info Saved Succesfully!";

//
// db connect
//
$modulecontent = "Unable to connect for Hall of Fame List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// delete hall of fame list
//---------------------------------------------------------------
$sql = "DELETE FROM `halloffametbl` WHERE 1";

//
// sql query
//
$function = "delete";
include ('mysqlquery.php');

//
// build the hall of fame insert statement
//
$sql = "INSERT INTO halloffametbl VALUES ";

$count = count($year);
for ($i = 0; $i < $count; $i++)
{
    //-----------------------------------------------------------------
    // add hall of fame info to sql 
    //-----------------------------------------------------------------
    $sql = $sql . '( "' . $year[$i] . '", "' . $photourlA[$i] .'", "' . $photourlB[$i] . '", "' . $title[$i] . '", "' . $detail[$i] . '" )';

    if ($i < ($count - 1))
    {
        $sql = $sql . ', ';
    }
} 
// print "count: $count";
// print "sql: $sql";

//
// sql query
//
$function = "insert";
$modulecontent = "Unable to insert Hall of Fame List.";
include ('mysqlquery.php');

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
