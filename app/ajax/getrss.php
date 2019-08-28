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

function display_xml_error($error, $xml)
{
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

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

libxml_use_internal_errors(true);
// $rssurl = rawurlencode($url);
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

// var_dump ( libxml_get_errors () );
$jsonContent = json_encode($rssContent);
exit ($jsonContent);
?>