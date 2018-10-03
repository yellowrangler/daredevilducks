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
$message = $_POST['emailmessage'];
$subject = $_POST['emailsubject'];

$host = "smtp.gmail.com";
$port = "587";
$username = "daredevilducks.xyz@gmail.com";
$password = "ddd-02653$";
$headers = array ('From' => $from,'To' => $to,'Subject' => $subject);

$logoimage = 'img/DonaldDuckFlying-small.png';
$logoimagefullpath = "/var/www/html/daredevilducks/img/DonaldDuckFlying-small.png";
$logoimagemimetype = "image/png";

$mailbody = "<html>
            <body>
            <div style='display:block;' id='headerlogo'>
            <img style='float:left;' src='$logoimage' />
            <h2 style='float:left; paddin-left:20px;'>Dare Devil Ducks Player Coorespondence</h2>
            </div>
            <div style='padding-top:75px;clear:all;' id='messagebody'>
            <p>$message</p>
            </div>
            </body>
            </html>";

$mime = new Mail_mime();
$mime->setHTMLBody($mailbody);

$mime->addHTMLImage($logoimage, 'image/png');
$mime->addHTMLImage(file_get_contents($logoimagefullpath),$logoimagemimetype,$logoimage,false);





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
$mail = $smtp->send($to, $headers, $body);
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
