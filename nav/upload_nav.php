<?php
include('../upload.php');

$databasetable = "navdata";
$csvfile = "navreport/navfile.csv";
mysqlUpload($csvfile,$databasetable,"NAV");
?>