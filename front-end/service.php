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
				<div class="w3-col l9" style="border-right: solid 1px #ccc; height: 100%;">
					<div id="title-content" class="w3-center">
						<?php
						$qr_dichvuthicong = "SELECT * FROM dichvuthicong";
						$dichvuthicong = mysqli_query($conn,$qr_dichvuthicong);
						
						?>
						<h4>CATEGORY ARCHIVES: Dịch vụ thi công, tin tức</h4>
					</div>
					<div id="news-contruction">
						<?php
								while($row_dichvuthicong = mysqli_fetch_assoc($dichvuthicong)){
						?>
						<div class="w3-row" style="margin-bottom: 16px;">
							<a href="service_content.php?id=<?php echo $row_dichvuthicong['id'] ?>">
								<div class="w3-col l5 s12">
									<div class="box-img">
										<img src="image/hangmucthicong/<?php echo $row_dichvuthicong['image'] ?>" alt="" width="100%" height="250px;">
									</div>
								</div>
								<div class="w3-col l7 s12">
									<div class="box-news">
										<div class="box-news-tittle">
											<?php echo $row_dichvuthicong['tieuDe'] ?>
										</div><hr>
										<div class="box-news-summary">
											<?php echo $row_dichvuthicong['tomTat'] ?>
										</div>
									</div>
								</div>
							</a>
						</div>
						<?php } ?>
						
						
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