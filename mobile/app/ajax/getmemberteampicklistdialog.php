<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get or post variables
//
if (isset($_POST["season"]))
{
  $season = $_POST["season"];
}
else
{
  if (isset($_GET["season"]))
  {
    $season = $_GET["season"];
  }
  else
  {
    $msg = $msg . "No season passed - terminated";
    exit($msg);

  }
}

if (isset($_POST["week"]))
{
  $week = $_POST["week"];
}
else
{
  if (isset($_GET["week"]))
  {
    $week = $_GET["week"];
  }
  else
  {
    $msg = $msg . "No week passed - terminated";
    exit($msg);

  }
}

if (isset($_POST["teamid"]))
{
  $teamid = $_POST["teamid"];
}
else
{
  if (isset($_GET["teamid"]))
  {
    $teamid = $_GET["teamid"];
  }
  else
  {
    $msg = $msg . "No teamid passed - terminated";
    exit($msg);

  }
}

if (isset($_POST["gamenbr"]))
{
  $gamenbr = $_POST["gamenbr"];
}
else
{
  if (isset($_GET["gamenbr"]))
  {
    $gamenbr = $_GET["gamenbr"];
  }
  else
  {
    $msg = $msg . "No gamenbr passed - terminated";
    exit($msg);

  }
}

// $season = $_POST['season'];
// $week = $_POST['week'];
// $teamid = $_POST['teamid'];
// $gamenbr = $_POST['gamenbr'];

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

//
// db connect
//
$modulecontent = "Unable to get nfl game team member pick list picked information.";
include_once ('mysqlconnect.php');

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

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

// var set
$returnStr = "";

//
// fill the array
//
$count = 1;
$member = array();
while($r = mysqli_fetch_assoc($sql_result)) {
  $screenname = $r["screenname"];
  $memberavatar = $r["avatar"];

  if ($count == 1)
  {
    $teamname = $r["teamname"];
    $teamlocation = $r["teamlocation"];
    $teamiconname = $r["teamiconname"];    
    // first row 
    $returnStr = $returnStr . "
    <table style='width:95%;' class='table' >
    <tr >   
        <td style='font-weight:bold;padding-left:5%;'>
          <div style='text-align:center;'>
            <img align='center' height='75' src='../img/nflicons/$teamiconname'> 
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
          <img align='right' height='75' src='../img/avatars/$memberavatar'> 
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
mysqli_close($dbConn);

//
// pass back info
//
exit($returnStr);

?>
