<?php

include_once ("../class/class.Log.php");
include_once ("../class/class.ErrorLog.php");
include_once ("../class/class.AccessLog.php");

//
//  set global values
//
$msgtext = "";
$surveyquestiondatafieldnbr = 6;
$importfiledirectory = "../../data/importfiles/";

$surveyquestionidIdx = 0;
$surveyidIdx = 1;
$questiontypeIdx = 2; 
$questiontextIdx = 3;
$questiontipIdx = 4;
$questionpicurlIdx = 5;

$surveyquestionid = 0; 
$surveyid = 0;
$questiontype = "";
$questiontext = "";
$questiontip = "";
$questionpicurl = "";

$nbrInserted = 0;
$nbrUpdated = 0;

//
// post input
//
if( isset($_POST["importsurveyquestiondatafile"]) )
{
	$importsurveyquestiondatafile = $_POST["importsurveyquestiondatafile"]; 
}
else
{
	$msgtext = "Invalid post";
	exit($msgtext);
}

//
// show file name passed in
//
$msgtext = $msgtext . "Input Parameters: Import FileName: $importsurveyquestiondatafile";

// print_r($_POST);
// die()

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// // create time stamp versions for insert to mysql
$enterdateTS = date("Y-m-d H:i:s", strtotime($datetime));

// print_r($_POST);
// die();

//
// messaging
//
// $returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Add member request started" );

//
// db connect
//
$modulecontent = "Unable to update survey question data for ddd file $importsurveyquestiondatafile.";
include_once ("mysqlconnect.php");

//---------------------------------------------------------------
// read csv file
//---------------------------------------------------------------
$fullyqualifiedimportfilename = $importfiledirectory . $importsurveyquestiondatafile;
if (!file_exists ($fullyqualifiedimportfilename) )
{
	$msgtext = "File $fullyqualifiedimportfilename does not exist!";
	exit($msgtext);
}


$filerow = 0;
$handle = fopen("$fullyqualifiedimportfilename", "r");
// the original value for file length was 1000 I changed it to 0
while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
	$filerow++;

    $num = count($data);
    // $msgtext = $msgtext . "<p> $num fields in line $filerow<br /></p>\n";

    // 
    // first row is header
    //
    if ($filerow == 1)
    {
    	continue;
    }

	if ($num != $surveyquestiondatafieldnbr)
	{
		$msgtext = $msgtext . "<p> Invalid column  count: $num <br /></p>\n";
		exit($msgtext);
	}

	//
	// build column variables from row
	//
	$surveyquestionid = $data[$surveyquestionidIdx];
	$surveyid = $data[$surveyidIdx];
	$questiontype = $data[$questiontypeIdx];

	// change ~ to commas so dont get treated as seperators in csv file
	$questiontext = $data[$questiontextIdx];	
	$questiontext = str_replace("~",",",$questiontext);
	$questiontext = mysqli_real_escape_string($dbConn, $questiontext);

	$questiontip = $data[$questiontipIdx];
	$questiontip = str_replace("~",",",$questiontip);
	$questiontip = mysqli_real_escape_string($dbConn, $questiontip);


	$questionpicurl = $data[$questionpicurlIdx];


	//---------------------------------------------------------------
	// see if survey question data for this question already exits
	//---------------------------------------------------------------
	$sql = "SELECT surveyquestionid 
	FROM  surveyquestiontbl 
	WHERE surveyquestionid = $surveyquestionid";

	//
	// sql query
	//
	$function = "select";
	$modulecontent = "Unable to update survey question data for surveyquestionid $surveyquestionid.";
	include ("mysqlquery.php");
	$sql_result_check = $sql_result;

	$count = mysqli_num_rows($sql_result_check);
	if ($count > 0)
	{
		// 
		// do update
		// 
		$sql = "UPDATE surveyquestiontbl 
			SET surveyquestionid = $surveyquestionid, surveyid = $surveyid, 
			questiontype = '$questiontype', questiontext = '$questiontext',
			questiontip = '$questiontip', questionpicurl = '$questionpicurl', 
			dateupdated = '$enterdateTS' 
			WHERE surveyquestionid = $surveyquestionid AND surveyid = $surveyid";

			// print "<br><br>$sql";

		//
		// sql query
		//
		$function = "update";
		$modulecontent = "Unable to update surveyquestiontbl.";
		include ("mysqlquery.php");
		$sql_result_update = $sql_result;

		$nbrUpdated = $nbrUpdated + 1;
	}
	else
	{
		// 
		// do insert
		// 
		$sql = "INSERT INTO surveyquestiontbl 
			(surveyquestionid, surveyid, questiontype, questiontext, questiontip, questionpicurl, dateupdated) 
			VALUES 
			($surveyquestionid, $surveyid, '$questiontype', '$questiontext', '$questiontip', '$questionpicurl', '$enterdateTS')";

		// print "<br><br>$sql";	
			
		//
		// sql query
		//
		$function = "insert";
		$modulecontent = "Unable to insert surveyquestiontbl.";
		include ("mysqlquery.php");
		$sql_result_insert = $sql_result;

		$nbrInserted = $nbrInserted + 1;
	}

} // end of while 

//
// close import file
//
fclose($handle);

// 
// close db connection
// 
mysqli_close($dbConn);

//
// final message 
//
$msgtext = $msgtext . "<br />Totals: Rows read: $filerow. Number Inserted: $nbrInserted. Number Updated: $nbrUpdated.";

//
// pass back info
//

exit($msgtext);
?>
