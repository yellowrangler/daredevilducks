<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// post input
//
$surveyid = $_GET['surveyid'];
$surveyquestionanswerid = 0;
$lf = "<br>";

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
$modulecontent = "Unable to fix survey member question data for surveyid = $surveyid";
include ('mysqlconnect.php');

//--------------------------------------------------------------------------
// get all member survey information 
//--------------------------------------------------------------------------
$sql = "SELECT surveyquestionanswerid, 
	memberid, 
	surveyid, 
	surveyquestionid, 
	surveyquestionanswerresponce, 
	surveyquestionanswercomment, 
	dateupdated 
	FROM surveymemberanswerstbl 
	WHERE surveyid = $surveyid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$surveyquestionanswers = array();
$count = 0;
while($r = mysqli_fetch_assoc($sql_result)) {
    $surveyquestionanswers[] = $r;

    $count++;
}

print "$lf $lf Records read from table Count = $count $lf  $lf "; 

// print "$lf $lf fetch = ";
// print_r($surveyquestionanswers);
// print "$lf  $lf "; 

$count = 1;
foreach ($surveyquestionanswers as $key => $value) {
	
	// 
	// do update
	// 

	$test = $value['surveyquestionanswercomment'];
    $surveyquestionanswercomment = mysqli_real_escape_string($dbConn, $test);
    $value['surveyquestionanswercomment'] = $surveyquestionanswercomment;
    $value['surveyquestionanswerid'] = $count;


	$surveyquestionanswerid = $value['surveyquestionanswerid'];
	$surveyid = $value['surveyid'];
	$memberid = $value['memberid'];
	$surveyquestionid = $value['surveyquestionid'];
	$surveyquestionanswerresponce = $value['surveyquestionanswerresponce'];
	$surveyquestionanswercomment = $value['surveyquestionanswercomment'];
	$dateupdated = $value['dateupdated'];

	$sql = "UPDATE surveymemberanswerstbl 
		SET surveyquestionanswerid = $surveyquestionanswerid,
		surveyid = $surveyid, 
		memberid = $memberid, 
		surveyquestionid = '$surveyquestionid',
		surveyquestionanswerresponce = '$surveyquestionanswerresponce', 
		surveyquestionanswercomment = '$surveyquestionanswercomment', 
		dateupdated = '$dateupdated' 
		WHERE memberid = $memberid 
		AND surveyid = $surveyid
		AND surveyquestionid = $surveyquestionid";

		// print "$lf SQL = $sql  $lf "; 

	    $count++;

	//
	// sql query
	//
	$function = "update";
	$modulecontent = "Unable to $function surveyquestiontbl.";
	include ("mysqlquery.php");	
}

print "$lf $lf Records updated from array Count = $count $lf  $lf "; 

//
// close db connection
//
mysqli_close($dbConn);

//
// pass back info
//
exit($msg);
?>
