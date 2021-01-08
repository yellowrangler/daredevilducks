<?php

//
// set variables
//
$nextweek = $week + 1;
// $toprankingnumber = 5;
$toprankingnumber = 3;
$toprankingnumberweekly = 1;

include ('../../../emailforms/igameweek-top-email.php');
include ('../../../emailforms/igameweek-bottom-email.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

//
// db connect
//
$modulecontent = "Unable to get game week email information.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get wins leaders 
//---------------------------------------------------------------
$sql = "SELECT
  MS.wins as wins,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '$season' AND gametypeid = '$gametype'
AND M.role != 'expert'
ORDER BY MS.wins DESC, M.screenname ASC";

// print $sql;
// exit();

//
// sql query
//
$function = "select";
$modulecontent = "Unable to get game week email information. sql = $sql";
include ('mysqlquery.php');

//
// build table top
//
$winstable = "
<div style='width:98%;padding-top:15px;'>
<p style='text-align:center;'>
  <span style='font-size:16px;font-weight:bold; color:blue;'>The Top 3 Leaders by Total Season Wins</span>
<p>
<table style='width:100%;'>
  <tr style='height:25px;background-color:#AED6F1;color:white;'>
    <th>Rank</th>
    <th>Name</th>
    <th>Wins</th>
  </tr>
";

//
// get the query results
//
$rank = 1;
$prevValue = "";
while($leaderwins = mysqli_fetch_assoc($sql_result)) {
    $member = $leaderwins['screenname'];
    $wins = $leaderwins['wins'];

    if ($prevValue == "")
    {
      $prevValue = $wins;
    }
    elseif ($prevValue > $wins) 
    {
      $rank = $rank + 1;
      $prevValue = $wins;
    }
    
    if ($rank > $toprankingnumber)
    {
      break;
    }

    $winstable = $winstable . "
    <tr>
    <td style='text-align: center;'>$rank</td>
    <td>$member</td>
    <td style='text-align: center;'>$wins</td>
  </tr>
  ";
}

//
// build table bottom
//
$winstable = $winstable . "
</table>
</div>
";

// print_r($teamstat);
// exit();

//---------------------------------------------------------------
// get totalpercent leaders 
//---------------------------------------------------------------
// $sql = "SELECT
//   -- MS.season as season,
//   -- MS.memberid as memberid,
//   -- MS.id as id,
//   -- MS.wins as wins,
//   -- MS.losses as losses,
//   -- MS.ties as ties,
//   -- MS.totalgames as totalgames,
//   MS.playerpickedgames as playerpickedgames,
//   MS.totalgamespercent as totalgamespercent,
//   MS.playerpickedpercent as playerpickedpercent,
//   CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
//   CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
//   -- MS.gametypeid as gametypeid,
//   -- M.avatar as memberavatar,
//   -- M.membername as membername,
//   M.screenname as screenname
// FROM memberstatstbl MS 
// LEFT JOIN membertbl M ON M.id = MS.memberid
// WHERE M.status = 'active'
// AND MS.season = '$season' AND gametypeid = '$gametype'
// AND M.role != 'expert'
// ORDER BY MS.playerpickedpercent DESC, M.screenname ASC";

// // print $sql;
// // exit();

// //
// // sql query
// //
// $function = "select";
// $modulecontent = "Unable to get game week email information. sql = $sql";
// include ('mysqlquery.php');

// //
// // build table top
// //
// $totalpercenttable = "
// <div style='width:70%;'>
// <p>
//   <span style='font-weight:bold; color:blue;'>The Top 3 Leaders by Total Personal Pick Percentage are:</span>
// <p>
// <table style='width:100%;'>
//   <tr style='background-color:blue;color:white;'>
//     <th>Rank</th>
//     <th>Name</th>
//     <th>Percent</th>
//   </tr>
// ";

// //
// // get the query results
// //
// $rank = 1;
// $prevValue = "";
// while($leadertotalpercent = mysqli_fetch_assoc($sql_result)) {
//     $member = $leadertotalpercent['screenname'];
//     $showpercent = $leadertotalpercent['showplayerpickedpercent'];
//     $percent = $leadertotalpercent['playerpickedpercent'];

//     if ($prevValue == "")
//     {
//       $prevValue = $percent;
//     }
//     elseif ($prevValue > $percent) 
//     {
//       $rank = $rank + 1;
//       $prevValue = $percent;
//     }
    
//     if ($rank > $toprankingnumber)
//     {
//       break;
//     }

//     $totalpercenttable = $totalpercenttable . "
//     <tr>
//     <td style='text-align: center;'>$rank</td>
//     <td>$member</td>
//     <td style='text-align: center;'>$showpercent</td>
//   </tr>
//   ";
// }

// //
// // build table bottom
// //
// $totalpercenttable = $totalpercenttable . "
// </table>
// </div>
// ";

//---------------------------------------------------------------
// get week leaders 
//---------------------------------------------------------------
$sql = "SELECT DISTINCT
    M.screenname as screenname,
    M.id as memberid,
    M.membername as membername,
    M.avatar as memberavatar,   
    MS.losses as losses,
    MS.wins as wins,
    MS.ties as ties,
    MS.week as week,
    DATE_FORMAT(GW.weekstart,'%b %D') as weekstart,
    DATE_FORMAT(GW.weekend,'%b %D') as weekend
    FROM membertbl M
    LEFT JOIN memberweekstatstbl MS on M.id = MS.memberid
    LEFT JOIN gameweekstbl GW on MS.week = GW.week AND MS.season = GW.season
    WHERE  M.status = 'active'
    AND MS.season = $season AND MS.week = $week
    AND M.role != 'expert'
    ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";

// print $sql;
// exit();

//
// sql query
//
$function = "select";
$modulecontent = "Unable to get game week email information. sql = $sql";
include ('mysqlquery.php');

//
// build table top
//
$leaderweektable = "
<div style='width:98%;padding-top:30px;'>
<p style='text-align:center;'>
  <span style='font-size:16px;font-weight:bold;color:#228b22;'>The Top Leader for the current week on Player Weekly Totals</span>
<p>
<table style='width:100%;'>
  <tr style='height:25px;background-color:#82E0AA;color:white;'>
    <th>Rank</th>
    <th>Name</th>
    <th>Wins</th>
  </tr>
";

//
// get the query results
//
$rank = 1;
$prevValue = "";
while($leaderweek = mysqli_fetch_assoc($sql_result)) {
    $member = $leaderweek['screenname'];
    $wins = $leaderweek['wins'];

    if ($prevValue == "")
    {
      $prevValue = $wins;
    }
    elseif ($prevValue > $wins) 
    {
      $rank = $rank + 1;
      $prevValue = $wins;
    }
    
    if ($rank > $toprankingnumberweekly)
    {
      break;
    }

    $leaderweektable = $leaderweektable . "
    <tr>
    <td style='text-align: center;'>$rank</td>
    <td>$member</td>
    <td style='text-align: center;'>$wins</td>
  </tr>
  ";
}

//
// build table bottom
//
$leaderweektable = $leaderweektable . "
</table>
</div>
";

//
// close db connection
//
mysqli_close($dbConn);

$email = "Daredevil Ducks - Week $week is over. Prepare for week $nextweek!\n
<p>
<span style='font-size:16px;font-style:normal;font-weight:bold;color:#6C0000;''>Daredevil Ducks - Week $week is over. Prepare for week $nextweek!</span>
</p>";

$email = $email . $emailtopwriteup;

$email = $email .
"<div id='tablecontainer' style='width:100%;'>" .
$winstable . "\n" . 
$totalpercenttable . "\n" . 
$leaderweektable . "\n"  .
"</div>";

$email = $email . $emailbottomwriteup;

$email = $email . "
<p> 
Great effort by all! But remember Week $nextweek is upon us! So start thinking about what you want to pick!  
</p>

Click on http://daredevilducks.xyz to get started!
<br />
Mobile devices can click on http://daredevilducksm.xyz
<br />
<br />

AirDreamer & Wildcat Wonder
</div>";

//
// pass back info
//
exit($email);
?>
