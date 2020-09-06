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
			<img src="image/slide/<?php echo $row_slide['image'] ?>" alt="" style="width: 100%; height: 100%;" class="mySlides">
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
							<a href="#"><img src="image/hangmucthicong/<?php echo $row_loaihangmuc['image'] ?>" alt="" width="100%" height="100%"></a>
						</div>
					</div>
					<?php } ?>
				</div>
				
			</div>
			<div id="products">
				<?php
				$qr_typeProduct = "SELECT * FROM type_products LIMIT 2";
				$typeProduct = mysqli_query($conn,$qr_typeProduct);
				$row_typeProduct = mysqli_fetch_assoc($typeProduct);
				?>
				<a href="#"><h4>--<?php echo $row_typeProduct['name']; ?>--</h4></a>
				<div class="w3-row" style="padding-bottom: 3px;">
					<?php
					$qr_products = "SELECT * FROM products WHERE id_type=1 LIMIT 4";
					$products = mysqli_query($conn,$qr_products);
					while($row_products = mysqli_fetch_assoc($products)) {
					?>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/<?php echo $row_products['image']; ?>" alt="" width="100%" height="100%"></a>
							<div class="product-name"><?php echo $row_products['name']; ?></div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<?php } ?>
					
					
				</div>
			</div>
			<div id="products">
				<a href="#"><h4>--ĐÁ MARBLE--</h4></a>
				<div class="w3-row" style="padding-bottom: 3px;">
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/da-marble-trang-volakas-01-400x400.jpg" alt="" width="100%" height="100%"></a>
							<div class="product-name">Đá marble trắng volakas</div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/da-marble-trang-volakas-01-400x400.jpg" alt="" width="100%" height="100%"></a>
							<div class="product-name">Đá marble trắng volakas</div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/da-marble-trang-volakas-01-400x400.jpg" alt="" width="100%" height="100%"></a>
							<div class="product-name">Đá marble trắng volakas</div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
					<div class="w3-col m3 s6">
						<div class="product-detail w3-card">
							<a href="#"><img src="image/products/da-marble-trang-volakas-01-400x400.jpg" alt="" width="100%" height="100%"></a>
							<div class="product-name">Đá marble trắng volakas</div>
							<div class="sdt">Liên hệ: 0933 67 62 64</div>
						</div>
					</div>
				</div>
			</div>
			<div id="news">
				<h4>TIN TỨC VỀ ĐÁ HOA CƯƠNG</h4>
				<div class="w3-row">
					<div class="w3-col l6 m12 s12" >
						<div class="w3-row w3-card w3-margin-bottom" style="padding: 8px;">
							<div class="w3-col m3">
								<div id="news-img"><a href="#"><img src="image/news/thi-cong-da-tu-nhien-lat-san-vuon-dep-gia-re89.jpg" alt="" width="100%" height="100%"></a></div>
							</div>
							<div class="w3-col m9" style="padding: 8px;">
								<div id="news-title" style="font-weight: bold;border-bottom: 1px solid #ccc;">Thi công đá tự nhiên lát sân vườn đẹp giá rẻ</div>
								<div id="news-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dignissimos dolorum ad pariatur accusantium quasi, quae ab accusamus consequuntur eos!</div>
							</div>
						</div>
					</div>	
					<div class="w3-col l6 m12 s12">
						<div class="w3-row w3-card w3-margin-bottom" style="padding: 8px;">
							<div class="w3-col m3">
								<div id="news-img"><a href="#"><img src="image/news/thi-cong-da-tu-nhien-lat-san-vuon-dep-gia-re89.jpg" alt="" width="100%" height="100%"></a></div>
							</div>
							<div class="w3-col m9" style="padding: 8px;">
								<div id="news-title" style="font-weight: bold;border-bottom: 1px solid #ccc;">Thi công đá tự nhiên lát sân vườn đẹp giá rẻ</div>
								<div id="news-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dignissimos dolorum ad pariatur accusantium quasi, quae ab accusamus consequuntur eos!</div>
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