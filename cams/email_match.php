<?php

function matchEmail($bodyText)
{
	$str = trim(preg_replace('/\s+/','', $bodyText));
	$str = str_replace('=','', $str);
	$regex = '/https?:\/\/[^ ]+?(?:\.zip)/';

	if(preg_match($regex, $str, $result) == true) {
		extractFile($result[0]);
	}
}

function extractFile($result)
{
	$dFile_name = basename($result);
	$dPath = "dwnld/$dFile_name";

	if(!file_put_contents($dPath, fopen($result, 'r'))) {
		die("Cannot download the file $result <br/>");
	}
	echo "File Found @ ".$result."<br />";
	
	$zip = new ZipArchive();
	$zip_status = $zip->open($dPath);
	
	if($zip_status === true) {
		if($zip->setPassword("karvy123"))
		{
			if(!$zip->extractTo("dbcsv/")) {
				echo "Extraction failed --> Wrong password for $dFile_name <br />";
			}
		}
		$zip->close();
	}
	else {
		die("Failed opening archive: ". @$zip->getStatusString() . " (code: ". $zip_status .")");
	}
	echo "File Extracted Successfully <hr />";
}
?>