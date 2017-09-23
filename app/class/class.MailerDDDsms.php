<?php
require_once "Mail.php";

// ini_set('display_errors','on');
// error_reporting(E_ALL);

class MailerDDDsms
{
    
    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private $from;
    private $to;

    private $host = "smtp.gmail.com";   
    private $port = "587";    
    private $username = "daredevilducks.xyz@gmail.com";
    private $password = "ddd-02653$";    
    private $textMessage = "";   
    private $result = "";

    private function setFrom($from)
    {
        $this->from = $from;
    }
    
    private function setTo($to)
    {
        $this->to = $to;
    }

    private function setMessage($textMessage)
    {
        $this->textMessage = $textMessage;
    }

    private function setResult($result)
    {
        $this->result = $result;
    }
    
    //-------------------------------------------------------------
    // Public 
    //-------------------------------------------------------------
    
    // Constructor    
    public function __construct ($from, $to, $textMessage)
    {
        $this->setFrom($from);
        $this->setTo($to);
        $this->setMessage($textMessage);
    }
    
    public function sendMail()
    {
        $headers = array(
            'From' => $this->from
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

            $mail = $smtp->send($this->to, $headers, $textMessage);
         
            if (PEAR::isError($mail)) {
                $this->setResult('<p>Error:' . $mail->getMessage() . '</p>');
            } else {
                $this->setResult('<p>Message successfully sent to <br /><br />' . $this->to .'!</p>');
            }
        } catch (Exception $e) {
            $this->setResult("Exception: " . $e->getMessage());
        }

        return ($this->result);
    }
    
}  // end of class

?>
