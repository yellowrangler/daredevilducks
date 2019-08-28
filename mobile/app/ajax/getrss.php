<?php

include_once ('../class/class.Log.php');
include_once ('../class/class.ErrorLog.php');
include_once ('../class/class.AccessLog.php');

//
// functions
//

//
// get post variable
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

function xmlRss($url)
{
	try {
	  $rssContent = simpleXML_load_file($url, 'SimpleXMLElement',LIBXML_NOCDATA);
	  if ($rssContent === false)
	  {
	  	$errors = libxml_get_errors();
	    foreach($errors as $error) {
	        // echo "\t", $error->message;
	        echo display_xml_error($error, $xml);

	        echo "rssContent = $rssContent";
	    }

	    libxml_clear_errors();
	  }
	} catch (Exception $e) {
	    echo "/n Exception /n";
	}


	return json_encode($rssContent);

	// var_dump ( libxml_get_errors () );
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