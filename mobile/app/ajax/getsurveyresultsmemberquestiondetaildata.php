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

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// set variables
$enterdate = $datetime;

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Member List request started" );

//
// db connect
//
$modulecontent = "Unable to get survey member question data for surveyid = $surveyid, memberid = $memberid, questionid = $questionid";
include ('mysqlconnect.php');

//---------------------------------------------------------------
// get member survey information 
//---------------------------------------------------------------
$sql = "SELECT surveyquestionid, questiontext, 
	(SELECT COUNT(memberid)  
	FROM surveymemberanswerstbl SQA
	WHERE SQ.surveyquestionid = SQA.surveyquestionid  AND 
	surveyquestionanswerresponce = 'yes' AND 
	surveyid = $surveyid) AS yesvotes, 
	(SELECT count(memberid)  
	FROM surveymemberanswerstbl SQA
	WHERE SQ.surveyquestionid = SQA.surveyquestionid  AND 
	surveyquestionanswerresponce = 'no' AND 
	surveyid = $surveyid) AS novotes
from surveyquestiontbl SQ where surveyid = $surveyid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member question responce information
//
//
// get the member information
//
$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	//
	// fill the array
	//
	$membersurveyresponcedetails = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $membersurveyresponcedetails[] = $r;
	}

}
else
{
	$membersurveyresponcedetails = "";
}

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit(json_encode($membersurveyresponcedetails));
?>