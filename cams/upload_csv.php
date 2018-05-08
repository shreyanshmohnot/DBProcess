<?php
include('../config/importsql.php');
include('../upload.php');

date_default_timezone_set('Asia/Kolkata');
//date_default_timezone_set('America/New_York');
$date = date('Ymd');

$databasetable = "newcamsdata";
$dir = "dbcsv";
$sqlFile = 'temp.sql';
file_put_contents($sqlFile, "");

if ($handle = opendir($dir)) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
            $csvfile = "$dir/$entry";
            if(pathinfo($csvfile, PATHINFO_EXTENSION)=='csv')
            {
                $filedate = date('Ymd',filemtime($csvfile));
				if($date == $filedate) {
                    lineSqlUpload($csvfile,$databasetable,$sqlFile);
                    //mysqlUpload($csvfile,$databasetable,"Cams");
                }
				else {
					if($filedate < date('Ymd',strtotime("-5 days"))) {
						echo "File Deleted : $csvfile<hr/>";
						//unlink($csvfile); delete file
					}
				}
            }
        }
    }
    closedir($handle);
}
echo "Uploading File<br/>";
sqlfileupload($sqlFile);

function lineSqlUpload($file,$table,$newfile) {
    $fileData = fopen($file,'r');
    $lineCount = 0;
    while($row = fgets($fileData)){
        $lineCount++;
        if($lineCount != 1) {
            $row=trim($row);
            $lineRow = "INSERT INTO $table VALUES ($row);\n";
            $lineRow = preg_replace("/([a-zA-Z]+ )([']\d+)/i", '$1\\\$2', $lineRow);
            $lineRow = preg_replace("/([a-zA-Z]+)([']\d+)/i", '$1\\\$2', $lineRow);
            file_put_contents($newfile, $lineRow, FILE_APPEND | LOCK_EX);
            //echo "$lineRow";
        }
    }
}
?>