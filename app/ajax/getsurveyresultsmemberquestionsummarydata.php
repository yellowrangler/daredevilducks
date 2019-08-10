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
$sql = "SELECT DISTINCT memberid, membername, avatar, screenname,
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
// get survey question count
//---------------------------------------------------------------
$sql = "SELECT COUNT(surveyquestionid) as questioncount 
		FROM surveyquestiontbl 
		WHERE surveyid = $surveyid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$r = mysqli_fetch_assoc($sql_result);
$questioncount = $r['questioncount'];


//---------------------------------------------------------------
// get member number for total members who finished survey  
//---------------------------------------------------------------
$sql = "SELECT DISTINCT memberid, membername, avatar, screenname
	FROM surveymemberanswerstbl SA
	LEFT JOIN membertbl M ON M.id = SA.memberid
	WHERE $questioncount = 
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
// get member number for total members who are active in survey  
//---------------------------------------------------------------
$sql = "SELECT DISTINCT memberid, membername, avatar, screenname
	FROM surveymemberanswerstbl SA
	LEFT JOIN membertbl M ON M.id = SA.memberid
	WHERE $questioncount > 
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
$memberswhostillactivesurveycount = mysqli_num_rows($sql_result);
if ($memberswhostillactivesurveycount > 0)
{
	//
	// fill the array
	//
	$memberswhostillactive = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $memberswhostillactive[] = $r;
	}

}
else
{
	$memberswhostillactive = "";
}

//---------------------------------------------------------------
// get member number for total members who not started survey  
//---------------------------------------------------------------
$sql = "SELECT id AS memberid, membername, avatar, screenname
	FROM membertbl M
	WHERE M.id NOT IN
		(SELECT DISTINCT memberid AS id
		FROM surveymemberanswerstbl SA
		WHERE SA.surveyid = $surveyid) 
		AND status = 'active' AND role != 'expert';";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$memberswhohavenottakensurveycount = mysqli_num_rows($sql_result);
if ($memberswhohavenottakensurveycount > 0)
{
	//
	// fill the array
	//
	$memberswhohavenottaken = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $memberswhohavenottaken[] = $r;
	}

}
else
{
	$memberswhohavenottaken = "";
}

//---------------------------------------------------------------
// get survey question data for people who have started survey
//---------------------------------------------------------------
$sql = 'SELECT  memberid,  avatar, screenname, surveyquestionid, surveyquestionanswercomment
FROM surveymemberanswerstbl SA
LEFT JOIN membertbl M ON M.id = SA.memberid
WHERE SA.surveyid = 1 AND surveyquestionanswercomment <> ""';

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

//
// get the member information
//
$membercommentscount = mysqli_num_rows($sql_result);
if ($membercommentscount > 0)
{
	//
	// fill the array
	//
	$membercomments = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $membercomments[] = $r;
	}

}
else
{
	$membercomments = "";
}

//---------------------------------------------------------------
// get total member number  
//---------------------------------------------------------------
$sql = "SELECT id as memberid, membername, avatar, screenname
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
$membercount = mysqli_num_rows($sql_result);
if ($membercount > 0)
{
	//
	// fill the array
	//
	$members = array();
	while($r = mysqli_fetch_assoc($sql_result)) {
	    $members[] = $r;
	}

}
else
{
	$members = "";
}

// //
// // get the member information
// //
// $r = mysqli_fetch_assoc($sql_result);
// $membercount = $r['membercount'];

//
// close db connection
//
mysqli_close($dbConn);

// // 
// // Get still active survey
// // 
// $memberswhostillactivesurveycount = $memberswhostartedsurveycount - $memberswhofinishedsurveycount;

// // 
// // Get members who have not taken survey
// // 
// $memberswhohavenottakensurveycount = $membercount - $memberswhostartedsurveycount;


//---------------------------------------------------------------
// now assemble the information  
//---------------------------------------------------------------
$membersurveysummary = array();
$membersurveysummary['memberswhostartedsurveycount'] = $memberswhostartedsurveycount;
$membersurveysummary['memberswhostarted'] = $memberswhostarted;

$membersurveysummary['memberswhofinishedsurveycount'] = $memberswhofinishedsurveycount;
$membersurveysummary['memberswhofinished'] = $memberswhofinished;

$membersurveysummary['memberswhostillactivesurveycount'] = $memberswhostillactivesurveycount;
$membersurveysummary['memberswhostillactive'] = $memberswhostillactive;

$membersurveysummary['memberswhohavenottakensurveycount'] = $memberswhohavenottakensurveycount;
$membersurveysummary['memberswhohavenottaken'] = $memberswhohavenottaken;

$membersurveysummary['membercommentscount'] = $membercommentscount;
$membersurveysummary['membercomments'] = $membercomments;

$membersurveysummary['membercount'] = $membercount;
$membersurveysummary['members'] = $members;

$membersurveysummary['questioncount'] = $questioncount;


//
// pass back info
//
exit(json_encode($membersurveysummary, true));
?>
