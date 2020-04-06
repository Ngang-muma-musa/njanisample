<?php
require "../../includes/db.php";
if (isset($_GET['Approve'])) {
	$Id  = $_GET['Approve'];

	$sql = "SELECT * FROM waiting_list WHERE id = $Id";
	$result = mysqli_query($conn,$sql);
	while ($row = mysqli_fetch_assoc($result)) {
		$name = $row['name'];
		$email = $row['email'];
		$phonenumber = $row['phonenumber'];
		$location = $row['location'];
		$role = $row['role'];
		$password = $row['pwd'];
		$image = $row['image'];
	}
    $stmt = mysqli_stmt_init($conn);

	$sql2  = "INSERT INTO members (name,email,phonenumber,location,role,pwd,image) VALUES (?,?,?,?,?,?,?)";

	if (!mysqli_stmt_prepare($stmt,$sql2)) {
		header("Location:../html/aprove.php?error=Approve unsuccesful");
		exit();
	}else{
		mysqli_stmt_bind_param($stmt,"sssssss",$name,$email,$phonenumber,$location,$role,$password,$image);
		mysqli_stmt_execute($stmt);

	}

	$sql3 = "DELETE FROM waiting_list WHERE id = $Id;";
	$result = mysqli_query($conn,$sql3);
		header("Location:../html/aprove.php?Approve=succesful");
		exit();
}