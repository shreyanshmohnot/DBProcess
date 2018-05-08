<?php

ini_set('memory_limit', '10M');

include('../config/importsql.php');

date_default_timezone_set('Asia/Kolkata');
$date = date('Ymd');

if($fileDesc == "307") {
    $databasetable = "newkarvydata";
}
else {
    $databasetable = "karvydata";
}

$dir = "dbdbf";

if ($handle = opendir($dir)) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
            
            $file = "$dir/$entry";
            $filext = pathinfo($file,PATHINFO_EXTENSION);
            
            if($filext == 'dbf' || $filext == 'DBF') {
                
                $filedate = date('Ymd',filemtime($file));
                
                $sqlfile = "dbsql/".basename($file, ".$filext").".sql";
                
                if($date == $filedate) {
                    echo exec("/xampp/php/php.exe /xampp/htdocs/arham/dbf2sql/dbf2sql.php $file $databasetable $sqlfile");
                    if(!file_exists($sqlfile)) {
                        die("".basename($sqlfile)." File not found. Error Converting.<br/>");
                    }
                    sqlfileupload($sqlfile);
                } else {
                    if($filedate < date('Ymd',strtotime("-5 days"))) {
                        echo "File Deleted : $file<br/>";
                        echo "File Deleted : $sqlfile<hr/>";
                        //unlink($file); delete file
                        //unlink($sqlfile); delete file
                    }   
                }
            }
        }
    }
    closedir($handle);
}
?>