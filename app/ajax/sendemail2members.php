<?php

// include_once ('../class/class.Log.php');
// include_once ('../class/class.ErrorLog.php');
// include_once ('../class/class.AccessLog.php');
// include_once ('../class/class.MailerDDD.php');

require_once "Mail.php";
require_once "Mail/mime.php";

// ini_set('display_errors','on');
// error_reporting(E_ALL);

// get date time for this transaction
$datetime = date("Y-m-d H:i:s");

// set variables
$from = $_POST['emailfrom'];
$to = $_POST['emailto'];
$body = $_POST['emailmessage'];
$subject = $_POST['emailsubject'];

$host = "smtp.gmail.com";
$port = "587";
$username = "daredevilducks.xyz@gmail.com";
$password = "ddd-02653$";
$headers = array ('From' => $from,'To' => $to,'Subject' => $subject);
$mailbody = "<html><body>$body</body></html>";

$mime = new Mail_mime();
$mime->setHTMLBody($mailbody);
$body = $mime->get();
$headers = $mime->headers($headers);
$smtp = Mail::factory(
    'smtp',array (
        'host' => $host,
        'auth' => true,
        'username' => $username,
        'password' => $password,
        'port' => $port
    )
);

// send email
$mail = $smtp->send($to, $headers, $mailbody);
if (PEAR::isError($mail)) {
    $rv = $mail->getMessage();
} else {
    $rv = "<b><Center>Succesfully sent email to </b>$to</center>";
}

//
// pass back info
//
exit($rv);

?>
