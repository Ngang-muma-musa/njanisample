<?php
session_start();
$Id = $_SESSION['weekid']; 
require "../../includes/db.php";
if (isset($_POST['submit'])) {
	$beneficiary = $_POST['beneficiary'];
    $sql = "UPDATE total SET benefiter = ? WHERE week_id = ?";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt,$sql)) {
    	header("Location:../html/admin.php?error=FAILED");
    	exit();
    }
    else{
    	mysqli_stmt_bind_param($stmt,"si",$beneficiary,$Id);
    	mysqli_stmt_execute($stmt);
    	header("Location:../html/admin.php?succes=Beneficiary successfuly added");
    	exit();
    }
}