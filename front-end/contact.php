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
<link rel="stylesheet" href="CSS/contact.css">
<title>DRAGONSTONE.VN - CÔNG TY TNHH THƯƠNG MẠI - PHÁT TRIỂN - XÂY DỰNG CỬU LONG</title>
</head>

<body>
	<?php
	include("header.php");
	?>
	<div id="content">
		<div id="main-content">
			<div class="w3-row w3-margin-bottom">
				<div class="w3-col l6">
					<h4 style="font-weight: bold;color: #555555;">CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN XÂY DỰNG CỬU LONG</h4>
					<h4 style="font-weight: bold;color: #555555;">Địa chỉ</h4>
					<p style="font-weight: bold;">Số 10 - Đường 26 - Phường Linh Trung - Quận Thủ Đức - TP.HCM</p>
					<h4 style="font-weight: bold;color: #555555;">SỐ ĐIỆN THOẠI</h4>
					<p>0933 67 62 64</p>
					<h4 style="font-weight: bold;color: #555555;">KẾT NỐI</h4>
					<p>Email: cuulongstone@gmail.com</p>
				</div>
				<div class="w3-col l6">
					<form action="" method="post">
						<lable>Tên của bạn</lable>
						<input type="text" name="name">
						<lable>Email của bạn</lable>
						<input type="email" name="email">
						<lable>Số điện thoại</lable>
						<input type="email" name="phone">
						<lable>Nội dung yêu cầu dự án</lable>
						<textarea name="content" rows="4" cols="50" style="margin-bottom: 20px;">
  						</textarea>
						<button type="submit" class="w3-button" style="font-weight: bold;color: white;background-color: #dd9933;">ĐĂNG KÝ BÁO GIÁ</button>
					</form>
				</div>
			</div>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4415939874834!2d106.74700631410582!3d10.853978760727044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527951adca147%3A0xdc145fc811965a81!2zQ8O0bmcgVHkgVG5oaCBUaMawxqFuZyBN4bqhaSBQaMOhdCBUcmnhu4NuIFjDonkgROG7sW5nIEPhu611IExvbmc!5e0!3m2!1svi!2s!4v1599453421471!5m2!1svi!2s" width="100%" height="500px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
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