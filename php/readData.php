<?php
	
	$conn= new mysqli_connect("loclahost",'root','','website');
	if(!$conn)
	{
		echo "unale to connect to the databasse"+$conn->connect_errot();
	}else
	{
		echo 'connected';
	}

?> 