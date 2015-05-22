<?php
include_once "Mail.php";
include_once ('class.Log.php');
include_once ('class.ErrorLog.php');
include_once ('class.AccessLog.php');

class MailerHA
{
    
    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private $from;
    private $to;
    private $subject;
    private $body;

    private $host = "smtp.gmail.com";   
    private $port = "587";
    private $username = "tcutler.healthallianze@gmail.com";
    private $password = "tarrycha02653";    
    private $status = "";   
    
     
    private function setFrom($from)
    {
        $this->from = $from;
    }
    
    private function setTo($to)
    {
        $this->to = $to;
    }
       
    private function setSubject($subject)
    {
        $this->subject = $subject;
    }

    private function setBody($body)
    {
        $this->body = $body;
    }

    private function setStatus($status)
    {
        $this->status = $status;
    }
   
    
    //-------------------------------------------------------------
    // Public 
    //-------------------------------------------------------------
    
    // Constructor    
    public function __construct ($from, $to, $subject, $body)
    {
        $this->setFrom($from);
        $this->setTo($to);
        $this->setSubject($subject);
        $this->setBody($body);
    }
    
    public function sendMail()
    {
        $headers = array(
            'From' => $this->from,
            'To' => $this->to,
            'Subject' => $this->subject
        );

        $smtp = Mail::factory('smtp', 
            array(
                'host' => $this->host,
                'port' => $this->port,
                'auth' => true,
                'username' => $this->username,
                'password' => $this->password
            ));

        try {
            $mail = $smtp->send($this->to, $headers, $this->body);
         
            if (PEAR::isError($mail)) {
                $errlog = new ErrorLog("logs/");
                $msg = '<p>Error:' . $mail->getMessage() . '</p>';
                $errlog->writeLog($msg);
                $this->setStatus(0);
            } else {
                $msg = '<p>Message successfully sent to $this->to!</p>';
                $msgLog = new AccessLog("logs/");
                $msgLog->writeLog($msg);
                $this->setStatus(1);
            }
        } catch (Exception $e) {
            $errlog = new ErrorLog("logs/");
            $msg = "Exception: " . $e->getMessage();
            $errlog->writeLog($msg);
            $this->setStatus(0);
        }
    }

    function getStatus()
    {
        return $this->status;
    }
    
    
}  // end of class

?>
