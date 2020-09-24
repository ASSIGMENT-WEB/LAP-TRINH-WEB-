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
		<div id="detail-list">
		</div>
		<div id="main-content">
			<div class="w3-row">
  				<div class="w3-col m3 s6">
  					<div class="w3-row">
					  <h2 class="w3-center">Danh mục sản phẩm</h2>
					  <ul class="w3-ul">
					    <li class="w3-hover-text-cyan"><a href="product.php?id=1">Đá Marble</a></li>
					    <li class="w3-hover-text-cyan"><a href="product.php?id=2">Đá Granite</a></li>
					    <li class="w3-hover-text-cyan"><a href="product.php?id=3">Đá Mosiac</a></li>
					    <li class="w3-hover-text-cyan"><a href="product.php?id=4">Đá Hoa văn</a></li>
					    <li class="w3-hover-text-cyan"><a href="product.php?id=5">Cột, chỉ, phào</a></li>
					  </ul>
					</div>
  				</div>
  				<div class="w3-col m9 s9">
  					<div id="products">
						
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							if(isset($_GET['id'])) {
								$id_sp = $_GET['id'];
								settype($id_sp,"int");
							}
							?>
							<?php
							$qr_products1 = "SELECT * FROM products WHERE id=$id_sp";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m6 s6">
								<div class="product-detail1 product-detail w3-card">
									<img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%">
								</div>
							</div>
							<div class="w3-col m6 s6">
								<div style="font-weight: bold; font-size: x-large; "><?php echo $row_products1['name']; ?></div>
								<div style="font-weight: bold;">Liên hệ: 0933 67 62 64</div>
								<div ><?php echo $row_products1['description']; ?></div>
							</div>
							<?php } ?>
						</div>
					</div>
					<div id="comment">
						<div class="w3-panel w3-border-top">
						    <div class="w3-panel w3-border w3-border-orange ">
						    	<div >
									<?php
									$qr_products1 = "SELECT * FROM products WHERE id=$id_sp";
									$products1 = mysqli_query($conn,$qr_products1);
									while($row_products1 = mysqli_fetch_assoc($products1)) {
									?>
									<div class="w3-margin-top">Hãy là người đầu tiên nhận xét về "<?php echo $row_products1['name']; ?>"
									</div>
									<?php } ?>
								</div>
						    	
						    	<form action="comment.php" method="post" class="w3-container w3-margin-bottom w3-margin-top">
								  <p>
								  <label>Nhận xét của bạn*</label>
								  <textarea class="w3-input" name="comment" rows="5"></textarea>
								  <!-- <input class="w3-input" type="text" name="comment"></p> -->
								  <p>
								  <label>Tên*</label>
								  <input class="w3-input" type="text" name="name"></p>
								  <p>
								  <label>Email*</label>
								  <input class="w3-input" type="email" name="email"></p>
								  <input type="submit" value="Gửi đi">
								</form>
							</div>
						</div>
					</div>
					<div id="relative">
						<div class="w3-row">
							<div id="slide" class="w3-section">
								<?php 
									for ($x = 0; $x <= 10; $x++) {
									  ?>
									<div class="mySlides w3-animate-left">
									<?php
									$qr_products1 = "SELECT * FROM products WHERE id=$id_sp";
									$products1 = mysqli_query($conn,$qr_products1);
									$row_products1 = mysqli_fetch_assoc($products1);
									$id_type=$row_products1['id_type'];
									$qr_slide = "SELECT * FROM products WHERE id_type=$id_type ORDER BY RAND() LIMIT 10,4";
									$slide = mysqli_query($conn,$qr_slide);
									while ($row_slide = mysqli_fetch_assoc($slide)) {
									?>
									<div class="w3-col m3 s6">
									<div class="product-detail w3-card">
											<a href="product_detail.php?id=<?php echo $row_slide['id']; ?>"><img src="image/products/<?php echo $row_slide['image']; ?>" alt="" width="100%" height="100%"></a>
											<div class="product-name"><?php echo $row_slide['name']; ?></div>
											<div class="sdt">Liên hệ: 0933 67 62 64</div>
									</div>
									</div>
									<?php } ?>
								</div>
									<?php
									}
								?>
							</div>
						</div>
						<div class="w3-row">
							<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    						<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
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
		var myIndex = 1;
		carousel();
		function plusDivs(n) {
		  myIndex += n;
		  carousel();
		}
		function carousel() {
  			var i;
  			var x = document.getElementsByClassName("mySlides");
  		
  		for (i = 0; i < x.length; i++) {
    		x[i].style.display = "none";  
  		}
  		
  		if (myIndex < 1) {myIndex = x.length}
  		if (myIndex > x.length) {myIndex = 1}    
  			x[myIndex-1].style.display = "block";  
  			
		}
	</script>
</html>
