<?php

include_once ('../class/class.MailerDDD.php');

// ini_set('display_errors','on');
// error_reporting(E_ALL);

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// set variables
$from = $_POST['emailfrom'];
$to = $_POST['emailto'];
$cc = "tarrant.cutler@gmail.com, tjamieson@healthallianze.com";
$message = $_POST['emailmessage'];
$subject = $_POST['emailsubject'];

//
// create mail object
//
$mail = new MailerDDD($from,$to,$cc,$subject,$message);

// send email
$rv = $mail->sendMail();

// //
// // pass back info
// //
exit($rv);

?>
