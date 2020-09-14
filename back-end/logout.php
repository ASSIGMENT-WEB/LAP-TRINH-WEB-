<?php
session_start();
if(isset($_SESSION['user'])) {
	unset($_SESSION['user']);
	header("location:../front-end/index.php");
}
else if(isset($_SESSION['admin'])) {
	unset($_SESSION['admin']);
	header("location:../front-end/admin/index.php");
}
?>