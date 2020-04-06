<?php
session_start();
 $id = $_SESSION['userId'];
 $Name = $_SESSION['userName'];
 $general_id = $_SESSION['weekid'];
require"../../includes/db.php";
include"../includes/userimport.inc.php";
if (!isset($_SESSION['userId'])&&!isset($_SESSION['userName'])) {
  header("Location:../../html/Login.php");
  exit();
}
else{
	?>
	<!DOCTYPE html>
<html>
<head>
	<title>PROFILE</title>
	<link rel="stylesheet" type="text/css" href="../css/fontend.css">
</head>
<body>
<section>
	<!--.......................................... Profile Head................................. -->
	<div class="profile-header">
			<div class="profile-img">
				<img src="../../images/<?php echo $image;?>" width="200">
			</div>
			<div class="profile-nav-info">
				<h3 class="user-name"><?php echo $name;?></h3>
				<div class="address">
			
				</div>
			</div>
	
		</div>
		<!-- ............................Status................................................... -->
		<div class="status">
			<div class="status-info">

				<h3><?php 
				   if ($statuss=="PAID") {
                                                 
	                echo "<h1 style='color:green;'>$statuss</h1>";
	              }
	              elseif ($statuss=="NOTCOMPLETE") {
	                echo "<h1 style='color:orange;'>$statuss</h1>";
	              }
	              else{
	              	echo "<h1 style='color:red;'>$statuss</h1>";
	              }
                ?></h3>
				<p class="amt">Amount:<?php echo $amount; ?>FCFA</p>
			</div>
		</div>
		<!-- .................................Main................................................ -->
		<div class="right-side">
				<div class="nav">
					<ul>
						<li onclick="tabs(0)"class="user-post">MEMBERS</li>
						<li onclick="tabs(1)"class="user-reviews">BENEFICIARY</li>
						<li onclick="tabs(2)"class="user-settings">PROFILE</li>
					</ul>
				</div>
				<div  class="profile-body">
					<div class="profile-post tab">
						<?php
                            
                            while ($row =  mysqli_fetch_assoc($result2)) {
                            	$name = $row['name'];
	                            $status = $row['status'];
	                            $ID = $row['id'];
	                            ?>
                                   	<div class="members">
										<div class="image">
											<?php 
                                                 
                                                 $sql = "SELECT image FROM members WHERE name = '$name'";
                                                 $result = mysqli_query($conn,$sql);
                                                 while ($row = mysqli_fetch_assoc($result)) {
                                                 	$image = $row['image'];
                                                 }
											?>
											<img src="../../images/<?php echo $image;?>" width="50">
										</div>
										<div class="name-status">
										<p style="text-transform: capitalize;"><?php echo $name; ?> <br><?php 

                                              if ($status=="PAID") {
                                                 
                                                 echo "<small style='color:green;'>$status</small>";
                                              }
                                              elseif ($status=="NOTCOMPLETE") {
                                                  echo "<small style='color:orange;'>$status</small>";
                                              }
                                              else{
                                              	 echo "<small style='color:red;'>$status</small>";
                                              }



										?></p>
										</div>
										<div class="more">
										<div><a class="moree" href="more.php?id=<?php echo $ID;?>">more</a></div>
										</div>

									</div><br>
	                            <?php
                            }
                          
						?>
					</div>
					<div class="profile-review tab">
						<div class="contributions">
							<div><p><b>Amount</b></p><h1><?php echo $amt;?>FCFA
							</h1>
							<?php
                                  if (!empty($benefiter)) {
                                  	?>
                                  	<p><b>Beneficiary</b></p><h4 style="text-transform: capitalize;"><?php echo $benefiter;?></h4></div>
                                  	<?php
                                
                                   }
                                   elseif(empty($benefiter)){
                                   	?>
                                   	<p><b>Beneficiary</b></p><h4 style="color: red;"><?php echo "NONE please contact your Admin";?></div>
                                   	<?php
                                   }
							?>
							<!-- <p><b>Beneficiary</b></p><h4>NGANG MUMA MUSA</h4></div> -->
						</div>	
						
					</div>
					<div class="profile-setting tab">
					<div class="account">
						<div><ul>
							<li> <p class="p"> Name</p> <?php echo $name;?></li>
							<hr>
							<li> <p class="p">Location </p> <?php echo $location;?></li>
							<hr>
							<li> <p class="p"> PhoneNumber</p> <?php echo $phonenumber;?></li>
							<hr>
							<li> <p class="p"> Email</p> <?php echo $email;?></li><br>
						</ul>
						</div>
						<div class="logout">
						<a href="Update.php">UPDATE</a><br><br>
						<form method="post" action="../../includes/logout.inc.php">
							<button type="submit" name="Logout">LOGOUT</button>
						</form>
					</div>
					</div>
					</div>
				</div>
			</div>
</section>
<script type="text/javascript" src="../JS/jquery-3.4.1.js"></script>
<script type="text/javascript" src="../JS/frontend.js"></script>
</body>
</html>
	<?php
}
?>
