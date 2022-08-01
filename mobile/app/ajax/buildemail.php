<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post variables
//
$season = $_POST['season'];
$week = $_POST['week'];
$gametype = $_POST['gametype'];
$template = $_POST['template'];

if ($template == "gameweek")
{
	include ('buildemail-gameweek.php');
}
	
?>