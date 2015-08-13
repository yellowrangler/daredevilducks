<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// set variables
$enterdate = $datetime;

$unixTS = strtotime($datetime);
echo $unixTS; echo " unix<br/>"; 
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
echo $mysqlTS; 
echo " mysql<br/>"; 

$year = date("Y", $unixTS);
echo $year; 
echo " year<br/><br/>"; 

// $gamedatetime = $mysqlTS;
// $datetimestr = strtotime($gamedatetime);
// $gameday = date("D",$datetimestr);
// $gametime = date("g:i a",$datetimestr);
// $gamedate = date("M j",$datetimestr);

	
?>
