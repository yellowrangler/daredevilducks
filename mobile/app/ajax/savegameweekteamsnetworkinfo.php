<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$season = $_POST['season'];
$week = $_POST['week'];
$strCut = "pick_";
$gamenbr = "";
$networkid = "";
$msgtext = "Network Information Saved Succesfully!";
  
//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");

//------------------------------------------------------
// get admin member info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "ddd";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to save game team network.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to save game team network.");

	$rv = "";
	exit($rv);
}

$post = $_POST; 
foreach ( $post as $key=>$value )
{
	// echo "key:".$key." value:".$value."</br>";
	$pos = strpos($key, $strCut);
	// echo "pos:".$pos."</br>";
	if ($pos === false)
	{
		continue;
	}
	
	$gamenbr = str_replace($strCut, "", $key);
	$networkid = $value;

	// echo "gamenbr:".$gamenbr."</br>";
	// echo "networkid:".$networkid."</br>";

	//-----------------------------------------------------------------
	// add games picks for this week that are for this memberid
	//-----------------------------------------------------------------
	$sql = "UPDATE gamestbl
		 SET networkid='$networkid'
		 WHERE season = $season AND week = $week AND gamenbr = $gamenbr";

	// echo "SQL:" . $sql ."<br>" ;
	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing update to db Unable to save game team network.");
		$log->writeLog("SQL: $sql");

		$rc = -100;
		$msgtext = "System Error: $sqlerr. sql = $sql";

		exit($msgtext);
	}
} 

// &pick_17=8&pick_25=25&pick_22=21&pick_19=26&pick_20=7&pick_24=18&pick_23=31&pick_18=1&pick_21=19&pick_26=29&pick_27=32&pick_29=2&pick_30=10&pick_28=16&pick_31=30&pick_32=12  

// 
// close db connection
// 
mysql_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>