<?php

function dbConnect()
{
    $connection= new mysqli("localhost",'root','','website');
	if(!$connection)
	{
		echo "unale to connect to the databasse"+$connection->connect_error();
	}else
	{
        return $connection;
    }
}
 

?>