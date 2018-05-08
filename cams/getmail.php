<?php
ini_set('max_execution_time', 300);

include('../config/config_email.php');
include('email_match.php');

date_default_timezone_set('Asia/Kolkata');
//date_default_timezone_set('America/New_York');

$date = date('m/d/Y');

$emails = imap_search($inbox,'ON "'.$date.'" FROM "donotreply@camsonline.com"');

if(is_array($emails))
{
    rsort($emails);
    foreach($emails as $email_number)
    {
        $bodyText = imap_fetchbody($inbox,$email_number,1);
        if(!strlen($bodyText)>0)
        {
            $bodyText = imap_fetchbody($inbox,$email_number,1);
        }
        matchEmail($bodyText);
    }
    include('upload_csv.php');
}
else
{
	echo "Sorry no emails today<hr/>";
}
imap_close($inbox);
?>