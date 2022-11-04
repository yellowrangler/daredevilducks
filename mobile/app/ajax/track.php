<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

include_once "../../../secure/target.php";
// 
//  post variables
// 

if (isset($_POST["trackaction"]))
{
	$trackaction = $_POST["trackaction"];
}
else
{
	if (isset($_GET["trackaction"]))
	{
		$trackaction = $_GET["trackaction"];
	}
	else
	{
		print("No trackaction");
		die();
	}
}

if (isset($_POST["tracktext"]))
{
	$tracktext = $_POST["tracktext"];
}
else
{
	if (isset($_GET["tracktext"]))
	{
		$trackaction = $_GET["tracktext"];
	}
	else
	{
		print("No tracktext");
		die();
	}
}

if (isset($_POST["trackmodule"]))
{
	$trackmodule = $_POST["trackmodule"];
}
else
{
	if (isset($_GET["trackmodule"]))
	{
		$trackmodule = $_GET["trackmodule"];
	}
	else
	{
		print("No trackmodule");
		die();
	}
}

if (isset($_POST["trackweek"]))
{
	$trackweek = $_POST["trackweek"];
}
else
{
	if (isset($_GET["trackweek"]))
	{
		$trackweek = $_GET["trackweek"];
	}
	else
	{
		$trackweek = "No week";
	}
}

if (isset($_POST["trackseason"]))
{
	$trackseason = $_POST["trackseason"];
}
else
{
	if (isset($_GET["trackseason"]))
	{
		$trackseason = $_GET["trackseason"];
	}
	else
	{
		$trackseason = "No season";
	}
}

if (isset($_POST["trackmemberid"]))
{
	$trackmemberid = $_POST["trackmemberid"];
}
else
{
	if (isset($_GET["trackmemberid"]))
	{
		$trackmemberid = $_GET["trackmemberid"];
	}
	else
	{
		print("No trackmemberid");
		die();
	}
}


// 
// before we do anything check and see if target member
// 
$targetmembersArray = explode(',', $targetmembers);
$targetmembersArraySize = count($targetmembersArray);
$isNotTargetMember = 1;
for ($i = 0; $i < $targetmembersArraySize; $i++) 
{
	if ($targetmembersArray[$i] == "All")
	{
		$isNotTargetMember = 0;
		break;
	}

	if ($trackmemberid == $targetmembersArray[$i])
	{
		$isNotTargetMember = 0;
		break;
	}
}

if ($isNotTargetMember == 1)
{
	exit("Woof!");
}
//
// get date time for this transaction
//
$trackdatetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$trackdate = date("Y-m-d H:i:s", strtotime($trackdatetime));

//
// db connect
//
$modulecontent = "Unable to add track  $trackmemberid.";
include_once ('mysqlconnect.php');

// 
// get screenname
// 
$sql = "SELECT screenname FROM membertbl WHERE id = $trackmemberid"; 

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$r = mysqli_fetch_assoc($sql_result);
$trackscreenname = $r['screenname'];

// 
// add to tracktbl
// 

$sql = "INSERT INTO tracktbl 
	( 
		memberid,
		screenname, 
		season,
		week,
		trackaction, 
		trackmodule, 
		tracktext, 
		trackdate,
		device 
	) VALUES ( 
		'$trackmemberid',
		'$trackscreenname',
		'$trackseason',
		'$trackweek',
		'$trackaction',
		'$trackmodule',
		'$tracktext',
		'$trackdate',
		 'mobile')";

//
// sql query
//

// print("sql: $sql");

$function = "insert";
include ('mysqlquery.php');

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//

exit("Cool daddyoh!");
?>