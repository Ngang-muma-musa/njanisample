<?php
// session_start();
$sql = "SELECT * FROM members WHERE member_id = $id";
$result = mysqli_query($conn,$sql);

while ($row = mysqli_fetch_assoc($result)) {
	 
	 $name = $row['name'];
	 $location = $row['location'];
	 $phonenumber = $row['phonenumber'];
	 $email = $row['email'];
	 $image = $row['image'];
}


$sql2 = "SELECT * FROM week WHERE week_id = $general_id";
$result2 = mysqli_query($conn,$sql2);


$sql4 = "SELECT status,ammount FROM week WHERE  week_id= $general_id AND name = '$name'";
$result4 =  mysqli_query($conn,$sql4);

while ($row = mysqli_fetch_assoc($result4)) { 
	$statuss = $row['status'];
	$amount = $row['ammount'];
}

$sql3 = "SELECT * FROM total WHERE week_id = $general_id";
$result3 =  mysqli_query($conn,$sql3);

while ($row = mysqli_fetch_assoc($result3)) { 
	$amt = $row['ammount'];
	$benefiter = $row['benefiter'];
}