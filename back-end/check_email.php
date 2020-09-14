<?php
require("database.php");
$email = $_POST['email'];
$qr_users = "SELECT * FROM users WHERE email='$email'";
$users = mysqli_query($conn,$qr_users);
$dong = mysqli_num_rows($users);
echo $dong;
?>