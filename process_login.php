<?php
include('config.php');
session_start();
$email = $_POST["Email"];
$pass = $_POST["Password"];
$qry = mysqli_query($con, "select * from tbl_login where username='$email' and password='$pass'");
if (mysqli_num_rows($qry)) {
	$usr = mysqli_fetch_array($qry);
	if ($usr['user_type'] == 2) {
		$_SESSION['user'] = $usr['user_id'];
		if (isset($_SESSION['show'])) {
			header('location:booking.php');
		} else {
			header('location:index.php');
		}
	} else if ($usr['user_type'] == 0) {
		$_SESSION['admin'] = $usr['user_id'];
		header('location:admin/index.php');
	}
	else if($usr['user_type'] == 1)
	{
		
	} 
	else {
		$_SESSION['error'] = "Login Failed!";
		header("location:login.php");
	}

} else {
	$_SESSION['error'] = "Login Failed!";
	header("location:login.php");
}
?>