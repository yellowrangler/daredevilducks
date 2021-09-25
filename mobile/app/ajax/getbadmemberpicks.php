<?php

//
// post input
//

// Set this at beginning of season
$season = "2021";
$week = "3";

if( isset($_POST['season']) )
{
     $season = $_POST['season'];
}

if( isset($_POST['week']) )
{
     $week = $_POST['week'];
}

//
// functions
//


//
// db connect
//
$modulecontent = "Unable to get member pick information.";
include 'mysqlconnect.php';

//---------------------------------------------------------------
// get member pick list
//---------------------------------------------------------------
$sql = "Select memberid, membername, screenname, teamid, gamenbr,
CONCAT(T.location, ' ', T.name) as teamname
from memberpickstbl MP 
left join membertbl M on M.id = MP.memberid
left join teamstbl T on T.id = MP.teamid
where season = $season and week = $week 
order by screenname, teamid";
	
// print $sql;

//
// sql query
//
$function = "select";
include 'mysqlquery.php';

//
// fill the array
//
$memberpicks = array();
while($r = mysqli_fetch_assoc($sql_result)) {
    $memberpicks[] = $r;
}

//
// close db connection
//
mysqli_close($dbConn);

// 
// Now look for double picks 
// 

print "<br>Input variables: Season:$season week:$week<br>";
// print "<br>Member pick check report Start for Season: $season and week: $week <br>";
$memberpickerrors = 0;
$memberid = 0;
$k = count($memberpicks);
for ($i = 0; $i < $k; $i++)
{
	if ($memberpicks[$i]['memberid'] != $memberid)
	{
		$memberid = $memberpicks[$i]['memberid']; 

		$prevgamenbr = 0;
	} 

	if ($memberpicks[$i]['gamenbr'] != $prevgamenbr)
	{
		$prevgamenbr = $memberpicks[$i]['gamenbr'];
	}
	else
	{
		// problem!
		$memberpickerrors++;

		print "<br>Member pick error!";
		print "<br>MemberID:" . $memberpicks[$i]['memberid'];
		print "<br>MemberName:" . $memberpicks[$i]['membername'];
		print "<br>ScreenName:" . $memberpicks[$i]['screenname'];
		print "<br>gameNbr:" . $memberpicks[$i]['gamenbr'];

		print "<br>TeamId:" . $memberpicks[$i-1]['teamid'];
		print "<br>TeamName:" . $memberpicks[$i]['teamname'];
		print "<br>TeamId:" . $memberpicks[$i-1]['teamid'];
		print "<br>TeamName:" . $memberpicks[$i]['teamname'] . "<br>";

	}
}

//
// pass back info
//
print "<br>Member pick errors: $memberpickerrors <br>";
// print "<br>Member pick check report End<br>";


?>