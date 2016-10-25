<?php

//
// set variables
//
$nextweek = $week + 1;
$toprankingnumber = 5;
//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

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
  $log->writeLog("DB error: $dberr - Error mysql connect. Unable to get game week email information.");

  $rv = "";
  exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
  $log = new ErrorLog("logs/");
  $dberr = mysql_error();
  $log->writeLog("DB error: $dberr - Error selecting db Unable to get game week email information.");

  $rv = "";
  exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// get wins leaders 
//---------------------------------------------------------------
$sql = "SELECT
  -- MS.season as season,
  -- MS.memberid as memberid,
  -- MS.id as id,
  MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  -- MS.playerpickedgames as playerpickedgames,
  -- MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  -- CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  -- CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '$season' AND gametypeid = '$gametype'
ORDER BY MS.wins DESC, M.screenname ASC";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get game week wins email information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// build table top
//
$winstable = "
<div style='width:70%;'>
<p>
  <span style='font-weight:bold; color:maroon;'>The Top 5 Leaders by Total Season Wins are:</span>
<p>
<table style='width:100%;'>
  <tr style='background-color:maroon;color:white;'>
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
while($leaderwins = mysql_fetch_assoc($sql_result)) {
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
$sql = "SELECT
  -- MS.season as season,
  -- MS.memberid as memberid,
  -- MS.id as id,
  -- MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  MS.playerpickedgames as playerpickedgames,
  MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '$season' AND gametypeid = '$gametype'
ORDER BY MS.playerpickedpercent DESC, M.screenname ASC";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get game week total perecent  email information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// build table top
//
$totalpercenttable = "
<div style='width:70%;'>
<p>
  <span style='font-weight:bold; color:blue;'>The Top 5 Leaders by Total Personal Pick Percentage are:</span>
<p>
<table style='width:100%;'>
  <tr style='background-color:blue;color:white;'>
    <th>Rank</th>
    <th>Name</th>
    <th>Percent</th>
  </tr>
";


//
// get the query results
//
$rank = 1;
$prevValue = "";
while($leadertotalpercent = mysql_fetch_assoc($sql_result)) {
    $member = $leadertotalpercent['screenname'];
    $showpercent = $leadertotalpercent['playerpickedpercent'];
    $percent = $leadertotalpercent['playerpickedgames'];

    if ($prevValue == "")
    {
      $prevValue = $percent;
    }
    elseif ($prevValue > $percent) 
    {
      $rank = $rank + 1;
      $prevValue = $percent;
    }
    
    if ($rank > $toprankingnumber)
    {
      break;
    }

    $totalpercenttable = $totalpercenttable . "
    <tr>
    <td style='text-align: center;'>$rank</td>
    <td>$member</td>
    <td style='text-align: center;'>$showpercent</td>
  </tr>
  ";
}

//
// build table bottom
//
$totalpercenttable = $totalpercenttable . "
</table>
</div>
";

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
    ORDER BY MS.wins DESC, MS.losses ASC, M.screenname ASC";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get game week week  email information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// build table top
//
$leaderweektable = "
<div style='width:70%;'>
<p>
  <span style='font-weight:bold; color:#228b22;'>The Top 5 Leaders for the current week on Player Weekly Totals are:</span>
<p>
<table style='width:100%;'>
  <tr style='background-color:#228b22;color:white;'>
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
while($leaderweek = mysql_fetch_assoc($sql_result)) {
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
    
    if ($rank > $toprankingnumber)
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
mysql_close($dbConn);

$email = "Daredevil Ducks - Week $week is over. Prepare for week $nextweek!\n";
$email = $email . "
<div style='font-size:15px; font-style: normal; color:black;'>

<br />

Hi Folks,

<br />

<p>
A so  so win for the Patriots. The Steelers are a tough defensive group and chippy to boot! But they have lost a great deal with Roethlisberger being out.Thank goodness for LeGarrette Blount. With out him the Patriots might not have had a running game. And that would have made it infinitely harder for Brady to pass! But a win is a win!  
</p>

<p>
The Chiefs won again beating the Saints in a tight contest. The Vikings finally lost their first game to the Eagles. The Redskins lost to the Lions in a close contest. The Jets beat the Ravens and fond, lost and fond a new quarter back - again. The Chargers beat the Falcons in an upset.
</p>

<p>
The Seahawks Cardinals overtime ended in a tie. That game feature two chances by each team to win by completing a field goal less then 15 yards from the uprights. And both teams missed. Kind of makes me wonder about league integrity. I will leave it there. 
</p>

<p>
All in all a good/weird week. But then we ARE close to Halloween.
</p>

<p>
We had another great turnout this week. Thank you all again for participating. 18 Wheeler and NFL Amateur now command sole  first place on the <span style='font-weight:bold; color:maroon;'>Total Games Won Leader</span> board! They are followed by Kathie in second place. 
</p>

<p>
18 Wheeler and NFL Amateur have also taken command of first place (100%) of the <span style='font-weight:bold; color:blue;'>Total Percentage Leader</span> Board. They are followed by Kathie.
</p>
<p>
For <span style='font-weight:bold; color:#228b22;'>Player Weekly Totals</span> bragging rights we have NFL Amateur in first place followed by ANTIC and Exploding Brain tied for second (with others). Way to go folks. The stats are below. Read em and weep (I know I do)!
</p>  
";

$email = $email .
"<div id='tablecontainer' style='width:100%;'>" .
$winstable . "\n" . 
$totalpercenttable . "\n" . 
$leaderweektable . "\n"  .
"</div>";

$email = $email . 
"<p>
<span  style='font-weight:bold; color:blue;'>Website Changes</span>
</p>

<p>
<span  style='font-weight:bold; color:red;'>Delete your Daredevil Ducks web page</span>
</p>

<p>
We have made a couple of changes that you should be aware of. You will need to delete your current version of daredevil ducks. You can do this by closing the browser or closing the tab. You may also need to clear your browser cache. If you are not sure on how to do this please contact me and I will walk you through it. You will know you need to do this if you are not able to get to the Player Stats!
</p>

<p>
<span  style='font-weight:bold; color:green;'>Player Stats now has 3 selections</span>
</p>

<p>
The Player stats now has 3 selections -  Total Wins Leaders, Total Percentage Leaders, and Weekly Total Leaders, We broke the total wins and total percentage wins out from the Leader Board page inter their own pages.
</p>

<p>
<span  style='font-weight:bold;color:green;'>We have added Player Groups</span>
</p>

<p>
The Player stats selections -  Total Wins Leaders, Total Percentage Leaders, and Weekly Total Leaders, now has a dropdown selection called Player Groups. These groups represent a number of players. If selected, only the information for those players is returned and ranked. A great way to see how you compare to your friends, family etc! We added a few groups so that you can see how it works. But if you want to have a group of your own - send me the group name and its members and I will set it up for you.
</p>

<p>
<span  style='font-weight:bold;color:green;'>Please set up your profile!</span>
</p>

<p>
Your player profile can be accessed by clicking on your avatar at the top right of the Daredevil Ducks web page. Add some information about yourself! Go to the viewing permissions check boxes at the bottom of the page and open up what you feel comfortable sharing with people,
</p>

<p>
<span  style='font-weight:bold;color:green;'>New Video available on How to Login and make your picks</span>
</p>

<p>
I have posted a video on youtube on how to login and make your game picks. You can See the video at https://youtu.be/YG9ZleppJwo
</p>";

$email = $email . "
<p> 
Great effort by all! But remember Week $nextweek (Thursday) is upon us! So start thinking about what you want to pick!  
</p>

Click on http://daredevilducks.xyz to get make your picks!
<br />
Mobile devices  can click on http://yellowrangler.com. 
<br />

AirDreamer & Wildcat Wonder

</div>
";

//
// pass back info
//
exit($email);

?>
