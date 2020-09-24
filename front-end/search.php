<!doctype html>
<?php
require("../back-end/database.php");
$key = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $key = test_input($_POST["key"]);
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
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
		<div id="detail-list">
			<div class="w3-row">
				<div class="w3-col m3 s6">
					<h4 class="w3-center"><a href="product.php" class="w3-hover-text-cyan">Sản phẩm</a>\<span class="w3-weight">Marble</span></h4>
				</div>
			</div>
		</div>
		<div id="main-content">
			<div class="w3-row">
  				<div class="w3-col m3 s6">
  					<div class="w3-row">
					  <h2 class="w3-center">Danh mục sản phẩm</h2>
					  <ul class="w3-ul">
					    <li class="w3-hover-text-cyan"><a href="marble.php">Đá Marble</a></li>
					    <li class="w3-hover-text-cyan"><a href="granite.php">Đá Granite</a></li>
					    <li class="w3-hover-text-cyan"><a href="mosiac.php">Đá Mosiac</a></li>
					    <li class="w3-hover-text-cyan"><a href="hoavan.php">Đá Hoa văn</a></li>
					    <li class="w3-hover-text-cyan"><a href="chiphao.php">Cột, chỉ, phào</a></li>
					  </ul>
					</div>
  				</div>
  				<div class="w3-col m9 s9">
  					<div id="products">
						
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							$qr_products1 = "SELECT * FROM products WHERE name LIKE '%$key%' limit 4";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id']; ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							$qr_products1 = "SELECT * FROM products WHERE name LIKE '%$key%' limit 4,4";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id']; ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							$qr_products1 = "SELECT * FROM products WHERE name LIKE '%$key%' limit 8,4";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id']; ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							$qr_products1 = "SELECT * FROM products WHERE name LIKE '%$key%' limit 12,4";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id']; ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
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
