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
$inboxitems = [
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "1Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "2Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "3Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "4Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "5Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "6Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "7Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "Fax",
        "Date Time" => "04302015 04:19:34"
    ],
    [
        "File Name" => "hafax05012015-001.pdf",
        "Type" => "8Fax",
        "Date Time" => "05012015 01:23:02"
    ],
    [
        "File Name" => "hascan04012015-001.pdf",
        "Type" => "Scan",
        "Date Time" => "04012015 11:23:02"
    ],
    [
        "File Name" => "hafax04302015-001.pdf",
        "Type" => "End",
        "Date Time" => "04302015 04:19:34"
    ]
];

exit(json_encode($inboxitems));
?>
