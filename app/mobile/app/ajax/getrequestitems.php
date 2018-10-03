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
$inboxitems = "";

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
$DBschema = "daps";
$DBuser = "daps";
$DBpassword = "daps";

//
// connect to db
//
// $dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
// if (!$dbConn) 
// {
// 	$log = new ErrorLog("logs/");
// 	$dberr = mysql_error();
// 	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to change password for daps client.");

// 	$rv = "";
// 	exit($rv);
// }

// if (!mysql_select_db($DBschema, $dbConn)) 
// {
// 	$log = new ErrorLog("logs/");
// 	$dberr = mysql_error();
// 	$log->writeLog("DB error: $dberr - Error selecting db Unable to change password for daps client.");

// 	$rv = "";
// 	exit($rv);
// }

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($enterdate));

//---------------------------------------------------------------
// Get inbox items from directory
//---------------------------------------------------------------


//
// close db connection
//
// mysql_close($dbConn);
	
// print_r($addhere);
// print("I am here");
// die();	

//
// pass back info
//
$requestitems = [
    [
        "Request ID" => "05052015102435-0001",
        "Patient" => "Tarrant Cutler Jr",
        "Provider" => "Beverly Hospital",
        "Event" => "Emergency Room Admission",
        "Event Date" => "04222015"
    ],
    [
        "Request ID" => "05052015102435-0002",
        "Patient" => "Tammela Louise Jamieson",
        "Provider" => "Shush Jacobs MD",
        "Event" => "Physical",        
        "Event Date" => "04122015"
    ],
    [
        "Request ID" => "05052015102435-0003",
        "Patient" => "Steven Paris",
        "Provider" => "Mass General",
        "Event" => "Emergency Room Admission",        
        "Event Date" => "02052013"
    ],
    [
        "Request ID" => "05052015102435-0004",
        "Patient" => "Doug Soreson",
        "Provider" => "Quincy Medical Labs",
        "Event" => "Lab Work",        
        "Event Date" => "03052015"
    ]
];

exit(json_encode($requestitems));
?>
