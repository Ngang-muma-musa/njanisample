<?php
if (isset($_GET['id'])) {
	$more_id = $_GET['id'];
    
    $sql = "SELECT * FROM week WHERE id = $more_id ";
    $result = mysqli_query($conn,$sql);

    while ($row = mysqli_fetch_assoc($result)) {
    	$name = $row['name'];
    	$status = $row['status'];
    	$amt = $row['ammount'];
    }

    $sql2 = "SELECT * FROM members WHERE name = '$name'";
    $result2 = mysqli_query($conn,$sql2);

    while ($rows = mysqli_fetch_assoc($result2)) {
    	$Name = $rows['name'];
    	$location = $rows['location'];
    	$phonenumber = $rows['phonenumber'];
    	$email = $rows['email'];
    	$image = $rows['image'];	
    }
}