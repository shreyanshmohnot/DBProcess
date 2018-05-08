<?php
function sqlfileupload($file) {
	
	include('config_db.php');
	
	try {
		$pdo = new PDO("mysql:host=$databasehost;dbname=$databasename", $databaseusername, $databasepassword, array(PDO::MYSQL_ATTR_LOCAL_INFILE => true, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	} catch (PDOException $e) {
		die("Database connection failed: ".$e->getMessage());
	}

	if(filesize($file) == 0)
	{
		die("Empty File");
	}

	/*try {
		$sqlq = file_get_contents($file);
		$stmt = $pdo->prepare($sqlq);
		$stmt->execute();	
		echo "Database Updated for ".basename($file)." successfully<br/>";
	} catch (PDOException $e) {
		//echo $e;
	}*/
	
	//$handle = fopen($file, "r");
	
	if ($handle = fopen($file, "r")) {
		$affectedRows = 0;
	    while (($line = fgets($handle)) !== false) {
	        // process the line read.
	        //mysqli_query($con,$line);
	        try {
	        	$affectedRows += $pdo->exec($line);} catch (PDOException $e) { echo "".$e->getMessage()."<hr/>"; }	
	    }
	    fclose($handle);
	    if($affectedRows == 0) {
	    	echo "<strong>Database is uptodate</strong><hr/>";
	    } else {
			echo "Uploaded a total of $affectedRows records from : ".$file."<br/>Upload Completed<hr/>";
		}
	} else {
	    // error opening the file.
	}
}
?>