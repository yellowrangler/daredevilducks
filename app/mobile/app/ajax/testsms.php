<?php 

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

$textNumber = "9784734868";
$textCarrier = "messa­gin­g.s­pri­ntp­cs.com";
// $textNumber = "tarrant.cutler";
// $textCarrier = "gmail.com";
$textTo = $textNumber . "@" . $textCarrier;
// $textFrom = "daredevilducks.xyz@gmail.com";
// $textMessage = "This was sent with PHP!\nOh Ya! Yarrr!";


// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function

//Load composer's autoloader
// require 'vendor/autoload.php';
PHPMailer::$validator = function($email) { return true; };

$mail = new PHPMailer(true);                              // Passing `true` enables exceptions
try {
    //Server settings
    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  					  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'daredevilducks.xyz@gmail.com';                 // SMTP username
    $mail->Password = 'ddd-02653$';                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587;                                     // TCP port to connect to

    //Recipients
    $mail->setFrom('daredevilducks.xyz@gmail.com', 'Daredevil Ducks');
    // $mail->addAddress('joe@example.net', 'Joe User');     // Add a recipient
    $textTo = "9784734868@messa­gin­g.s­pri­ntp­cs.com";
    // $mail->addAddress('tarrant.cutler@gmail.com', 'test'); // Name is optional
    $mail->addAddress($textTo, 'text'); // Name is optional
    // $mail->addReplyTo($textTo, 'Information');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

    //Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

    //Content
    $mail->isHTML(false);                                  // Set email format to HTML
    $mail->Subject = '';
    $mail->Body    = 'This is the text message body';
    // $mail->AltBody = 'This is the body in plain text';

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo 'Message could not be sent.<br>' . $textTo . '<br>';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
}

?>