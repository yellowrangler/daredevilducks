<?php 

$sql_result = @mysqli_query($dbConn, $sql);
if (!$sql_result)
{
	// $log = new ErrorLog("logs/");
	$sqlerr = mysqli_error($dbConn);
	// $log->writeLog("SQL error: $sqlerr - Error function: $function msg: $modulecontent");
	// $log->writeLog("SQL: $sql");

	$msgtext = "System Error: $sqlerr. sql = $sql";
	echo($msgtext);
}

?>