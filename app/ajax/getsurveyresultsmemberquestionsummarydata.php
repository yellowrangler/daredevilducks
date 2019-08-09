<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$surveyid = $_POST['surveyid'];
// $surveyid = $_GET['surveyid'];

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
$modulecontent = "Unable to get survey results member question summary data for surveyid = $surveyid";
include ('mysqlconnect.php');

//---------------------------------------------------------------
// get member number for total members who started survey  
//---------------------------------------------------------------
$sql = "SELECT DISTINCT memberid, membername, 
	(SELECT COUNT(surveyquestionid) 
		FROM surveymemberanswerstbl 
		WHERE memberid = SA.memberid AND SA.surveyid = $surveyid) AS questionsanswered
	FROM surveymemberanswerstbl SA
	LEFT JOIN membertbl M ON M.id = SA.memberid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$memberswhostartedsurveycount = mysqli_num_rows($sql_result);
if ($memberswhostartedsurveycount > 0)
{
	//
	// fill the array
	//
	$memberswhostarted = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $memberswhostarted[] = $r;
	}

}
else
{
	$memberswhostarted = "";
}

// print_r($memberswhostarted);

//---------------------------------------------------------------
// get member number for total members who finished survey  
//---------------------------------------------------------------
$sql = "SELECT DISTINCT memberid, membername
	FROM surveymemberanswerstbl SA
	LEFT JOIN membertbl M ON M.id = SA.memberid
	WHERE (SELECT COUNT(surveyquestionid) FROM surveyquestiontbl) = 
		(SELECT COUNT(surveyquestionid) 
			FROM surveymemberanswerstbl SMA
			WHERE SMA.memberid = SA.memberid AND SA.surveyid = $surveyid)";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$memberswhofinishedsurveycount = mysqli_num_rows($sql_result);
if ($memberswhofinishedsurveycount > 0)
{
	//
	// fill the array
	//
	$memberswhofinished = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $memberswhofinished[] = $r;
	}

}
else
{
	$memberswhofinished = "";
}

//---------------------------------------------------------------
// get total member number  
//---------------------------------------------------------------
$sql = "SELECT COUNT(*) as membercount
	FROM membertbl 
	WHERE status = 'active' AND role != 'expert'";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$r = mysqli_fetch_assoc($sql_result);
$membercount = $r['membercount'];

//
// close db connection
//
mysqli_close($dbConn);

// 
// Get still active survey
// 
$memberswhostillactivesurveycount = $memberswhostartedsurveycount - $memberswhofinishedsurveycount;

// 
// Get members who have not taken survey
// 
$memberswhohavenottakensurveycount = $membercount - $memberswhostartedsurveycount;


//---------------------------------------------------------------
// now assemble the information  
//---------------------------------------------------------------
$membersurveysummary = array();
$membersurveysummary['memberswhostartedsurveycount'] = $memberswhostartedsurveycount;
$membersurveysummary['memberswhostarted'] = $memberswhostarted;

$membersurveysummary['memberswhofinishedsurveycount'] = $memberswhofinishedsurveycount;
$membersurveysummary['memberswhofinished'] = $memberswhofinished;

$membersurveysummary['memberswhostillactivesurveycount'] = $memberswhostillactivesurveycount;
$membersurveysummary['memberswhohavenottakensurveycount'] = $memberswhohavenottakensurveycount;
$membersurveysummary['membercount'] = $membercount;

//
// pass back info
//
exit(json_encode($membersurveysummary, true));
?>
