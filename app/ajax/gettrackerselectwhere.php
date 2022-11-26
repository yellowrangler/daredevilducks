<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

// $x = $_POST['trackselectwherearray'];
// $trackselectwherearray = json_decode($x, true);
// $sql = "SELECT COLUMN_NAME 
// FROM information_schema.COLUMNS 
// WHERE TABLE_SCHEMA='$DBschema' 
//   AND TABLE_NAME='tracktbl'";
// $tracktblinfo = array();
// while($r = mysqli_fetch_assoc($sql_result)) {
//     $tracktblinfo[] = $r;
// }

// $tracktblcolumns = array();
// $fieldNbr = count($tracktblinfo);
// for ($i = 0; $i < $fieldNbr; $i++)
// {
// 	$tracktblcolumns[$i] = $tracktblinfo[$i][COLUMN_NAME];

// 	echo $tracktblcolumns[$i];
// }

// 
// default values
// 
if (isset($_POST["trackselectwhere"]))
{
	$trackselectwhere = $_POST["trackselectwhere"];
}
else
{
	if (isset($_GET["trackselectwhere"]))
	{
		$trackselectwhere = $_GET["trackselectwhere"];
	}
	else
	{
		print("Error: No trackselectwhere. Not passed.");
		die();
	}
}

if ($trackselectwhere ==  "")
{
	print("Error: No trackselectwhere. Is empty.");
	die();
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get trackselectwhere information.";
include_once ('mysqlconnect.php');

// 
// get table columns
// 
$sql = "SELECT DISTINCT $trackselectwhere FROM tracktbl ORDER BY $trackselectwhere";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the table information
//
$trackvalues = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $trackvalues[] = $r[$trackselectwhere];
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
echo(json_encode($trackvalues));

// flush();
// ob_flush();
exit(0);
?>
