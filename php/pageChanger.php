<?php
	session_start();
	$pageNumber=$_GET['pageNumber'];
	$_SESSION['pageNumber']=$pageNumber;

	header('location:../index.php');
?>