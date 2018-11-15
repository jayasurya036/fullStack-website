<?php

    include('../basices/connect.php');
    $conn=dbConnect();

    if(isset($_FILES['postImage']))
    {
        if(empty($_FILES['postImage']['name']))
        {
            echo 'choose a file';
        }else{
            $allowead=array('jpg','JPG','png','jpeg');
            $postImage=$_FILES['postImage']['name'];
            $postImageTempName=$_FILES['postImage']['tmp_name'];

            $extension=explode('.',$postImage);
            $extensionFinal=end($extension);
            if(in_array($extensionFinal,$allowead))
            {
                $fileName=substr(md5(time()),0,10);
                $dataBaseFIleName=$fileName.'.'.$extensionFinal;
                echo $dataBaseFIleName;
                $filePath='../../asserts/images/' . $dataBaseFIleName;
                
              
                
                if(move_uploaded_file($postImageTempName,$filePath))
                {
                    $postHeading=$_POST['postHeading'];
                    $postData=$_POST['postData'];
                    if(strlen($postData)>200)
                    {
                        $maxLength=200;
                        $cachePostData=substr($postData,0,200);
                    }else{
                        $cachePostData=$postData;
                    }
                   

                    $uploadQuery="INSERT INTO mainPost(postHeading,postData,postImg) VALUES('$postHeading','$postData','$dataBaseFIleName')";
                    $uploadQuery1="INSERT INTO cachePost(postHeading,postData,postImg) VALUES('$postHeading','$cachePostData','$dataBaseFIleName')";
                    $reactionQuery="INSERT INTO reaction(postLikes,postDIslikes,postFavorites) VALUES('0','0','0')";

                   
                    if($conn->query($uploadQuery) && $conn->query($uploadQuery1) && $conn->query($reactionQuery))
                    {
                            header('location:../../index.php');
                    }else
                    {
                        echo'error';
                    }


                }else{
                    echo 'error in uploding the file';
                }
            }
        }
    }
    
    
       
    
    
       
    
        

?>