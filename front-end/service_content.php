<?php
require("../back-end/database.php");
?>
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
				<div class="w3-col l9 m9 s12" style="border-right: solid 1px #ccc; height: 100%; padding-top: 20px;">
					<?php
					if(isset($_GET['id'])) {
						$id_dichvuthicong = $_GET['id'];
						settype($id_dichvuthicong,"int");
					}
					?>
					<?php
					$qr_dichvuthicong = "SELECT * FROM dichvuthicong WHERE id=$id_dichvuthicong";
					$dichvuthicong = mysqli_query($conn,$qr_dichvuthicong);
					$row_hangmucthicong = mysqli_fetch_assoc($dichvuthicong );
					?>
					
					
					<div style="text-align: center;"><a href="#" style="color: #555555;font-size: 0.8em;">Dịch vụ thi công, tin tức</a></div>
				
					<div style="text-align: center"><h4 style="color: #555555;font-weight: bold;"><?php echo $row_hangmucthicong['tieuDe'] ?></h4></div>
					<div class="project-content">
						<?php echo $row_hangmucthicong['content'] ?>
					</div>
					<p>
						<strong>CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN XÂY DỰNG CỬU LONG</strong><br>
						<strong>Địa chỉ:</strong>&nbsp;Số 10 – Đường 26 – Phường Linh Đông – Quận Thủ Đức – TP.HCM.<br>
						<strong>Hotline:</strong>&nbsp;0933 67 62 64 – 09 3333 4348<br>
						<strong>Email:</strong>&nbsp;<a href="mailto:cuulongstone@gmail.com">cuulongstone@gmail.com</a><br>
						<strong>Website:&nbsp;</strong>https://dragonstone.vn
					</p>
					<div id="footer-logo" class="w3-center">
						<a href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fdragonstone.vn%2Fthi-cong%2Fcau-thang-da%2Fthi-cong-cau-thang-mat-go-co-da-tao-khong-gian-hien-dai%2F" target="_blank">
							<div class="tooltip">
								<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png" width="30px"/>
  								<span class="tooltiptext">Share on Facebook</span>
							</div>
						</a>
						<a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fdragonstone.vn%2Fthi-cong%2Fcau-thang-da%2Fthi-cong-cau-thang-mat-go-co-da-tao-khong-gian-hien-dai%2F" target="_blank">
							<div class="tooltip">
								<img src="https://i1.wp.com/openvisualfx.com/wp-content/uploads/2019/10/pnglot.com-twitter-bird-logo-png-139932.png?resize=1024%2C1024&ssl=1" width="30px"/>
  								<span class="tooltiptext">Share on Twitter</span>
							</div>
						</a>
						<a href="#" target="_blank">
							<div class="tooltip">
								<img src="https://i.pinimg.com/originals/2b/b4/28/2bb428b7e4aa39078a119deccacae6f3.png" width="30px"/>
  								<span class="tooltiptext">Email to a Friend</span>
							</div>
						</a>
						<a href="https://www.pinterest.com/" target="_blank">
							<div class="tooltip">
								<img src="https://i.pinimg.com/originals/23/ac/6f/23ac6f22d8bcff4881c8fddaaca0dc1f.jpg" width="30px"/>
  								<span class="tooltiptext">Pin on Pinterest</span>
							</div>
						</a>
						<a href="https://currents.google.com/admindisabled" target="_blank">
							<div class="tooltip">
								<img src="https://brasol.vn/public/ckeditor/uploads/tin-tuc/3-logo-google.png" width="30px"/>
  								<span class="tooltiptext">Share on Google+</span>
							</div>
						</a>
						<a href="https://currents.google.com/admindisabled" target="_blank">
							<div class="tooltip">
								<img src="https://www.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-linkedin-circle-512.png" width="30px"/>
  								<span class="tooltiptext">Share on Linkedln</span>
							</div>
						</a>
					</div>
					
				</div>
				<div class="w3-col l3 m9 s12" style="padding-left: 20px;padding-top: 60px; height: 100%;">
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
							<?php
							$qr_news = "SELECT * FROM tintuc LIMIT 5";
							$news = mysqli_query($conn,$qr_news);
							while($row_news = mysqli_fetch_assoc($news)) {
							?>
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="#">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/<?php echo $row_news['image'] ?>" alt="" width="100px" height="100px">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title" style="font-weight: bold">
											<?php echo $row_news['tieuDe'] ?>
										</div>
									</div>
								</a>
							</div>
							<?php } ?>
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