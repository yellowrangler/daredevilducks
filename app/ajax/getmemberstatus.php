<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// get post values & set values for query
$screenname = "";
$memberid = "";
$status = "inactive";

if (isset($_POST["screenname"]))
{
	$screenname = $_POST["screenname"];
}
else
{
	if (isset($_GET["screenname"]))
	{
		$screenname = $_GET["screenname"];
	}
	else
	{
		if (isset($_POST["memberid"]))
		{
			$memberid = $_POST["memberid"];
		}
		else
		{
			if (isset($_GET["memberid"]))
			{
				$memberid = $_GET["memberid"];
			}
			else
			{
				$retmsg = "No membername or memberid passed";
				exit($retmsg);
			}
		}
	}
}

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to getmemberstatus for ddd screenname $screenname memberid $memberid.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// Get memberid password for compare.
//---------------------------------------------------------------
$sql = "SELECT status 
FROM membertbl ";

if ($screenname == "")
{
	$sql = $sql . "WHERE memberid = $memberid";
}
else
{
	$sql = $sql . "WHERE screenname = $screenname";
}

// print $sql;

//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// check if we got any rows
//
$count = mysqli_num_rows($sql_result);
if ($count == 1)
{
	$row = mysqli_fetch_assoc($sql_result);
	$status = $row['status'];
}
else
{
	$status = "inactive";
}
	
//
// close db connection
//
mysqli_close($dbConn);
	
//
// pass back info
//

exit($status);
?>
