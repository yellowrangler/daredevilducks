<?php

include_once ('../class/class.MailerHA.php');

$from = '<tcutler.healthallianze@gmail.com>';
$to = '<tarrant.cutler@gmail.com>';
$subject = 'Hi!';
$body = "Hi,\n\nHow are you? Yowsa";

$mailer = new MailerHA($from, $to, $subject, $body);
$mailer->sendMail();
$rv = $mailer->getStatus();

echo "$rv";

?>