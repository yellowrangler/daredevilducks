<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

$gameday = "Sun";
$gamedate = "Jan 24";
$season = "2020";
$gameyear = "2021";
$gametime = "3:05 PM";

//
// build gamedatetime
//

// date_default_timezone_set('America/New_York');
$datetime = $gameday . " " . $gamedate . " " . $gameyear . " " .$gametime;
// $datetime = $gamedate . " " . $gameyear . " " .$gametime;
$unixTS = strtotime($datetime);
$mysqlTS = date("Y-m-d H:i:s", $unixTS);
$gamedatetime = $mysqlTS;

$gamedatetime2 = date("Y-m-d H:i:s", strtotime($datetime));

print "Original Values: gameday = $gameday,  gamedate = $gamedate, season = $season,  gameyear = $gameyear, gametimen = $gametime";
echo "<br/>"; 
print "datetime =  $datetime";
echo "<br/>"; 
print "unixTS =  $unixTS";
echo "<br/>"; 
print "mysqlTS =  $mysqlTS";
echo "<br/>"; 
print "mysql gamedatetime1: $gamedatetime";
echo "<br/>"; 
print "mysql gamedatetime2: $gamedatetime2";
echo "<br/>"; 
echo "<br/>";


$datetimestr = strtotime($gamedatetime);
$gameday = date("D",$datetimestr); 
$gametime = date("g:i a",$datetimestr); 
$gamedate = date("M j",$datetimestr);

print "Coverted back: gameday = $gameday,  gamedate = $gamedate, gametime = $gametime";
echo "<br/>"; 


// $gamedate = "9/5/19";
// $season = "2019";
// $gametime = "8:20 PM";

// //
// // make gamedatetime from m/d/yy
// //
// $datetime = $gamedate . " " . $gametime;

// $unixTS = strtotime($datetime);
// $mysqlTS = date("Y-m-d H:i:s", $unixTS);
// $gameday = date("D", $unixTS);
// $gameyear = date("Y", $unixTS);
// $gamedatetime = $mysqlTS;
// $gamedate2 = date("M j", $unixTS);

// print "gamedatetime from gameday: $gameday gamedate1: $gamedate gamedate2: $gamedate2   gametime: $gametime season: $season gameyear: $gameyear = gamedatetime: $gamedatetime";
// echo "<br/>"; 
// echo "<br/>"; 

//
// convert date components to be consistent
//
// $datetimestr = strtotime($gamedatetime);
// $gameday = date("D",$datetimestr); 
// $gametime = date("g:i a",$datetimestr); 
// $gamedate = date("M j",$datetimestr);

// echo "datetime: " . $datetime; 
// echo "<br/>"; 
// echo "gameday: " . $gameday; 
// echo "<br/>"; 
// echo "gametime: " . $gametime; 
// echo "<br/>"; 
// echo "gamedate: " . $gamedate; 
// echo "<br/>"; 


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
