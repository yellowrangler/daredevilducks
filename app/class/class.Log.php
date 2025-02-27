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
        // print("doing writw: $msg");
        $this->time = time();
        $this->datetime = date("Y-m-d H:i:s", $this->time);
        $this->buffer = $this->datetime." : ".$msg."\n";

        $fullyqualifiedlogName = $this->fileDirectory.$this->fileName;

        // print("<br>fullyqualifiedlogName: $fullyqualifiedlogName");
        // print "fully qualified log name = $fullyqualifiedlogName   ";

        $this->fp = fopen($fullyqualifiedlogName, "a");

        if (fwrite($this->fp, $this->buffer) === FALSE) {
            echo "Cannot write to file ($fullyqualifiedlogName)";
            // print("Cannot write to file: $fullyqualifiedlogName");
            exit;
        }

        // $rv = fwrite($this->fp, $this->buffer);

        fclose($this->fp);
    }
    
    
}  // end of class

?>
