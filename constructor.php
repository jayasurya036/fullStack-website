<?php

	session_start();

	if(isset($_SESSION['pageNumber']))
	{
		header('location:index.php');
	}else{

		$_SESSION['pageNumber']=1;
		header('location:index.php');
	}
	
	

?>