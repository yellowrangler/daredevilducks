<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$season = $_POST['season'];
$bracket = $_POST['bracket'];

$msgtext = "Team bracket Saved Succesfully for Season: $season!";
  
$post = $_POST; 

// print_r($gamenbr);
// print_r($hometeamscore);
// print_r($awayteamscore);
// print_r($hometeamid);
// print_r($awayteamid);

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

//
// db connect
//
$modulecontent = "Unable to save team bracket for Season: $season!";
include_once ('mysqlconnect.php');


$sql = "SELECT imagename as bracket, season 
FROM teambrackettbl WHERE season = $season ";

//
// sql query
//
$function = "select";
$modulecontent = "Unable to get team bracket  for Season: $season !";
include ('mysqlquery.php');
 
//
// See if we got anything. If not insert
//
$rowcount=mysqli_num_rows($sql_result);
if ($rowcount == 0)
{
	$sql = "INSERT INTO teambrackettbl(imagename, season, enterdate) 
		VALUES ('$bracket',$season,'$enterdateTS')";

	//
	// sql query
	//
	$function = "insert";
	$modulecontent = "Unable to insert team bracket  for Season: $season!";
	include ('mysqlquery.php');

}
else
{
	// ok so update
	$sql = "UPDATE teambrackettbl 
		SET imagename='$bracket',
		season=$season,
		enterdate='$enterdateTS' 
		WHERE season = $season";

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to update team bracket  for Season: $season!";
	include ('mysqlquery.php');
}

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>