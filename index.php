<?php
   session_start();
   //error_reporting(0);
   include('hms/include/config.php');
   ?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Disaster Management System</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<link rel="stylesheet" href="hms/vendor/bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="hms/vendor/fontawesome/css/font-awesome.min.css">
      <link rel="stylesheet" href="hms/vendor/themify-icons/themify-icons.min.css">
      <link href="hms/vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/select2/select2.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
      <link href="hms/vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
      <link rel="stylesheet" href="hms/assets/css/styles.css">
      <link rel="stylesheet" href="hms/assets/css/plugins.css">
      <link rel="stylesheet" href="hms/assets/css/themes/theme-1.css" id="skin_color" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
		<!--start-wrap-->
		
			<!--start-header-->
			<div class="header">
				<div class="wrap">
				<!--start-logo-->
				<div class="logo">
					<a href="index.html" style="font-size: 30px;font-family: Helvetica;">Disaster Management system</a>
				</div>
				<!--end-logo-->
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.html">Home</a></li>
						
						<li><a href="contact.php">contact</a></li>
					</ul>					
				</div>
				<div class="clear"> </div>
				<!--end-top-nav-->
			</div>
			<!--end-header-->
		</div>
		<div class="clear"> </div>
			<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider-image1.jpg" alt=""></li>
					      <li><img src="images/slider-image2.jpg" alt=""></li>
					      <li><img src="images/slider-image3.jpg" alt=""></li>
					      <li><img src="images/slider-image4.jpg" alt=""></li>

					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="header">
				<div class="wrap">
		<div class="logo">
					<a style="font-size: 30px;font-family: Helvetica;">Important Headlines from Admin</a>
				</div>
			</div>
		</div>
		    <table class="table table-hover" id="sample-table-1">
                              <thead>
                                 <tr>
                                    <th class="center">#</th>
                                    <th>Creation Date </th>
                                    <th>NEWS</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php
                                    $sql=mysqli_query($con,"select * from uNews");
                                    $cnt=1;
                                    while($row=mysqli_fetch_array($sql))
                                    {
                                    ?>
                                 <tr>
                                    <td class="center"><?php echo $cnt;?>.</td>
                                    
                                    <td><?php echo $row['creationDate'];?></td>
                                    <td><?php echo $row['nwsData'];?>  </td>
                                    
                                 </tr>
                                 <?php 
                                    $cnt=$cnt+1;
                                    											 }?>
                              </tbody>
                           </table>
		    <div class="content-grids">
		    	<div class="wrap">
		    	<div class="section group">
								
							
				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img3.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>User</h3>
						  <p>Send important Updates</p>
						  <div class="button"><span><a href="hms/user-login.php">Click Here</a></span></div>
				    </div>
				</div>	

				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img1.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>Volunteers Login</h3>
						  <p>Volunteers and Fire Fighters go to help</p>						
						  <div class="button"><span><a href="hms/volunteer/">Click Here</a></span></div>
					</div>
				</div>


					<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img2.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>Admin Login</h3>
						  <p> For the different NGOs</p>						
						  <div class="button"><span><a href="hms/admin">Click Here</a></span></div>
				     </div>
				</div>			
			</div>
		    </div>
		   </div>
		   <div class="wrap">
		   <div class="content-box">
		   
		   </div>
		   </div>
		   <div class="clear"> </div>
		   
		<!--end-wrap-->
	</body>
</html>

