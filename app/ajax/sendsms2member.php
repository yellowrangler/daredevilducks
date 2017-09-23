<?php

include_once ('../class/class.MailerDDDsms.php');

// ini_set('display_errors','on');
// error_reporting(E_ALL);

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// set variables
$from = $_POST['emailfrom'];
$to = $_POST['emailto'];
$textmessage = $_POST['textmessage'];

//
// create mail object
//
$sms = new MailerDDDsms($from,$to,$textmessage);

// send email
$rv = $sms->sendMail();

// //
// // pass back info
// //
exit($rv);

?>
