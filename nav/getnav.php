<?php
ini_set('max_execution_time', 120);
date_default_timezone_set('Asia/Kolkata');
$date = date('dmYhis', time());

$report = "http://www.amfiindia.com/spages/NAVAll.txt?t=$date";
$path = "navreport/NAVAll.txt";

if(!($handle = fopen($report, "r"))) {
	die("Latest NAV could not be downloaded.<br />");
}
file_put_contents($path, $handle);
echo "Latest NAV Downloaded on ".date('l, d M Y')."<br />";

$lines = [];
if (($handle = fopen($path, "r")) !== FALSE) {
    while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
        $lines[] = $data;
    }
    fclose($handle);
}

$fp = fopen('navreport/navfile.csv', 'w');
foreach ($lines as $line) {
    fputcsv($fp, $line);
}
fclose($fp);
include('upload_nav.php');
?>