<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// require_once __DIR__ . '/vendor/Exception.php';
// require_once __DIR__ . '/vendor/PHPMailer.php';
// require_once __DIR__ . '/vendor/SMTP.php';

// require_once '/home/pi/Development/daredevilducks/vendor/Exception.php';
// require_once '/home/pi/Development/daredevilducks/vendor/PHPMailer.php';
// require_once '/home/pi/Development/daredevilducks/vendor/SMTP.php';

require_once '../../vendor/Exception.php';
require_once '../../vendor/PHPMailer.php';
require_once '../../vendor/SMTP.php';

// get post variables 
$from = $_POST['emailfrom'];
$to = $_POST['emailto'];
$message = $_POST['emailmessage'];
$subject = $_POST['emailsubject'];
// $mailaccount = "daredevilducks.xyz@gmail.com";
// $mailpassword = "ddd-02653$";
$mailaccount = "tccutler@tandtwanderers.com";
$mailpassword = "W49BhP+qQg@";
$logoimage = "img/DonaldDuckFlying-small.png";
$logoimagefullpath = "/var/www/html/daredevilducks/img/DonaldDuckFlying-small.png";

// passing true in constructor enables exceptions in PHPMailer
$mail = new PHPMailer(true);

try {
    // Server settings
    // $mail->SMTPDebug = SMTP::DEBUG_SERVER; // for detailed debug output
    $mail->isSMTP();
    $mail->Host = 'mail.hover.com';
    // $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

 //    $mail->SMTPOptions = array(
	// 	'ssl' => array(
	// 	'verify_peer' => false,
	// 	'verify_peer_name' => false,
	// 	'allow_self_signed' => true
	// 	)
	// );

    $mail->Username = $mailaccount; // YOUR gmail email account name
    $mail->Password = $mailpassword; // YOUR gmail password

    // Sender and recipient settings
    $mail->setFrom($from);

    $toArray = explode(',', $to);
    while (list ($key, $val) = each ($toArray)) {
        $mail->AddAddress($val);
    }

    $mail->addCC('tccutler@tandtwanderers.com');
	$mail->addBCC('tjcutler@tandtwanderers.com');

    $mail->addReplyTo($mailaccount, 'Daredevil Ducks'); // to set the reply to

    // Setting the email content
    $mail->IsHTML(true);
    $mail->AddEmbeddedImage($logoimagefullpath,'logoImg');

    $body = "<html>
    <body>
    <div style='display:block;margin:0 auto;padding:0px;width:98%;'>

    <div style='background-color:#F1948A;padding-top:6px;padding-bottom:10px;padding-left:0px;width:100%;height:60px;' id='headerlogo'>
    <img style='float:left;padding-left:10px;padding-top:6px;' src='cid:logoImg' />
    <span style='float:left;font-size:20px;padding-left:10px;padding-top:18px;font-weight:bold;'>League News</span>
    </div>

    <div style='clear:both;padding-top:15px;'>
    $message
    </div>

    </div>
    </body>
    </html>";

    $mail->Subject = $subject;
    $mail->Body = $body;
    // $mail->AltBody = 'Plain text message body for non-HTML email client. Gmail SMTP email body.';

    $mail->send();
    echo "Email message sent.";
} catch (Exception $e) {
    echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
}

?>