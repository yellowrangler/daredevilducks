<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

//
// post input
//
$memberid = "";

if( isset($_POST['memberid']) )
{
     $memberid = $_POST['memberid'];
}

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get member profile information.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get member profile information.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get member profile information
//---------------------------------------------------------------
$sql = "SELECT 
	M.id as memberid, 
	M.membername, 
	M.screenname, 
	M.gender, 
	M.avatar, 
	M.role, 
	M.email, 
	M.street, 
	M.city, 
	M.state, 
	M.zip, 
	M.phonenumber, 
	M.membernameprofileind,
	M.genderprofileind,
	M.emailprofileind,
	M.addressprofileind,
	M.phonenumberprofileind,
	M.biographyprofileind,
	M.favoriteteamid, 
	M.noemail, 
	M.biography, 
	CONCAT(T.name, ' ', T.location) as favorateteam,
	T.teamiconname as favoriteteamiconame,
	T.teamurl as favoriteteamurl
FROM membertbl M 
LEFT JOIN teamstbl T on T.id = M.favoriteteamid
WHERE M.id = '$memberid' AND M.status = 'active'";

// print $sql;
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
    $log = new ErrorLog("logs/");
    $sqlerr = mysql_error();
    $log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to get member profile information.");
    $log->writeLog("SQL: $sql");

    $status = -100;
    $msgtext = "System Error: $sqlerr";
}

//
// get the query results
//
$memberprofile = mysql_fetch_assoc($sql_result);

// print_r($memberprofile);
// exit();

//
// Set the variables 
//
$memberid = $memberprofile['memberid'];
$membername = $memberprofile['membername'];
$memberavatar = $memberprofile['avatar'];
$membergender = $memberprofile['gender'];
$memberstreet = $memberprofile['street'];
$membercity =  $memberprofile['city'];
$memberstate = $memberprofile['state'];
$memberzip = $memberprofile['zip'];
$memberphonenumber = $memberprofile['phonenumber'];
$memberemail = $memberprofile['email'];
$memberscreenname = $memberprofile['screenname']; 
$memberbiography = $memberprofile['biography'];

$membernameprofileind = $memberprofile['membernameprofileind'];
$genderprofileind = $memberprofile['genderprofileind'];
$emailprofileind = $memberprofile['emailprofileind'];
$addressprofileind = $memberprofile['addressprofileind'];
$phonenumberprofileind = $memberprofile['phonenumberprofileind'];
$biographyprofileind = $memberprofile['biographyprofileind'];
$noemail = $memberprofile['noemail'];
$favoriteteamid = $memberprofile['favoriteteamid'];
$memberfavorateteam = $memberprofile['favorateteam'];
$memberfavoriteteamiconame = $memberprofile['favoriteteamiconame'];
$memberfavoriteteamurl = $memberprofile['favoriteteamurl'];

if ($memberfavoriteteamiconame == "")
{
	$memberfavoriteteamiconame = "noselect.png";
}

//
// build the table
//

// table start
$returnStr = "<table style='width:95%;' class='table' >";

// first row 
$returnStr = $returnStr . "
	<tr >
		<td style='font-weight:bold;padding-top:20px;'>$memberscreenname</td>			
		<td>
			<div style='text-align:center;'>
				<img style='text-align:center;' height='50' src='img/avatars/$memberavatar'> 
			</div>
		</td>
		<td>
			<div style='text-align:center;'>
				<img style='text-align:center;' height='50' src='img/nflicons/$memberfavoriteteamiconame'> 
			</div>
		</td>										
	</tr>	
";

// show bio if allowed
if ($biographyprofileind == 1)
{
	$returnStr = $returnStr . "
	<tr>
		<td>Biography:</td>	
		<td colspan=2>$memberbiography</td>									
	</tr>
	";
}

// show name if allowed
if ($membernameprofileind == 1)
{
	$returnStr = $returnStr . "
	<tr>
		<td>Name:</td>	
		<td colspan=2>$membername</td>									
	</tr>
	";
}

// show gender if allowed
if ($genderprofileind == 1)
{
	$returnStr = $returnStr . "
	<tr>
		<td>Gender:</td>	
		<td colspan=2>$membergender</td>							
	</tr>
	";
}

// show address if allowed
if ($addressprofileind == 1)
{
	$returnStr = $returnStr . "
	<tr>
		<td>City:</td>	
		<td colspan=2>$membercity</td>									
	</tr>
	<tr>
		<td>State:</td>	
		<td colspan=2>$memberstate</td>									
	</tr>
	";
}

// show email if allowed
if ($emailprofileind == 1)
{
	$returnStr = $returnStr . "
	<tr>
		<td>eMail:</td>	
		<td colspan=2><a href='mailto:$memberemail' target='_top'>$memberemail</a></td>									
	</tr>
	";
}

// close the table
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