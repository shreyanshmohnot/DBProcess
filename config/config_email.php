<?php
$hostname = '{imap.gmail.com:993/imap/ssl}INBOX';
$username = 'admin@gmail.com';
$password = 'admin';
$inbox = imap_open($hostname,$username,$password) or die('Cannot connect to Gmail: ' . imap_last_error());
?>
