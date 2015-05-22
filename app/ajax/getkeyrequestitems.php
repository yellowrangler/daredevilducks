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
        "Patient" => "Tarrant Cutler Jr",
        "Provider" => "Beverly Hospital",
        "Provider NPI" => "999900000-123",
        "Event" => "Emergency Room Admission",
        "Event Date" => "04222015",
        "Request Date" => "04222015",
        "eMailStatus" => "Y",
        "eMail Address" => "bob.smaith@gmail.com",
        "FaxStatus" => "Y",
        "Fax Number" => "666-987-1123",
        "MailStatus" => "Y",
        "Phone Number" => "781-987-1123",
        "Address1" => "2 Medical St",
        "Address2" => "East Wing",
        "City" => "Beverly",
        "State" => "MA",
        "ZIP" => "02345",
        "Status" => "New"
    ],
    [
        "Patient" => "Tamela Louise Jamieson",
        "Provider" => "Winchester Hospital",
        "Provider NPI" => "999900000-123",
        "Event" => "Emergency Room Admission",
        "Event Date" => "04222015",
        "Request Date" => "04222015",
        "eMailStatus" => "N",
        "eMail Address" => "gene.smaith@gmail.com",
        "FaxStatus" => "Y",
        "Fax Number" => "333-987-1123",
        "MailStatus" => "Y",
        "Phone Number" => "781-987-1123",
        "Address1" => "2 Medical St",
        "Address2" => "East Wing",
        "City" => "Beverly",
        "State" => "MA",
        "ZIP" => "02345",
        "Status" => "New"        
    ],
    [
        "Patient" => "Steve Paris",
        "Provider" => "Dr Robert Johnsom III",
        "Provider NPI" => "999900000-123",
        "Event" => "Physical",
        "Event Date" => "04222015",
        "Request Date" => "04222015",
        "eMailStatus" => "N",
        "eMail Address" => "stan.smaith@gmail.com",
        "FaxStatus" => "N",
        "Fax Number" => "444-987-1123",
        "MailStatus" => "Y",
        "Phone Number" => "781-987-1123",
        "Address1" => "2 Medical St",
        "Address2" => "Address 2",
        "City" => "Beverly",
        "State" => "MA",
        "ZIP" => "02345",
        "Status" => "New"        
    ],
    [
        "Patient" => "Bridget Mary Cutler",
        "Provider" => "Lahey Clinic",
        "Provider NPI" => "999900000-123",
        "Event" => "Physical",
        "Event Date" => "04222015",
        "Request Date" => "04222015",
        "eMailStatus" => "N",
        "eMail Address" => "gloria.smaith@gmail.com",
        "FaxStatus" => "Y",
        "Fax Number" => "886-987-1123",
        "MailStatus" => "N",
        "Phone Number" => "781-987-1123",
        "Address1" => "2 Medical St",
        "Address2" => "",
        "City" => "Burlington",
        "State" => "MA",
        "ZIP" => "02345",
        "Status" => "New"        
    ]
];

exit(json_encode($requestitems));
?>
