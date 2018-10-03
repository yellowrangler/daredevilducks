<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$unixdatetime = strtotime($datetime);

$data = array('datetime' => $datetime, 'unixdatetime' => $unixdatetime);

//
// pass back info
//
exit(json_encode($data));

?>
