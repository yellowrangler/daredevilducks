<?php
require_once "Mail.php";

$textNumber = "9782392650";
$textCarrier = "messa­gin­g.s­pri­ntp­cs.com";
$textTo = $textNumber . "@" . $textCarrier;
$textFrom = "daredevilducks.xyz@gmail.com";
$textMessage = "This was sent with PHP!\nOh Ya! Yarrr!";


$headers = "From: $textFrom\n";
echo mail($textTo, '', $textMessage, $headers);

// var_dump( mail( $textNumber . "@" . $textCarrier, '', $textMessage ) ); // bool(true)
 
// 9782392650@messa­gin­g.s­pri­ntp­cs.com; 
?>