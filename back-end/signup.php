<?php
require("database.php");
$full_name = addslashes($_POST['full_name']);
$email = addslashes($_POST['email']);
$pass = addslashes($_POST['pass']);
$pass = md5($pass);	
$repass = addslashes($_POST['repass']);
$repass = md5($repass);
$qr_user = "SELECT * FROM user WHERE email='$email'";
$users = mysqli_query($conn,$qr_user);
$dong = mysqli_num_rows($users);
if($dong == 0 && strlen($pass) >= 6 && strlen($pass) <= 40 && $pass == $repass && $full_name != "" && $email != "" && $pass != "" && strlen($email) >= 6 && strlen($email) <= 40) {
	$insert = "INSERT INTO users (full_name,email,password) VALUES('$full_name','$email','$pass')";
	mysqli_query($conn,$insert);
}
?>