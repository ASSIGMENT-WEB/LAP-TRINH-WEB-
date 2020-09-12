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
			<form action="" method="post">
  				<p>      
  					<label><b>Email*</b</label>
  					<input class="w3-input w3-border" name="email" type="email">
				</p>
  				<p>      
  					<label><b>Mật khẩu*</b></label>
  					<input class="w3-input w3-border" name="pass" type="password">
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
		function openLeftMenu() {
			document.getElementById("leftMenu").style.display = "block";
		}
		function closeLeftMenu() {
  			document.getElementById("leftMenu").style.display = "none";
		}
		var myIndex = 0;
		carousel();
		function carousel() {
  			var i;
  			var x = document.getElementsByClassName("mySlides");
  		for (i = 0; i < x.length; i++) {
    		x[i].style.display = "none";  
  		}
  		myIndex++;
  		if (myIndex > x.length) {myIndex = 1}    
  			x[myIndex-1].style.display = "block";  
  			setTimeout(carousel, 2000); // Change image every 2 seconds
}
	</script>
</html>