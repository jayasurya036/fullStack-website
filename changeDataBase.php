<?php


	$conn= new mysqli("localhost",'root','','website');
	if(!$conn)
	{
		echo "unale to connect to the databasse"+$conn->connect_error();
	}else
	{

		$varibleValue=1;
		

		for($i=0; $i<9;$i++)
		{
			$sql="INSERT INTO reaction(postId,postLikes,postDIslikes,postFavorites) VALUES('{$varibleValue}','0','0','0')";

			$sent=$conn->query($sql);

			if($sent)
			{
				echo "ok"+$varibleValue;
				$varibleValue++;

			}
		}
	}

?>