<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;
$season = $_POST['season'];
$gamenbr = $_POST['gamenbr'];
$hometeamid = $_POST['hometeamid'];
$awayteamid = $_POST['awayteamid'];
$maxrankweek = 0;

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get team weekly rankings information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get team weekly rankings information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get max week from team rank table
//---------------------------------------------------------------
$sql = "SELECT MAX(week) AS maxrankweek FROM teamweekranktbl";
$sql_result_check = @mysql_query($sql, $dbConn);
if (!$sql_result_check)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get team weekly rankings information for max week.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

$row = mysql_fetch_assoc($sql_result_check);
$maxrankweek = $row['maxrankweek'];

//---------------------------------------------------------------
// Get team weekly rankings information
//---------------------------------------------------------------
$sql = "SELECT DISTINCT
G.week as week,
TH.id as hometeamid,
TA.id as awayteamid,
TH.location as hometeamlocation, 
TH.name as hometeamname, 
TH.teamiconname as hometeamiconname, 
TA.location as awayteamlocation, 
TA.name as awayteamname, 
TA.teamiconname as awayteamiconname, 
G.hometeamscore as hometeamscore, 
G.awayteamscore as awayteamscore, 

'Standings' as standingsheader,
'Overall' as overallstandingstitle,
TSH.wins as hometeamwins, 
TSH.losses as hometeamlosses, 
TSH.ties as hometeamties,
TSA.wins as awayteamwins, 
TSA.losses as awayteamlosses, 
TSA.ties as awayteamties,

'Power Rankings' as powerrankingsheader,
'Overall' as overallrankingstitle,
TRH.powerranking as hometeampowerranking, 
TRA.powerranking as awayteampowerranking, 

'Offence Rankings' as offencerankingsheader,
'Overall' as offenceoverallrankingstitle,
TRH.offencetotal as hometeamoffencetotal, 
TRA.offencetotal as awayteamoffencetotal, 
'Scoring' as offencescoringrankingstitle,
TRH.offencescoring as hometeamoffencescoring, 
TRA.offencescoring as awayteamoffencescoring, 
'Passing' as offencepassingrankingstitle,
TRH.offencepassing as hometeamoffencepassing, 
TRA.offencepassing as awayteamoffencepassing, 
'Rushing' as offencerushingeamoffencerushing,
TRH.offencerushing as hometeamoffencerushing, 
TRA.offencerushing as awayteamoffencerushing, 

'Defence Rankings' as defencerankingsheader,
'Overall' as defenceoverallrankingstitle,
TRH.defencetotal as hometeamdefencetotal, 
TRA.defencetotal as awayteamdefencetotal, 
'Scoring' as defencescoringrankingstitle,
TRH.defencescoring as hometeamdefencescoring, 
TRA.defencescoring as awayteamdefencescoring, 
'Passing' as defencepassingrankingstitle,
TRH.defencepassing as hometeamdefencepassing, 
TRA.defencepassing as awayteamdefencepassing, 
'Rushing' as defencerushingeamdefencerushing,
TRH.defencerushing as hometeamdefencerushing, 
TRA.defencerushing as awayteamdefencerushing

FROM gamestbl G 
LEFT JOIN teamweekstatstbl TSH ON G.hometeamid = TSH.teamid
	AND G.season = TSH.season AND G.week = TSH.week
LEFT JOIN teamweekstatstbl TSA ON G.awayteamid = TSA.teamid	
	AND G.season = TSA.season AND G.week = TSA.week	
LEFT JOIN teamweekranktbl TRH on TRH.season = TSH.season AND
	TRH.week = TSH.week AND TRH.teamid = TSH.teamid
LEFT JOIN teamweekranktbl TRA on TRA.season = TSA.season AND
	TRA.week = TSA.week AND TRA.teamid = TSA.teamid	
LEFT JOIN teamstbl TH ON G.hometeamid = TH.id AND TH.ID = $hometeamid	
LEFT JOIN teamstbl TA ON G.awayteamid = TA.id AND TA.ID = $awayteamid	
LEFT JOIN gamebyetbl GB ON GB.season = G.season AND GB.week = G.week	
WHERE G.season = $season AND G.gamenbr = $gamenbr";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get team weekly rankings information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get the query results
//
$teamstat = mysql_fetch_assoc($sql_result);

// print_r($teamstat);
// exit();

//
// Set the variables 
//
$week = $teamstat['week']; 
$hometeamid = $teamstat['hometeamid']; 
$awayteamid = $teamstat['awayteamid']; 
$hometeamlocation = $teamstat['hometeamlocation'];  
$hometeamname = $teamstat['hometeamname']; 
$hometeamiconname = $teamstat['hometeamiconname']; 
$awayteamlocation = $teamstat['awayteamlocation'];  
$awayteamname = $teamstat['awayteamname'];  
$awayteamiconname = $teamstat['awayteamiconname']; 
$hometeamscore = $teamstat['hometeamscore'];  
$awayteamscore = $teamstat['awayteamscore'];  

$hometeamwins = $teamstat['hometeamwins'];  
$hometeamlosses = $teamstat['hometeamlosses'];  
$hometeamties = $teamstat['hometeamties']; 
$awayteamwins = $teamstat['awayteamwins'];  
$awayteamlosses = $teamstat['awayteamlosses'];  
$awayteamties = $teamstat['awayteamties']; 

$hometeampowerranking = $teamstat['hometeampowerranking'];  
$awayteampowerranking = $teamstat['awayteampowerranking'];  

$hometeamoffencetotal = $teamstat['hometeamoffencetotal'];  
$awayteamoffencetotal = $teamstat['awayteamoffencetotal'];  

$hometeamoffencescoring = $teamstat['hometeamoffencescoring'];  
$awayteamoffencescoring = $teamstat['awayteamoffencescoring'];  

$hometeamoffencepassing = $teamstat['hometeamoffencepassing'];  
$awayteamoffencepassing = $teamstat['awayteamoffencepassing'];  

$hometeamoffencerushing = $teamstat['hometeamoffencerushing'];  
$awayteamoffencerushing = $teamstat['awayteamoffencerushing'];  

$hometeamdefencetotal = $teamstat['hometeamdefencetotal'];  
$awayteamdefencetotal = $teamstat['awayteamdefencetotal'];  

$hometeamdefencescoring = $teamstat['hometeamdefencescoring'];  
$awayteamdefencescoring = $teamstat['awayteamdefencescoring'];  

$hometeamdefencepassing = $teamstat['hometeamdefencepassing'];  
$awayteamdefencepassing = $teamstat['awayteamdefencepassing'];  

$hometeamdefencerushing = $teamstat['hometeamdefencerushing'];  
$awayteamdefencerushing = $teamstat['awayteamdefencerushing']; 

//
// build the table
//

$returnStr = "
<table style='width:95%;' class='table' >
	<tr >
		<td>&nbsp;</td>			
		<td>
			<img height='50' src='img/nflicons/$hometeamiconname'> $hometeamname
		</td>
		<td>
			<img height='50' src='img/nflicons/$awayteamiconname'> $awayteamname
		</td>											
	</tr>

	<tr style='background:green;color:white;font-weight:bold;' >
		<td colspan=3>Standings</td>											
	</tr>

	<tr >
		<td>Overall W-L-T</td>

		<td class='center-column-text'>
		   $hometeamwins - $hometeamlosses - $hometeamties
		</td>

		<td class='center-column-text'>
		   $awayteamwins - $awayteamlosses - $awayteamties
		</td>												
	</tr>

	<tr >
		<td>Conference W-L-T</td>

		<td class='center-column-text'>
		   TBD
		</td>
		
		<td class='center-column-text'>
		   TBD
		</td>												
	</tr>

	<tr >
		<td>Division W-L-T</td>

		<td class='center-column-text'>
		   TBD
		</td>
		
		<td class='center-column-text'>
		   TBD
		</td>												
	</tr>

	<tr style='background:#0ABEC7;color:white;font-weight:bold;'>
		<td colspan=3>Power Rankings</td>										
	</tr>

	<tr >
		<td>Overall</td>

		<td class='center-column-text'>
		   $hometeampowerranking
		</td>

		<td class='center-column-text'>
		   $awayteampowerranking
		</td>												
	</tr>

	<tr style='background:#006600;color:white;font-weight:bold;'>
		<td colspan=3>Offence Power Rankings</td>								
	</tr>

	<tr >
		<td>Overall</td>

		<td class='center-column-text'>
		   $hometeamoffencetotal
		</td>

		<td class='center-column-text'>
		   $awayteamoffencetotal
		</td>												
	</tr>

	<tr >
		<td>Scoring</td>

		<td class='center-column-text'>
		   $hometeamoffencescoring
		</td>

		<td class='center-column-text'>
		   $awayteamoffencescoring
		</td>												
	</tr>

	<tr >
		<td>Passing</td>

		<td class='center-column-text'>
		   $hometeamoffencepassing
		</td>

		<td class='center-column-text'>
		   $awayteamoffencepassing
		</td>												
	</tr>

	<tr >
		<td>Rushing</td>

		<td class='center-column-text'>
		   $hometeamoffencerushing
		</td>

		<td class='center-column-text'>
		   $awayteamoffencerushing
		</td>												
	</tr>

	<tr style='background:#CC0000;color:white;font-weight:bold;'>
		<td colspan=3>Defence Power Rankings</td>								
	</tr>

	<tr >
		<td>Overall</td>

		<td class='center-column-text'>
		   $hometeamdefencetotal
		</td>

		<td class='center-column-text'>
		   $awayteamdefencetotal
		</td>												
	</tr>

	<tr >
		<td>Scoring</td>

		<td class='center-column-text'>
		   $hometeamdefencescoring
		</td>

		<td class='center-column-text'>
		   $awayteamdefencescoring
		</td>												
	</tr>

	<tr >
		<td>Passing</td>

		<td class='center-column-text'>
		   $hometeamdefencepassing
		</td>

		<td class='center-column-text'>
		   $awayteamdefencepassing
		</td>												
	</tr>

	<tr >
		<td>Rushing</td>

		<td class='center-column-text'>
		   $hometeamdefencerushing
		</td>

		<td class='center-column-text'>
		   $awayteamdefencerushing
		</td>												
	</tr>

</table>";


//
// close db connection
//
mysql_close($dbConn);

//
// pass back info
//
exit($returnStr);

?>
