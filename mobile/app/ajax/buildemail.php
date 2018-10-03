<?php

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