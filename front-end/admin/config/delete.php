<?php
require("../../../back-end/database.php");
if(isset($_GET['id'])) {
	$id = $_GET['id'];
	settype($id,'int');
	$delete = "DELETE FROM products WHERE id=$id";
	mysqli_query($conn,$delete);
}

?>