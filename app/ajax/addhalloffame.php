<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$year = $_POST['year'];
$ord = $_POST['ord'];
$photoA = $_POST['photoA'];
$photoB = $_POST['photoB'];
$title = $_POST['title'];
$detail = $_POST['detail'];

$msgtext = "Hall of Fame Info Added Succesfully!";

//
// db connect
//
$modulecontent = "Unable to connect for Hall of Fame List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// insert hall of fame list
//---------------------------------------------------------------
$modulecontent = "Unable to add Hall of Fame item.";

//
// build the hall of fame insert statement
//
$sql = 'INSERT INTO halloffametbl
    (year, ord, photoA, photoB, title, detail) 
    VALUES 
    (' . $year . ', ' . $ord . ', "' . $photoA .'", "' . $photoB . '", "' . $title . '", "' . $detail . '" )';

// $sql = mysql_real_escape_string($sql);

// print "$sql";

//
// sql query
//
$function = "insert";
$modulecontent = "Unable to insert hall of fame informatin.";
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
