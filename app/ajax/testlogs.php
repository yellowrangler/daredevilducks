<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');
include_once ('../class/class.spyLog.php');

$spy = new spyLog("logs/");
$spy->writeLog("spy: big brother is watching");

?>
