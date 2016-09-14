<?php

class Log
{
    
    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private $fp;
    private $time;
    private $datetime;
    
    private $fileDirectory;
    private $fileName;   
    private $msg;
    private $buffer;
    
     
    private function setfileDirectory($fileDirectory)
    {
        $this->fileDirectory = $fileDirectory;
    }
    
    private function setfileName($fileName)
    {
        $this->fileName = $fileName;
    }
       
    private function setmsg($msg)
    {
        $this->msg = $msg;
    }
   
    
    //-------------------------------------------------------------
    // Public 
    //-------------------------------------------------------------
    
    // Constructor    
    public function __construct ($fileName, $fileDirectory)
    {
        $this->setfileName($fileName);
        $this->setfileDirectory($fileDirectory);
    }
    
    public function writeLog($msg)
    {

        $this->time = time();
        $this->datetime = date("Y-m-d H:i:s", $this->time);
        $this->buffer = $this->datetime." : ".$msg."\n";
       
        $this->fp = fopen($this->fileDirectory.$this->fileName, "a");
        fwrite($this->fp, $this->buffer);
        fclose($this->fp);
    }
    
    
}  // end of class

?>
