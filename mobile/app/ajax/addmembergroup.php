<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membergroupname = $_POST['membergroupname'];

// print_r($membergroupids);
// die();

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// set msg text
$msgtext = "ok";

//
// db connect
//
$modulecontent = "Unable to add membergroupname for ddd membergroupname $membergroupname.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// check if membergroupname already exists
//---------------------------------------------------------------
$sql = "SELECT * 
FROM membergrouptbl 
WHERE groupname = '$membergroupname'";
// print $sql;

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// check if membergroupname already exists
//
$count = 0;
$count = mysqli_num_rows($sql_result);
if ($count == 1)
{
	$msgtext = "Member Group name $membergroupname already is a member group!";

	exit($msgtext);
}
	
//---------------------------------------------------------------
// insert new membergroupname
//---------------------------------------------------------------
$sql = "INSERT INTO membergrouptbl
	(groupname) 
	VALUES ('$membergroupname')"; 

//
// sql query
//
$function = "insert";
$modulecontent = "Unable to insert membergroupname for ddd membergroupname $membergroupname.";
include ('mysqlquery.php');	

//---------------------------------------------------------------
// get id for just inserted membergroupname
//---------------------------------------------------------------
$sql = "SELECT * 
FROM membergrouptbl 
WHERE groupname = '$membergroupname'";
// print $sql;

//
// sql query
//
$function = "select";
$modulecontent = "Unable to select membergroupname for ddd membergroupname $membergroupname.";
include ('mysqlquery.php');	

//
// get member group id for member group inserts
//
$membergroup = mysqli_fetch_assoc($sql_result);
$mebergroupid = $membergroup["id"];

//
// close db connection
//
mysqli_close($dbConn);
	
//
// pass back info
//
exit($msgtext);
?>
