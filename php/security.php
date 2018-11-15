<?php
	
	

	function sec()
	{
			if(isset($_SESSION['pageNumber']))
			{
				header("loacation:../index.php");
			}else
			{
				header("location:constructor.php");
			}
	}

	


?>