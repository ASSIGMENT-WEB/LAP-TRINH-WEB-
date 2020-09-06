<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/index.css">
<link rel="stylesheet" href="CSS/contruction_items.css">
<title>Untitled Document</title>
</head>

<body>
	<?php
	include("header.php");
	?>
	<div id="content">
		<div id="main-content">
			<div class="w3-row">
				<div class="w3-col l9" style="border-right: solid 1px #ccc; height: 100%;">
					<div id="title-content" class="w3-center">
						<h4>CATEGORY ARCHIVES: ĐÁ LÁT NỀN</h4>
					</div>
					<div id="news-contruction">
						<div class="w3-row" style="margin-bottom: 16px;">
							<a href="#">
								<div class="w3-col l5 s12">
									<div class="box-img">
										<img src="image/news/tu-a-den-z-nhung-mau-da-op-lat-cau-thang-hot-nhat-trong-nam-2020-651x400.jpg" alt="" width="100%">
									</div>
								</div>
								<div class="w3-col l7 s12">
									<div class="box-news">
										<div class="box-news-tittle">
											Đá hoa cương Ấn Độ đen có đặc điểm gì?
										</div><hr>
										<div class="box-news-summary">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, delectus.
										</div>
									</div>
								</div>
							</a>
							
						</div>
						<div class="w3-row" style="margin-bottom: 16px;">
							<a href="#">
								<div class="w3-col l5 s12">
									<div class="box-img">
										<img src="image/news/thi-cong-da-granite-den-kim-sa-trung-dep-dam-bao-chat-luong61.jpg" alt="" width="100%">
									</div>
								</div>
								<div class="w3-col l7 s12">
									<div class="box-news">
										<div class="box-news-tittle">
											Đá hoa cương Ấn Độ đen có đặc điểm gì?
										</div><hr>
										<div class="box-news-summary">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, delectus.
										</div>
									</div>
								</div>
							</a>
							
						</div>
						
						
						
					</div>
				</div>
				<div class="w3-col l3 " style="padding-left: 20px;padding-top: 60px; height: 100%;">
					<div class="box-text-right">
						<div class="box-text-title">
							<h4>CÔNG TY TNHH THƯƠNG MẠI</h4>
						</div>
						<div style="border: 1px solid black;">
							<div class="box-text-img">
								<img src="image/news/dragonstone-showroom-tại-quận-9-400x400.jpg" alt="" width="100%">
							</div>
							<h4 style="font-weight: bold;">CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN XÂY DỰNG CỬU LONG LÀ ĐƠN VỊ THI CÔNG ĐÁ HOA CƯƠNG TẠI TP.HCM.</h4>
						</div>
					</div>
					<div class="box-text-right">
						<div class="box-text-title">
							<h4>TIN TỨC CẬP NHẬT</h4>
						</div>
						<div style="border: 1px solid black;">
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="#">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/da-lua-100x100.jpg" alt="">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur optio necessitatibus quia natus cupiditate consequatur.
										</div>
									</div>
								</a>
							</div>
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="#">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/da-lua-100x100.jpg" alt="">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur optio necessitatibus quia natus cupiditate consequatur.
										</div>
									</div>
								</a>
							</div>
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="#">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/da-lua-100x100.jpg" alt="">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur optio necessitatibus quia natus cupiditate consequatur.
										</div>
									</div>
								</a>
							</div>
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="#">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/da-lua-100x100.jpg" alt="">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur optio necessitatibus quia natus cupiditate consequatur.
										</div>
									</div>
								</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
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