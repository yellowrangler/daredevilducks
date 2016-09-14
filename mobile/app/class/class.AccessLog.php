<?php

class AccessLog extends Log
{
    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private static $CONSTfileName = "access.log";  
       
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
