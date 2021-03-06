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
<title>DRAGONSTONE.VN - CÔNG TY TNHH THƯƠNG MẠI - PHÁT TRIỂN - XÂY DỰNG CỬU LONG</title>
</head>

<body>
	<?php
	include("header.php");
	?>
	<div id="content">
		<div id="slide" class="w3-section">
			<?php
			$qr_slide = "SELECT * FROM slide";
			$slide = mysqli_query($conn,$qr_slide);
			while ($row_slide = mysqli_fetch_assoc($slide)) {
			?>
			<img src="image/slide/<?php echo $row_slide['image'] ?>" alt="" style="width: 100%; height: 482px;" class="mySlides">
			<?php } ?>
		</div>
		<div id="main-content">
			<div id="project">
				<a href="#"><h4>HẠNG MỤC THI CÔNG:</h4></a>
				<div class="w3-row" style="padding-bottom: 3px;">
					<?php
					$qr_loaihangmuc = "SELECT * FROM loaihangmucthicong";
					$loaihangmuc = mysqli_query($conn,$qr_loaihangmuc);
					while ($row_loaihangmuc = mysqli_fetch_assoc($loaihangmuc)) {
					?>
					<div class="w3-col m3 s6">
						<div class="product-detail1">
							<a href="project.php?id=<?php echo $row_loaihangmuc['id'] ?>"><img src="image/hangmucthicong/<?php echo $row_loaihangmuc['image'] ?>" alt="" width="100%" height="100%"></a>
						</div>
					</div>
					<?php } ?>
				</div>
				
			</div>
			<div id="products">
				<?php
				$qr_marble = "SELECT * FROM type_products WHERE id=1";
				$marble = mysqli_query($conn,$qr_marble);
				$row_marble = mysqli_fetch_assoc($marble);
				?>
				<a href="#"><h4>--<?php echo $row_marble['name']; ?>--</h4></a>
				<div class="w3-row" style="padding-bottom: 3px;">
					<?php
					$qr_products1 = "SELECT * FROM products WHERE id_type=1 LIMIT 10,4";
					$products1 = mysqli_query($conn,$qr_products1);
					while($row_products1 = mysqli_fetch_assoc($products1)) {
					?>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
							<div class="product-name"><?php echo $row_products1['name']; ?></div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<?php } ?>
				</div>
			</div>
			<div id="products">
				<?php
				$qr_granite = "SELECT * FROM type_products WHERE id=2";
				$granite = mysqli_query($conn,$qr_granite);
				$row_granite = mysqli_fetch_assoc($granite);
				?>
				<a href="#"><h4>--<?php echo $row_granite['name']; ?>--</h4></a>
				<div class="w3-row" style="padding-bottom: 3px;">
					<?php 
					$qr_products2 = "SELECT * FROM products WHERE id_type=2 LIMIT 2,4";
					$products2 = mysqli_query($conn,$qr_products2);
					while($row_products2 = mysqli_fetch_assoc($products2)) {
					?>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/<?php echo $row_products2['image']; ?>" alt="" width="100%" height="100%"></a>
							<div class="product-name"><?php echo $row_products2['name']; ?></div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<?php } ?>
					
					
				</div>
			</div>
			<div id="news">
				<h4>TIN TỨC VỀ ĐÁ HOA CƯƠNG</h4>
				<div class="w3-row">
					<?php
					$qr_news = "SELECT * FROM tintuc LIMIT 4";
					$news = mysqli_query($conn,$qr_news);
					while($row_news = mysqli_fetch_assoc($news)) {
					?>
					<a href="news_content.php?id=<?php echo $row_news['id'] ?>">
					<div class="w3-col l6 m12 s12" >
						<div class="w3-row w3-card w3-margin-bottom" style="padding: 8px;">
							<div class="w3-col m3">
								<div id="news-img"><img src="image/news/<?php echo $row_news['image'] ?>" alt="" width="100%" height="100%"></div>
							</div>
							<div class="w3-col m9" style="padding: 8px;">
								<div id="news-title" style="font-weight: bold;border-bottom: 1px solid #ccc;"><?php echo $row_news['tieuDe'] ?></div>
								<div id="news-content"><?php echo $row_news['tomTat'] ?></div>
							</div>
						</div>
					</div>
					</a>
					<?php } ?>
					
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