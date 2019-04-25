<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$surveyid = $_POST['surveyid'];
$memberid = $_POST['memberid'];
$questionid = $_POST['questionid'];
$answeryesno = $_POST['answeryesno'];
$answercomment = $_POST['answercomment'];
$surveyquestionanswerid = 0;

$msg = "ok";
//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

// create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to update survey member question data for surveyid = $surveyid, memberid = $memberid, questionid = $questionid";
include ('mysqlconnect.php');

//--------------------------------------------------------------------------
// get member survey information to see if question already answered once
//--------------------------------------------------------------------------
$sql = "SELECT surveyquestionanswerid FROM surveymemberanswerstbl 
WHERE memberid = '$memberid' 
AND surveyid = '$surveyid' 
AND surveyquestionid = '$questionid'";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	// 
	// do update
	// 
	$sql = "UPDATE surveymemberanswerstbl 
		SET surveyid = $surveyid, 
		memberid = '$memberid', 
		surveyquestionid = '$questionid',
		surveyquestionanswerresponce = '$answeryesno', 
		surveyquestionanswercomment = '$answercomment', 
		dateupdated = '$enterdateTS' 
		WHERE memberid = $memberid 
		AND surveyid = $surveyid
		AND surveyquestionid = $questionid";

		// print "<br><br>$sql";

	//
	// sql query
	//
	$function = "update";
}
else
{
	// 
	// do insert
	// 
	$sql = "INSERT INTO surveymemberanswerstbl 
		(memberid, surveyid, surveyquestionid, surveyquestionanswerresponce, surveyquestionanswercomment, dateupdated) 
		VALUES 
		($memberid, $surveyid, $questionid, '$answeryesno', '$answercomment', '$enterdateTS')";

	// print "<br><br>$sql";	
		
	//
	// sql query
	//
	$function = "insert";
}

$modulecontent = "Unable to $function surveyquestiontbl.";
include ("mysqlquery.php");
$sql_result_update = $sql_result;

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);
?>
