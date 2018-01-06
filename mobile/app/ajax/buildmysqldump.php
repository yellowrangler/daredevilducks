<?php

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");
$dateStr = date("Y-m-d");

$msg = "";
if (isset($_POST["dumpdatabaselabel"]))
{
	if ($_POST["dumpdatabaselabel"] == "")
	{
		$dumpdatabaselabel = $dateStr;
	}
	else
	{
		$dumpdatabaselabel = $_POST["dumpdatabaselabel"];
	}
}
else
{
	$dumpdatabaselabel = $dateStr;
}


$mySqlStr = "mysqldump --extended-insert=FALSE --complete-insert=TRUE -u tarryc -ptarryc ddd";
$fileNameStr = "dbsql/ddd-dump-$dumpdatabaselabel.sql";
$execStr = $mySqlStr . " > " . $fileNameStr;

$return = null;
$owner = get_current_user();

$msg = "Input variables:dumpdatabaselabel: $dumpdatabaselabel <br />Owner: $owner<br />Run string:$execStr";

exec($execStr, $output, $return);

$results = "<br />Return Code:" . $return;

$msg = $msg . $results;

//
// pass back info
//
exit($msg);

?>
