<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$memberid = $_POST['memberid'];
$lastname = $_POST['lastname'];
$firstname = $_POST['firstname'];
$titleA = $_POST['titleA'];
$titleB = $_POST['titleB'];
$detailA = $_POST['detailA'];
$detailB = $_POST['detailB'];
$photoA = $_POST['photoA'];
$photoB = $_POST['photoB'];


$msgtext = "Hall of Memory Info Added Succesfully!";

//
// db connect
//
$modulecontent = "Unable to connect for Hall of Memory List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// insert hall of memory list
//---------------------------------------------------------------
$modulecontent = "Unable to add Hall of Memory item.";

//
// build the hall of memory insert statement
//
$sql = 'INSERT INTO hallofmemorytbl 
    (memberid, lastname, firstname, titleA, titleB, detailA, detailB, photoA, photoB) 
    VALUES 
    (' . $memberid . ', "' . $lastname . '", "' . $firstname . '", "' . $titleA . '", "' . $titleB . '", "' . $detailA . '", "' . $detailB . '", "' . $photoA .'", "' . $photoB . '" )';

// $sql = mysql_real_escape_string($sql);

// print "$sql";

//
// sql query
//
$function = "insert";
$modulecontent = "Unable to insert hall of memory informatin.";
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
