<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$dateStr = date("Y-m-d");

$msg = "";
$runphpmodule = "";
// $runphpmoduleparm = "";

if (!isset($_POST["runphpmodule"]))
{
	$msg = "No PHP Module passed";
}
else
{
	$runphpmodule = $_POST["runphpmodule"];
}

$execStr = 'php ' . $runphpmodule;

$msg = "Input variables:runphpmodule: $runphpmodule <br />Run string:$execStr";
$lastLine = exec($execStr, $output, $status);

$msg = $msg . "<br />Output: " . $lastLine;
$msg = $msg . "<br />Return Value: " . $status;

//
// pass back info
//
exit($msg);

?>
