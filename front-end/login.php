<!doctype html>
<?php
require("../back-end/database.php");
if(isset($_POST['login'])) {
	$email = addslashes(($_POST['email']));
	$pass = addslashes($_POST['pass']);
	$pass = md5($pass);
	$qr_users = "SELECT * FROM users WHERE email='$email' AND password='$pass'";
	$user = mysqli_query($conn,$qr_users);
	$row_user = mysqli_fetch_assoc($user);
	if(mysqli_num_rows($user) == 1) {
		if($row_user['quyen'] == 0) {
			$_SESSION['user'] = $row_user['full_name'];
			header("location:index.php");
		}
		else if($row_user['quyen'] == 1) {
			$_SESSION['admin'] = $row_user['full_name'];
			header("location:admin/index.php");
		}
	}
	else {
		$error = "Các thông tin bạn cung cấp không đúng!";	
	}
}
?>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/index.css">
<link rel="stylesheet" href="CSS/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>DRAGONSTONE.VN - CÔNG TY TNHH THƯƠNG MẠI - PHÁT TRIỂN - XÂY DỰNG CỬU LONG</title>
</head>

<body>
	<?php
	include("header.php");
	?>
	<div id="content">
		<div id="main-content">
			<div class="login-title">
				<h3><b>MY ACCOUNT</b></h3>
			</div>
			<h4>ĐĂNG NHẬP</h4>
			<?php
			if(isset($error)) {
			?>
			<div class="w3-panel w3-red">
  				<p><?php echo $error; ?></p>
			</div> 
			<?php } ?>
			<form action="" method="post">
  				<p>      
  					<label><b>Email*</b</label>
  					<input class="w3-input w3-border" name="email" type="email" id="email" style="font-weight: normal">
					<div id="email-error" style="display: none;color: red;font-weight: normal"></div>
				</p>
  				<p>      
  					<label><b>Mật khẩu*</b></label>
  					<input class="w3-input w3-border" name="pass" type="password" id="pass">
					<div id="pass-error" style="display: none;color: red;font-weight: normal"></div>
				</p>
  				<p>      
 					<button type="submit" class="w3-button" style="font-weight: bold;color: white;background-color: #dd9933;" name="login">ĐĂNG NHẬP</button>
				</p>
			</form>
		</div>
	</div>
	<?php
	include("footer.php");
	?>
</body>
	<script src="https://kit.fontawesome.com/yourcode.js"></script>
	<script>
		$(document).ready(function() {
			$("#email").blur(function() {
				var email = $(this).val();
				if(email == "") {
					$("#email-error").css({"display":"block"});
					$("#email-error").html("Bạn chưa nhập email!");
				}
			});
			$("#email").click(function() {
				$("#email-error").css({"display":"none"});	
			});
			$("#pass").blur(function() {
				var pass = $(this).val();
				if(pass == "") {
					$("#pass-error").css({"display":"block"});
					$("#pass-error").html("Bạn chưa nhập mật khẩu!");
				}
			});
			$("#pass").click(function() {
				$("#pass-error").css({"display":"none"});	
			});
		});
	</script>
</html>