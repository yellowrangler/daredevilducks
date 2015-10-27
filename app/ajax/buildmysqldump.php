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

$execStr = "mysqldump --extended-insert=FALSE --complete-insert=TRUE  -u tarryc -ptarryc ddd > dbsql/ddd-dump-$dumpdatabaselabel.sql";

$msg = "Input variables:dumpdatabaselabel: $dumpdatabaselabel <br />Run string:$execStr";
$msg = $msg . exec($execStr);

//
// pass back info
//
exit($msg);

?>
