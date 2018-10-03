<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

$gamedate = "Jan 11";
$season = "2014";
$gametime = "4:05 PM";
//
// build gamedatetime
//
$datetime = "Sun " .$gamedate . " " . $season . " " .$gametime;
$unixTS = strtotime($datetime);
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
$gamedatetime = $mysqlTS;

//
// convert date components to be consistent
//
$datetimestr = strtotime($gamedatetime);
$gameday = date("D",$datetimestr); 
$gametime = date("g:i a",$datetimestr); 
$gamedate = date("M j",$datetimestr);

echo "datetime: " . $datetime; 
echo "<br/>"; 
echo "gameday: " . $gameday; 
echo "<br/>"; 
echo "gametime: " . $gametime; 
echo "<br/>"; 
echo "gamedate: " . $gamedate; 
echo "<br/>"; 


// // set variables
// $enterdate = $datetime;

// $unixTS = strtotime($datetime);
// echo $unixTS; echo " unix<br/>"; 
// $mysqlTS = date("Y-m-d H:i:s", $unixTS);
// echo $mysqlTS; 
// echo " mysql<br/>"; 

// $year = date("Y", $unixTS);
// echo $year; 
// echo " year<br/><br/>"; 

// // $gamedatetime = $mysqlTS;
// // $datetimestr = strtotime($gamedatetime);
// // $gameday = date("D",$datetimestr);
// // $gametime = date("g:i a",$datetimestr);
// // $gamedate = date("M j",$datetimestr);

	
?>
