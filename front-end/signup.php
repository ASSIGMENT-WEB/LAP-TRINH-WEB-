<!doctype html>
<?php
require("../back-end/database.php");
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
			<h4>ĐĂNG KÝ</h4>
			<div class="" id="thongbao" style="display: none"><p></p></div> 
			
				<p>      
  					<label><b>Họ tên*</b</label>
  					<input class="w3-input w3-border" name="hoten" type="text"  style="font-weight: normal" id="full_name">
					<div id="hoten-error" style="color: red;display: none"></div>
				</p>
  				<p>      
  					<label><b>Email*</b</label>
  					<input class="w3-input w3-border" name="email" type="email" id="email" style="font-weight: normal">
					<div id="email-error" style="color: red;display: none;font-weight: normal"></div>
				</p>
  				<p>      
  					<label><b>Mật khẩu*</b></label>
  					<input class="w3-input w3-border" name="pass" type="password" id="pass" style="font-weight: normal">
					<div id="matkhau-error" style="color: red;display: none;font-weight: normal"></div>
				</p>
				<p>      
  					<label><b>Nhập lại mật khẩu*</b></label>
  					<input class="w3-input w3-border" name="repass" type="password" id="repass" style="font-weight: normal">
					<div id="repass-error" style="color: red;display: none;font-weight: normal"></div>
				</p>
  				<p>      
 					<button class="w3-button" style="font-weight: bold;color: white;background-color: #dd9933;" name="signup" id="signup">ĐĂNG KÝ</button>
				</p>
			
		</div>
	</div>
	<?php
	include("footer.php");
	?>
</body>
	<script src="https://kit.fontawesome.com/yourcode.js"></script>
	<script>
		$(document).ready(function() {
			var num_email;
			var pass;
			$("#full_name").blur(function() {
				var full_name = $(this).val();
				if(full_name == "") {
					$("#hoten-error").css({"display":"block"});
					$("#hoten-error").html("Bạn chưa nhập họ tên!");
				}
			});
			$("#full_name").click(function() {
				$("#hoten-error").css({"display":"none"});
				$("#thongbao").css({"display":"none"});
			});
			$("#email").blur(function() {
				var email = $(this).val();
				if(email.length < 6 || email.length > 40) {
					$("#email-error").css({"display":"block"});
					$("#email-error").html("Email tối thiểu có 6 kí tự và tối đa 40 kí tự!");
				}
				if(email == "") {
					$("#email-error").css({"display":"block"});
					$("#email-error").html("Bạn chưa nhập email!");
				}
				$.post("../back-end/check_email.php",{email:email},function(data) {
					num_email = data;
					if(data > 0) {
						$("#email-error").css({"display":"block"});
						$("#email-error").html("Email đã được sử dụng. Vui lòng nhập email khác!")
					}
				});
			});
			$("#email").click(function() {
				$("#email-error").css({"display":"none"});
				$("#thongbao").css({"display":"none"});
			});
			$("#pass").blur(function() {
				pass = $(this).val();
				if(pass == "") {
					$("#matkhau-error").css({"display":"block"});
					$("#matkhau-error").html("Bạn chưa nhập mật khẩu!");
				}
				else if(pass.length < 6 || pass.length > 40) {
					$("#matkhau-error").css({"display":"block"});
					$("#matkhau-error").html("Mật khẩu tối thiểu có 6 kí tự và tối đa 40 kí tự!");
				}
			});
			$("#pass").click(function() {
				$("#matkhau-error").css({"display":"none"});
				$("#thongbao").css({"display":"none"});
			})
			$("#repass").blur(function() {
				var repass = $(this).val();
				if(repass != pass) {
					$("#repass-error").css({"display":"block"});
					$("#repass-error").html("Mật khẩu không khớp!");
				}
			});
			$("#repass").click(function() {
				$("#repass-error").css({"display":"none"});
				$("#thongbao").css({"display":"none"});
			})
			$("#signup").click(function() {
				var full_name = $("#full_name").val();
				var email = $("#email").val();
				var pass = $("#pass").val();
				var repass = $("#repass").val();
				$.post("../back-end/signup.php",{full_name:full_name,email:email,pass:pass,repass:repass},function(data) {
					if(num_email > 0 || email.length < 6 || email.length > 40 || pass.length < 6 || pass.length > 40 || pass != repass || full_name == "" || email == "" || pass == "") {
						$("#thongbao").css({"display":"block"});
						$("#thongbao").attr("class","w3-panel w3-red");
						$("#thongbao p").html("Đăng ký tài khoản thất bại. Kiểm tra lại!");
					}
						else {
						$("#thongbao").css({"display":"block"});
						$("#thongbao").attr("class","w3-panel w3-green");
						$("#thongbao p").html("Đã đăng ký tài khoản!");
					}
				});
			});
		});
	</script>
</html>