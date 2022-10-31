<?php

class spyLog extends Log
{

    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private static $CONSTfileName = "spy.log";  
       
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
