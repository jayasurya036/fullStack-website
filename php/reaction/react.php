<?php
			

	$conn= new mysqli("localhost",'root','','website');
	if(!$conn)
	{
		echo "unale to connect to the databasse"+$conn->connect_error();
	}else
	{


				$value=$_GET['reac'];
				$id=$_GET['id'];

				switch($value)
				{
					case 'like':
						$sql="UPDATE reaction SET postLikes = postLikes + 1 WHERE postID ={$id}";
						break;
					case 'star':
						$sql="UPDATE reaction SET postFavorites = postFavorites + 1 WHERE postID = {$id}";
						break;
					case 'dislike':
						$sql="UPDATE reaction SET postDIslikes	 = postDIslikes	 + 1 WHERE postID = {$id}";
						break;

					case 'share':
						$sql="UPDATE reaction SET postFavorites = postFavorites + 1 WHERE postID = {$id}";
						break;
				}


				$update=$conn->query($sql);

				if($update)
				{
					header("location:../../constructor.php");
				}

	}

	

	

?>