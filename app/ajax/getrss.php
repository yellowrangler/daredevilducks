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
    foreach(libxml_get_errors() as $error) {
        echo "\t", $error->message;
    }
  }
} catch (Exception $e) {
    echo "/n Exception /n";
}

// var_dump ( libxml_get_errors () );
$jsonContent = json_encode($rssContent);
exit ($jsonContent);

?>