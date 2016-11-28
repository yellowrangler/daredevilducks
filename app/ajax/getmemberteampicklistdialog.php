<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$teamid = $_POST['teamid'];
$gamenbr = $_POST['gamenbr'];

// debug
// $season = 2014;

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//------------------------------------------------------
// get admin user info
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get nfl game team member pick list information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get nfl game team member pick list information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

$sql = "SELECT screenname, 
avatar, 
T.name as teamname, 
T.location as teamlocation,
T.teamiconname as teamiconname
FROM memberpickstbl MP
LEFT JOIN membertbl M ON M.id = MP.memberid
LEFT JOIN teamstbl T ON T.id = $teamid
WHERE season = $season
AND week = $week
AND teamid = $teamid
ORDER BY screenname";

// echo "sql:$sql";
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get nfl game team member pick list picked information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}


// var set
$returnStr = "";


//
// fill the array
//
$count = 1;
$member = array();
while($r = mysql_fetch_assoc($sql_result)) {
  $screenname = $r[screenname];
  $memberavatar = $r[avatar];

  if ($count == 1)
  {
    $teamname = $r[teamname];
    $teamlocation = $r[teamlocation];
    $teamiconname = $r[teamiconname];    
    // first row 
    $returnStr = $returnStr . "
    <table style='width:95%;' class='table' >
    <tr >   
        <td style='font-weight:bold;padding-left:5%;'>
          <div style='text-align:center;'>
            <img align='center' height='75' src='img/nflicons/$teamiconname'> 
          </div>
        </td>                   
        <td style='font-weight:bold;font-size:40px;padding-top:20px;'>$teamname</td> 
    </tr>    
    </table>  
    "; 

    // following rows 
    $returnStr = $returnStr . "
    <table style='width:95%;padding-top:55px;' class='table' >
    "; 
  }
    
  $returnStr = $returnStr . "
    <tr >    
      <td style='padding-left:15%;'>
        <div style='text-align:center;'>
          <img align='right' height='75' src='img/avatars/$memberavatar'> 
        </div>
      </td>  
      <td style='font-weight:bold;padding-top:20px;width:45%'>$screenname</td>                   
  </tr>
  ";

  $count = $count + 1;
}

$returnStr = $returnStr . " 
</table>  
";

//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($returnStr);

?>
