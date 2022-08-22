<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once '../../vendor/Exception.php';
require_once '../../vendor/PHPMailer.php';
require_once '../../vendor/SMTP.php';

// get post variables 
$from = "tccutler@tandtwanderers.com";
$to = "tccutler@tandtwanderers.com";
$host = "mail.hover.com";
$port = 587;
$subject = "This is test Subject";
$mailaccount = "tccutler@tandtwanderers.com";
$mailpassword = "W49BhP+qQg@";
$logoimage = "img/DonaldDuckFlying-small.png";
$logoimagefullpath = "/var/www/html/daredevilducks/img/DonaldDuckFlying-small.png";

$message = "<p>
<span style='font-size:16px;font-style:normal;font-weight:bold;color:#6C0000;'>Welcome to the Daredevil Ducks Football League 2022 Season!</span>
</p>

<div style='padding-top:25px;font-size:16px; font-style: normal;color:black;'>

Hi <span style='color:teal;'>All Daredevil Ducks members</span>,

<br />

<p>
Last year the Rams won the Super Bowl against the upstart Bengals! But now the competition starts anew. All teams are poised at the starting line looking to make this year their dream year. Who will it be? 
</p>

<p>
And which one of our Dare Devilducks members will have the savvy and brains to take the crown!  Last year <span style='color:#FF6E3B;font-weight:700;'>Hygenius</span> took the 'Crown'! But it is a new year, so all are potential Daredevil Duck champions! So lets put on our favorite teams clothing and have some fun! After all that is what Dare Devilducks is all about!
</p>

<p>
Everyone receiving this email was either on last years roster or has reached out to join for the new season. Consider yourself enrolled and setup for our Daredevil Ducks Football website! 
</p>

<p>
    This opening weeks games are played on:
    <br />
    <span style='color:#FF6E3B;font-weight:900;'>Thursday September 8, 2022</span>  
    <br />
    <span style='color:#FF6E3B;font-weight:900;'>Sunday September 11, 2022</span>  
    <br />
    <span style='color:#FF6E3B;font-weight:900;'>Monday September 12, 2022</span>.
</p>

<p>
As usual, we will be collecting a $2 donation from all members. This will cover the excellent prizes for the season winner! For those of you winners who have not been presented with your excellent prizes, be assured that we are working on completing them. You can send the fee in or give it to either Tammy or Tarry. If you are mailing the fee; send it to:
</p>

<div style='padding-top:10px;padding-bottom:10px;padding-left:35px;'>
Tarry & Tammy Cutler <br>
PO Box 258 <br>
East Orleans, MA 02643 <br>
</div>

<p>
So this is how it works; A football week starts on <span style='font-weight:bold; color:#FF6E3B;'>Thursday night</span> and ends on <span style='font-weight:bold; color:#FF6E3B;'>Monday night</span>. So go to Pick games and start picking and having fun!
</p>

<p>Glad to have you all back! And for our new members - Welcome Aboard!</p>
<br />
<br />

AirDreamer & Wildcat Wonder
</div>";
// passing true in constructor enables exceptions in PHPMailer
// $mail->SMTPDebug = SMTP::DEBUG_SERVER; // for detailed debug output
$mail = new PHPMailer(true);

try {
    $mail->SMTPDebug = 2;
    $mail->isSMTP();
    $mail->Host = $host;
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = $port;
    $mail->Username = $mailaccount; // YOUR gmail email account name
    $mail->Password = $mailpassword; // YOUR gmail password
    $mail->setFrom($from);
    $mail->addAddress('tjcutler@tandtwanderers.com');
    $mail->addCC('tccutler@tandtwanderers.com');
    $mail->addBCC('tjcutler@tandtwanderers.com');
    $mail->addReplyTo($mailaccount, 'Daredevil Ducks'); // to set the reply to
    $mail->IsHTML(true);
    $mail->AddEmbeddedImage($logoimagefullpath,'logoImg');
    $mail->Subject = $subject;
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
    $mail->Body = $body;
    $mail->send();
    echo "Email message sent.";
} catch (Exception $e) {
    echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
}

?>