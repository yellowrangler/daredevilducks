<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$memberid = $_POST['memberid'];
$membername = $_POST['membername'];
$gender = $_POST['gender'];
$street = $_POST['street'];
$city =  $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip'];
$phonenumber = $_POST['phonenumber'];
$email = $_POST['email'];
$screenname = $_POST['screenname']; 
$passwd = $_POST['passwd'];
$vpasswd = $_POST['vpasswd'];
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
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Add member request started" );

//
// db connect
//
$modulecontent = "Unable to update membername for ddd member update membername $membername.";
include_once ('mysqlconnect.php');

//
// now encode string. Must be done  after mysqli connect
//
$biography = mysqli_real_escape_string($dbConn, $biography);

//---------------------------------------------------------------
// update membername 
//---------------------------------------------------------------
$sql = "UPDATE membertbl
	SET membername = '$membername', 
		screenname = '$screenname', 
		gender = '$gender', 
		email = '$email', 
		street = '$street',
		city = '$city', 
		state = '$state', 
		zip = '$zip', 
		phonenumber = '$phonenumber', 
		biography = '$biography',
		membernameprofileind = $membernameprofileind, 
		genderprofileind = $genderprofileind, 
		emailprofileind = $emailprofileind, 
	    addressprofileind = $addressprofileind, 
	    phonenumberprofileind = $phonenumberprofileind, 
	    biographyprofileind = $biographyprofileind,
		noemail = $noemail,
		favoriteteamid = $favoriteteamid,
		passwd = '$passwd', 
		enterdate = '$enterdateTS'
	WHERE id = '$memberid'"; 

//
// sql query
//
$function = "update";
include ('mysqlquery.php');

// 
// close db connection
// 
mysqli_close($dbConn);

//
// pass back info
//
exit($msgtext);
?>
