<?php
    session_start();
    include('../basices/connect.php');
    $conn=dbConnect();

    $postId= $_GET['postId'];
    $selectData="SELECT * FROM mainPost WHERE postId='{$postId}'";
    if($selectDataExe= $conn->query($selectData))
    {
        $postData=$selectDataExe->fetch_assoc();
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../../asserts/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../asserts/css/postPage.css">
    <script type="text/javascript" src="../../asserts/javascript/index.js"></script>
    <title>Document</title>
</head>
<body>
<div class="wrapper">
		<div class="header">
			<div class="headerAndNav">
				<div class="heading">
					<h1>web development</h1>
				</div>
				<div class="navigator" onclick="navBarCLick()">
					<div class="navigatorChild"></div>
					<div class="navigatorChild"></div>
				</div>
				<div class="navbar">
					<a class="navBarChild hide" href="#">new post</a>
					<a class="navBarChild hide" href="#">about</a>
					<a class="navBarChild hide" href="#">contact</a>
					<a class="navBarChild hide" href="#">home</a>
				</div>
			</div>
			<div class="logo">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512.00206" width="100px" height="100px"><path d="m253.6875 245.84375h238.054688c10.863281 0 19.699218-8.835938 19.699218-19.703125v-206.4375c0-5.726563-2.480468-11.15625-6.8125-14.902344-4.328125-3.746093-10.0625-5.417969-15.726562-4.597656l-238.050782 34.640625h-.003906c-9.613281 1.398438-16.863281 9.78125-16.863281 19.496094v171.800781c0 10.867187 8.839844 19.703125 19.703125 19.703125zm0 0" fill="#006DF0"/><path d="m19.699219 247.742188 176.234375.035156c10.863281 0 19.699218-8.835938 19.699218-19.703125v-165.984375c0-5.691406-2.457031-11.101563-6.742187-14.839844-4.285156-3.742188-9.972656-5.449219-15.609375-4.683594l-176.226562 23.929688c-9.734376 1.320312-17.0664068 9.722656-17.054688 19.527344v142.039062c.0117188 10.851562 8.851562 19.679688 19.699219 19.679688zm0 0" fill="#006DF0"/><path d="m195.996094 266.128906h-176.089844c-5.261719 0-10.210938 2.050782-13.933594 5.773438-3.722656 3.71875-5.769531 8.667968-5.769531 13.929687l.011719 143.597657c0 9.796874 7.320312 18.1875 17.027344 19.515624l176.078124 24.136719c.894532.125 1.789063.183594 2.679688.183594 4.730469 0 9.339844-1.707031 12.949219-4.855469 4.292969-3.742187 6.753906-9.152344 6.753906-14.847656v-167.730469c-.003906-10.863281-8.839844-19.703125-19.707031-19.703125zm0 0" fill="#006DF0"/><path d="m505.734375 271.902344c-3.722656-3.722656-8.671875-5.773438-13.933594-5.773438h-238.113281c-10.863281 0-19.703125 8.839844-19.703125 19.703125v172.972657c0 9.765624 7.289063 18.152343 16.957031 19.511718l238.054688 33.492188c.917968.128906 1.835937.195312 2.75.195312 4.714844 0 9.308594-1.699218 12.917968-4.832031 4.304688-3.742187 6.777344-9.160156 6.78125-14.867187l.054688-206.464844v-.003906c.003906-5.261719-2.046875-10.210938-5.765625-13.933594zm0 0" fill="#006DF0"/></svg>
			</div>
		</div>
		<div class="mainBody">
			<div class="sideBar">
				<div class="sideBarData">
					<h1>recent posts</h1>
						<h2>what is x</h2>
						<h2>what is tcp</h2>
					
				</div>
				<div class="sideBarNavigarot"onclick="sideBarClick()">
					<div class="sideNavigatorChild"></div>
					<div class="sideNavigatorChild"></div>
					<div class="sideNavigatorChild"></div>
				</div>
			</div>
			<div class="mainBar">
                <div class="selectedPost">
                    <?php
					  echo '<h1 class="postHeading">';
						 echo $postData['postHeading'];
					  echo '</h1>';
					  echo '<br/>'; 
					  echo '<br/>';
				?>
					 <img class="dataImg" src="../../asserts/images/<?php echo $postData['postImg']?>">;
				<?php
				     echo '<br/>'; 
					 echo '<br/>';
					 
                      echo   $postData['postData'];
                    
                    ?>
                </div>
            </div>
	</div>
	

	<?php 
		/*for pages navigation*/
	?>


<div class="pages">
					<div class="previous">
						 <a href="#">privous</a>
					</div>
					<?php
					$sql= "SELECT postId FROM cachePost";

					$id=$conn->query($sql);
					
					if($id)
					{
						
						$numPosts=$id->num_rows;
						$_SESSION['numPosts']=$numPosts;
						for($x=0; $x<ceil(($numPosts/3)); $x++)
						{ 
							echo '<div class="numbers">';
								
								?>
								<form action="../pageChanger.php" method="get">
								<?php 
								if($_SESSION['pageNumber']==$x+1)
								{
								?>
									<input  type="submit" name="pageNumber" style="box-shadow:2px 2px 2px; background-color:orangered;" value="<?php echo $x+1;?>">

									<?php 
								}
								if($_SESSION['pageNumber']!=$x+1)
								{

								
									?>
									<input  type="submit" name="pageNumber" value="<?php echo $x+1;?>">
									

									<?php
								}
									?>
								</form>
								<?php
									
								
							echo '</div>';
						}
					}

		?>
					<div class="next">
						<a href="#">next</a>
					</div>
				</div>
		<div class="footer" >
		
		</div>
	</div>
</div>            

</body>
</html>