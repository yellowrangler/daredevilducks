<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$dateStr = date("Y-m-d");

$msg = "";
if (isset($_POST["buildWebstatslabel"]))
{
	if ($_POST["buildWebstatslabel"] == "")
	{
		$buildWebstatslabel = $dateStr;
	}
	else
	{
		$buildWebstatslabel = $_POST["buildWebstatslabel"];
	}
}
else
{
	$buildWebstatslabel = $dateStr;
}

$fileNameStr = "$buildWebstatslabel.html";
$buildWebStatsStr = "goaccess -f /var/log/nginx/access.log  -a -o $buildWebstatslabel.html";
$execStr = $buildWebStatsStr . " > " . $fileNameStr;

$return = null;
$owner = get_current_user();

$msg = "Input variables:buildWebstatslabel: $buildWebstatslabel <br />Owner: $owner<br />Run string:$execStr";

exec($execStr, $output, $return);

$results = "<br />Return Code:" . $return;

$msg = $msg . $results;

//
// pass back info
//
exit($msg);

?>
