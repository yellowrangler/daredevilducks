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
  <span style='font-weight:bold; color:maroon;'>The Top Leaders by Total Season Wins are:</span>
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
  -- MS.playerpickedgames as playerpickedgames,
  MS.totalgamespercent as totalgamespercent,
  -- MS.playerpickedpercent as playerpickedpercent,
  CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
  -- CONCAT( ROUND( ( MS.playerpickedpercent * 100 ), 1 ),  '%' ) as showplayerpickedpercent,
  -- MS.gametypeid as gametypeid,
  -- M.avatar as memberavatar,
  -- M.membername as membername,
  M.screenname as screenname
FROM memberstatstbl MS 
LEFT JOIN membertbl M ON M.id = MS.memberid
WHERE M.status = 'active'
AND MS.season = '$season' AND gametypeid = '$gametype'
ORDER BY MS.totalgamespercent DESC, M.screenname ASC";

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
// get the query results
//
$leadertotalpercent = mysql_fetch_assoc($sql_result);

//
// build table top
//
$totalpercenttable = "
<div style='width:70%;'>
<p>
  <span style='font-weight:bold; color:blue;'>The Top Leaders by Total Personal Pick Percentage are:</span>
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
    $showpercent = $leadertotalpercent['showtotalgamespercent'];
    $percent = $leadertotalpercent['totalgamespercent'];

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
// get weekpercent leaders 
//---------------------------------------------------------------
$sql = "SELECT
  -- MS.season as season,
  MS.memberid as memberid,
  MS.id as id,
  -- MS.wins as wins,
  -- MS.losses as losses,
  -- MS.ties as ties,
  -- MS.totalgames as totalgames,
  -- MS.playerpickedgames as playerpickedgames,
  -- MS.totalgamespercent as totalgamespercent,
  MS.playerpickedpercent as playerpickedpercent,
  -- CONCAT( ROUND( ( MS.totalgamespercent * 100 ), 1 ),  '%' ) as showtotalgamespercent,
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
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get game week week perecent email information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get the query results
//
$leaderweekpercent = mysql_fetch_assoc($sql_result);

//
// build table top
//
$weekpercenttable = "
<div style='width:70%;'>
<p>
  <span style='font-weight:bold; color:#228b22;'>The Top Leaders for the current week on Player Weekly Totals are:</span>
<p>
<table style='width:100%;'>
  <tr style='background-color:#228b22;color:white;'>
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
while($leaderweekpercent = mysql_fetch_assoc($sql_result)) {
    $member = $leaderweekpercent['screenname'];
    $showpercent = $leaderweekpercent['showplayerpickedpercent'];
    $percent = $leaderweekpercent['playerpickedpercent'];

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

    $weekpercenttable = $weekpercenttable . "
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
$weekpercenttable = $weekpercenttable . "
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
Another good win for the Patriots. The Bengals are a tough defensive group. A lot of chippieness especially at the end - but hopefully no harm done. So its on to Pittsburgh! 
</p>

<p>
The Chargers Broncos game was a real nail-biter. The Chargers always seem to find a way to lose in the 4th quarter. And it seemed like that was going to happen again. But no - the Chargers persevered!  A great game if you were a Chargers fan. 
</p>

<p>
A bad day for Steeler fans as big Ben went down with a meniscus tear. Only time will tell when or if he will make it back for this season. Still, the Steelers have plenty of fire power so we shall have to wait and see.
</p>

<p>
What is up with those crazy Chiefs; they win, they loose - repeat! They beat up the good looking kid on the block (Oakland) quite handily.  I never know which team is going to show up with either of these teams. 
</p>

<p>
The Falcons Seahawks was a good game marred by bad officiating. Is it just me or is the league unable to be anything even near consistent - especially with anything to do with pass interference. Atlanta got victimized by a terrible call at the end of the game. Doesn't mean Atlanta would have won, But.....
</p>

<p>
The Texans Colts game was a late night snooze for the first 3 quarters. Not a good looking game up to that point. I confess that I went to bed expecting to see a Colt victory in the morning. Woof! For those Texan fans who put the time in and stayed up - You got your reward!
</p>

<p>
All in all a good/bizarre week.
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
$weekpercenttable . "\n"  .
"</div>";

$email = $email . "
<p> 

Great effort by all! But remember Week $nextweek (Thursday) is upon us! So start thinking about what you want to pick!  
</p>

Click on http://daredevilducks.xyz to get make your picks!
<br />
Mobile devices  can click on http://yellowrangler.com. 
<br />

<p>
We have added a selection under <span style='font-weight:bold; color:maroon;'>Teams</span> titled <span style='font-weight:bold; color:grey;'>Current Scores</span>. Clicking on that will open another browser window with current scores for the week that the teams are playing (courtesy of NFL.com).
</p>

<br />

AirDreamer & Wildcat Wonder

</div>
";
//
// pass back info
//
exit($email);

?>
