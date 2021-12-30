<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// get post and get variable
//
$url = $_POST['url'];
if (isset($_POST["url"]))
{
	$url = $_POST["url"];
}
else
{
	if (isset($_GET["url"]))
	{
		$url = $_GET["url"];
	}
	else
	{
		$msg = $msg . "No url passed - getrss terminated";
		exit($msg);
	}
}

//
// functions
//
function display_xml_error($error, $xml)
{
	echo "Inside display_xml_error!";

    $return  = $xml[$error->line - 1] . "\n";
    $return .= str_repeat('-', $error->column) . "^\n";

    switch ($error->level) {
        case LIBXML_ERR_WARNING:
            $return .= "Warning $error->code: ";
            break;
         case LIBXML_ERR_ERROR:
            $return .= "Error $error->code: ";
            break;
        case LIBXML_ERR_FATAL:
            $return .= "Fatal Error $error->code: ";
            break;
    }

    $return .= trim($error->message) .
               "\n  Line: $error->line" .
               "\n  Column: $error->column";

    if ($error->file) {
        $return .= "\n  File: $error->file";
    }

    return "$return\n\n--------------------------------------------\n\n";
}

function xmlRss($url)
{
	try {
		$rssContent = simpleXML_load_file($url, 'SimpleXMLElement',LIBXML_NOCDATA);
		// $rssContent = simplexml_load_string($url);
		if ($rssContent === false)
		{
			$errors = libxml_get_errors();
			foreach($errors as $error) {
			    echo display_xml_error($error, $xml);
			}

			libxml_clear_errors();
		}
	} catch (Exception $e) {
		echo "/n Exception /n";
	}

	return json_encode($rssContent);
}

function curlRss($url)
{
	// create curl resource 
    $ch = curl_init(); 

    // set url 
    curl_setopt($ch, CURLOPT_URL, $url); 

    //return the transfer as a string 
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 

    // $output contains the output string 
    $output = curl_exec($ch); 

    // close curl resource to free up system resources 
    curl_close($ch);    

	return $output;
}

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

$jsonContent = xmlRss($url);

exit ($jsonContent);
?>