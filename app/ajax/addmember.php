<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$membername = $_POST['membername'];
$gender = $_POST['gender'];
$street = $_POST['street'];
$city =  $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip'];
$phonenumber = $_POST['phonenumber'];
$email = $_POST['email'];
$status = $_POST['status'];
$screenname = $_POST['screenname']; 
$passwd = $_POST['passwd'];
$vpasswd = $_POST['vpasswd'];
$role = $_POST['role'];
$avatar = 'default.png';       
$biography = $_POST['biography'];

$membernameprofileind = 0;
$genderprofileind = 0;
$emailprofileind = 0; 
$addressprofileind = 0; 
$phonenumberprofileind = 0; 
$biographyprofileind = 0; 
$noemail = 0;
$favoriteteamid = 0;

if( isset($_POST['membernameprofileind']) )
{
     $membernameprofileind = 1;
}

if( isset($_POST['genderprofileind']) )
{
     $genderprofileind = 1;
}

if( isset($_POST['emailprofileind']) )
{
     $emailprofileind = 1;
}

if( isset($_POST['addressprofileind']) )
{
     $addressprofileind = 1;
}

if( isset($_POST['phonenumberprofileind']) )
{
     $phonenumberprofileind = 1;
}

if( isset($_POST['biographyprofileind']) )
{
     $biographyprofileind = 1;
}

if( isset($_POST['noemail']) )
{
     $noemail = 1;
} 

if( isset($_POST['favoriteteamid']) )
{

	$favoriteteamid = $_POST['favoriteteamid'];
	if (is_numeric($favoriteteamid) == false)
	{
		$favoriteteamid = 0;
	}
}

//
//  set global values
//
$msgtext = "ok";

// print_r($_POST);
// die()

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
// $returnArrayLog->writeLog("Add member request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to add membername for ddd membername $membername.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to add membername for ddd membername $membername.");

	$rv = "";
	exit($rv);
}

//
// now encode string. Must be done  after mysql connect
//
$biography = mysql_real_escape_string($biography);

//---------------------------------------------------------------
// check if membername already exists
//---------------------------------------------------------------
$sql = "SELECT * FROM membertbl WHERE membername = '$membername'";
// print $sql;

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing select to db Unable to add membername for ddd membername $membername.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr";

	exit($msgtext);
}

//
// check if member already exists
//
$count = 0;
$count = mysql_num_rows($sql_result);
if ($count == 1)
{
	$msgtext = "Member name $membername already is a member!";

	exit($msgtext);
}
	
//
// insert new member
//
//---------------------------------------------------------------
// check if membername already exists
//---------------------------------------------------------------

$sql = "INSERT INTO membertbl
	(membername, 
	screenname, 
	gender, 
	avatar, 
	role, 
	email, 
	biography,
	street,
	city, 
	state, 
	zip, 
	phonenumber, 
	membernameprofileind, 
	genderprofileind, 
	emailprofileind, 
    addressprofileind, 
    phonenumberprofileind, 
    biographyprofileind,
	noemail,
	favoriteteamid,
	passwd, 
	status, 
	enterdate) 
	VALUES ('$membername',
	'$screenname', 
	'$gender',
	'$avatar',
	'$role',
	'$email',
	'$biography',
	'$street',
	'$city',
	'$state',
	'$zip',
	'$phonenumber',
	$membernameprofileind, 
	$genderprofileind, 
	$emailprofileind, 
    $addressprofileind, 
    $phonenumberprofileind, 
    $biographyprofileind,
	$noemail,
	$favoriteteamid,
	'$passwd',
	'$status',
	'$enterdateTS')"; 

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to add membername for ddd membername $membername.");
	$log->writeLog("SQL: $sql");

	$rc = -100;
	$msgtext = "System Error: $sqlerr. sql = $sql";

	exit($msgtext);
}


//
// close db connection
//
mysql_close($dbConn);
	
// print_r($regiterclientid);
// print("I am here");
// die();	

//
// pass back info


exit($msgtext);
?>
