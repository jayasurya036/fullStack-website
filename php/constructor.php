<?php

	session_start();

	$_SESSION['pageNumber']=1;
	header('location:../index.php');

?>