<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');
include_once ('../class/class.MailerHA.php');

//
// functions
//
function randomPassword() {
    $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789!@#$%&*+";
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 8; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// get post values & set values for insert
$registername = $_POST["registername"];
$registeremail = $_POST["registeremail"];
$registercomments = $_POST["registercomments"];
$enterdate = $datetime;
$createdate = $datetime;
$passwd = randomPassword();
$status = 1;
$msgtext = "";
$logintemplink = "http://72.93.12.240/Stuff/ichcpm/#/enrollmenttemplogin";

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
$DBschema = "ichcpm";
$DBuser = "ichcpm";
$DBpassword = "ichcpm";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to resgister ICHCP client.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to resgister ICHCP client.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$createdateTS = date("Y-m-d H:i:s", strtotime($createdate));
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// add registration information to register table. 
//---------------------------------------------------------------
$sql = "INSERT INTO regitertbl (name,email,passwd,status,comment,createdate,enterdate)";
$sql .= "VALUES ('$registername','$registeremail','$passwd',$status,$registercomments,'$createdateTS','$enterdateTS')";
// print $sql;

$rv = "";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing insert to db Unable to resgister ICHCP client.");
	$log->writeLog("SQL: $sql");

	$status = -100;
	$msgtext = "System Error: $sqlerr";
}

//
// get the new regiterclientid
//
if ($status == 1)
{
	$regiterclientid = "";
	$regiterclientid = mysql_insert_id();
}

//
// close db connection
//
mysql_close($dbConn);

//
// now send out email with temporary password
//
if ($status == 1)
{
	$from = '<tcutler.healthallianze@gmail.com>';
	$to = '<tarrant.cutler@gmail.com>';
	$subject = 'Welcome to the International Concierge Health Care Partners Registration!';
	$body = "Hi $registername,\n\nThank you for registering with International Concierge Health Partners!";
	$body .=  " Please login with this email address and the following temporary password.\n\n$passwd";
	$body .=  "\n\nat the following link $logintemplink. You will be prompted to give us a new password of your own choosing. ";
	$body .=  "Once that is complete you may start the registration form fulliment process.\n\n";
	$body .=  "Thanks again and welcome to International Concierge Health Partners\n\n\n";
	$body .=  "Sincerely\n\n ICHCP Concierge Ambassador";
	$mailer = new MailerHA($from, $to, $subject, $body);
	$mailer->sendMail();
	$rv = $mailer->getStatus();
}
	
// print_r($regiterclientid);
// print("I am here");
// die();		

//
// pass back info
//
$msg["mailstatus"] = sprintf("%u", $rv);
$msg["status"] = sprintf("%u", $status);
$msg["clientid"] = sprintf("%u", $regiterclientid); 
$msg["text"] = $msgtext;

exit(json_encode($msg));
?>
