<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once '../../vendor/Exception.php';
require_once '../../vendor/PHPMailer.php';
require_once '../../vendor/SMTP.php';

include_once "../../../secure/emailaccounts.php";

// print_r($_POST);
// exit();

$noip = $noipaccount;
$hover = $hoveraccount;
 
$mailaccount = $_POST['emailfromaccount'];
switch ($mailaccount) {
    case $noip:
        $from = $noip;
        $host = $noiphost;
        $mailpassword = $noippassword;
        $port = $noipport;
        break;

    case $hover:
        $from = $hover;
        $host = $hoverhost;
        $mailpassword = $hoverpassword;
        $port = $hoverport;
        break;    
    
    default:
        print("Error - invalid mailaccount: $mailaccount");
        die();
}

$to = $_POST['emailto'];
$replyto = "Daredevil Ducks";
$emailChunks = 20;
$message = $_POST['emailmessage'];
$subject = $_POST['emailsubject'];

$logoimage = "img/DonaldDuckFlying-small.png";
$logoimagefullpath = "/var/www/html/daredevilducks/img/DonaldDuckFlying-small.png";
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

$toArray = explode(',', $to);
$toMemberSize = count($toArray);

$chunkStart = 0;
$membersSent = 0;
$sendIdx = 0;
$membersSliceCount = 0;
$debugcount = 0;

// debug
// print("<br> toMemberSize = $toMemberSize <br><br>");
// echo "<br>to array<br>";
// print_r($toArray);

$mail = new PHPMailer(true);
$mail->SMTPKeepAlive = true;
$mail->isSMTP();
$mail->Host = $host;
$mail->SMTPAuth = true;
$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
$mail->Port = $port;
$mail->Username = $mailaccount; 
$mail->Password = $mailpassword; 
$mail->setFrom($from);
$mail->addReplyTo($mailaccount, $replyto); 
$mail->IsHTML(true);
$mail->AddEmbeddedImage($logoimagefullpath,'logoImg');
$mail->Subject = $subject;
$mail->Body = $body;

while (($membersSent != $toMemberSize) || ($membersSent < $toMemberSize))
{
    $mail->ClearAddresses();  

    $toArraySlice = array_slice($toArray, $chunkStart, $emailChunks);
    $membersSliceCount = count($toArraySlice);
    $membersSent = $membersSent + $membersSliceCount;

    // debug
    // print("<br> chunkStart 1 = $chunkStart <br><br>");
    // print("<br> membersSliceCount = $membersSliceCount <br><br>");
    // print("<br> membersSent = $membersSent <br><br>");
    // echo "<br>to array slice<br><br>";
    // print_r($toArraySlice);

    for ( $sendIdx = 0; $sendIdx < count($toArraySlice); $sendIdx++)
    {
        $mail->AddAddress($toArraySlice[$sendIdx]);
    }

    try 
    {
        // $mail->addCC($cc);
        $mail->addReplyTo($mailaccount, $replyto); 
        $mail->IsHTML(true);
        $mail->AddEmbeddedImage($logoimagefullpath,'logoImg');
        $mail->send();
        $mail->ClearAllRecipients();

        // debug
        // echo "mail to start<br>";
        // print_r($mail);
        // echo "mail to end<br><br>";
        // echo "<br><br>Mail Object start<br>";
        // print_r($mail);
        // echo "<br><br>Mail Object end<br>";
        // echo "Email $membersSent members sent emails.";
    } catch (Exception $e) {
        echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
    }

    $chunkStart = $chunkStart + $membersSliceCount;

    // debug
    // print("<br> chunkStart 2 = $chunkStart <br><br>");
    // print("<br> membersSliceCount 2 = $membersSliceCount <br><br>");
    // $debugcount = $debugcount + 1;
    // if ($debugcount > 3)
    //     die();
}
    
$mail->smtpClose();

echo "Email $membersSent members sent emails using $mailaccount.";    
?>