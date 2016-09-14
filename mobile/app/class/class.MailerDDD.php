<?php
require_once "Mail.php";
require_once "Mail/mime.php";

// ini_set('display_errors','on');
// error_reporting(E_ALL);

class MailerDDD
{
    
    //-------------------------------------------------------------
    // Private 
    //------------------------------------------------------------- 
    private $from;
    private $to;
    private $cc;
    private $recipients;
    private $subject;
    private $body;

    private $host = "smtp.gmail.com";   
    private $port = "587";    
    private $username = "daredevilducks.xyz@gmail.com";
    private $password = "ddd-02653$";    
    private $msg = "";   
    private $result = "";
    private $logoimage = 'img/DonaldDuckFlying-small.png';
    private $logoimagefullpath = "/var/www/html/daredevilducks/img/DonaldDuckFlying-small.png";
    private $logoimagemimetype = "image/png";

    private function setFrom($from)
    {
        $this->from = $from;
    }
    
    private function setTo($to)
    {
        $this->to = $to;
    }

    private function setCc($cc)
    {
        $this->cc = $cc;
    }
       
    private function setSubject($subject)
    {
        $this->subject = $subject;
    }

    private function setMessage($msg)
    {
        $this->msg = $msg;
    }

    private function setResult($result)
    {
        $this->result = $result;
    }
    
    //-------------------------------------------------------------
    // Public 
    //-------------------------------------------------------------
    
    // Constructor    
    public function __construct ($from, $to, $cc, $subject, $msg)
    {
        $this->setFrom($from);
        $this->setTo($to);
        $this->setCc($cc);        
        $this->setSubject($subject);
        $this->setMessage($msg);
    }
    
    public function sendMail()
    {
        $headers = array(
            'From' => $this->from,
            'To' => $this->to,
            'Cc' => $this->cc,
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

        $mailbody = "<html>
                    <body>
                    <div style='display:block;' id='headerlogo'>
                    <img style='float:left;' src='$this->logoimage' />
                    <h2 style='float:left; padding-left:20px;'>Dare Devil Ducks League News</h2>
                    </div>
                    <div style='padding-top:75px;clear:all;' id='messagebody'>
                    <div>$this->msg</div>
                    </div>
                    </body>
                    </html>";

        $mime = new Mail_mime();
        $mime->setHTMLBody($mailbody);
        $mime->addHTMLImage(file_get_contents($this->logoimagefullpath),$this->logoimagemimetype,$this->logoimage,false);
        $body = $mime->get();
        $mimeheaders = $mime->headers($headers);
        $this->recipients = $this->to.", ".$this->cc;

        try {

            $mail = $smtp->send($this->recipients, $mimeheaders, $body);
         
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
