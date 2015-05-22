<?php

class ErrorLog extends Log
{

    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private static $CONSTfileName = "error.log";  
       
    //-------------------------------------------------------------
    // Public 
    //-------------------------------------------------------------
    
    // Constructor    
    public function __construct ($logDirectory)
    {
        parent::__construct(self::$CONSTfileName, $logDirectory);
    }
    
}  // end of class

?>
