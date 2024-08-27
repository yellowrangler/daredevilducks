<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$ordr = $_POST['ordr'];
$memberid = $_POST['memberid'];
$lastname = $_POST['lastname'];
$firstname = $_POST['firstname'];
$photoA = $_POST['photoA'];
$photoB = $_POST['photoB'];
$titleA = $_POST['titleA'];
$titleB = $_POST['titleB'];
$detailA = $_POST['detailA'];
$detailB = $_POST['detailB'];

$msgtext = "Hall of Memory Info Saved Succesfully!";

//
// db connect
//
$modulecontent = "Unable to connect for Hall of Memory List.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// delete hall of memory list
//---------------------------------------------------------------
$sql = "DELETE FROM `hallofmemorytbl` WHERE 1";

//
// sql query
//
$function = "delete";
include ('mysqlquery.php');

//
// build the hall of memory insert statement
//
$sql = "INSERT INTO hallofmemorytbl VALUES ";

$count = count($memberid);
for ($i = 0; $i < $count; $i++)
{
    //-----------------------------------------------------------------
    // add hall of memory info to sql 
    //-----------------------------------------------------------------
    $sql = $sql . '( "' . $ordr[$i] . '", "' . $memberid[$i] . '", "' . $lastname[$i] .'", "' . $firstname[$i] . '", "' . $photoA[$i] . '", "' . $photoB[$i] . '", "' . $titleA[$i] . '", "' . $titleB[$i] . '", "' . $detailA[$i] . '", "' . $detailB[$i]  . '" )';

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
$modulecontent = "Unable to insert Hall of Memory List.";
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