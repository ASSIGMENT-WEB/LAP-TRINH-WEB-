<!doctype html>
<?php
require("../back-end/database.php");
if(isset($_GET['id'])) {
	$id = $_GET['id'];
	settype($id,"int");
	$qr_products = "SELECT * FROM products WHERE id_type=$id";
	$product = mysqli_query($conn,$qr_products);
}
$sosp = 8;
$tong = mysqli_num_rows($product);
if($tong > $sosp) {
	$sotrang = ceil($tong/$sosp);
}
else {
	$sotrang = 1;
}
if(isset($_GET['page']) && is_numeric($_GET['page']) && (int)$_GET['page'] >= 1 && (int)$_GET['page'] <= $sotrang) {
	$page = $_GET['page'];	
}
else {
	$page = 1;
}
$start = ($page - 1)*$sosp;
$start2=$start+4;
$sosp2=$sosp/2;
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
					<?php 
							$qr_typeProducts = "SELECT * FROM type_products WHERE id=$id";
							$typeProducts = mysqli_query($conn,$qr_typeProducts);
							while($row_typeProducts = mysqli_fetch_assoc($typeProducts)) {
							?>
        					<h4 class="w3-center">Sản phẩm\<span class="w3-font-weight"><?php echo $row_typeProducts['name']?></span></h4>
        				<?php } ?>
					
				</div>
			</div>
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
							$qr_products1 = "SELECT * FROM products WHERE 	id_type=$id LIMIT $start,$sosp2";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id'] ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="w3-row" style="padding-bottom: 3px;">
							<?php
							$qr_products1 = "SELECT * FROM products WHERE 	id_type=$id LIMIT $start2,$sosp2";
							$products1 = mysqli_query($conn,$qr_products1);
							while($row_products1 = mysqli_fetch_assoc($products1)) {
							?>
							<div class="w3-col m3 s6">
								<div class="product-detail w3-card">
									<a href="product_detail.php?id=<?php echo $row_products1['id'] ?>"><img src="image/products/<?php echo $row_products1['image']; ?>" alt="" width="100%" height="100%"></a>
									<div class="product-name"><?php echo $row_products1['name']; ?></div>
									<div class="sdt">Liên hệ: 0933 67 62 64</div>
								</div>
							</div>
							<?php } ?>
						</div>
					<?php 
					if($sotrang > 1) {
					?>
					<div class="w3-center">
						<div class="w3-bar">
							<?php
							//prev
							if($page > 1) {
								$prev = $page - 1;
							?>
  							<a href="product.php?id=<?php echo $id ?>&page=<?php echo $prev ?>" class="w3-bar-item w3-button w3-circle w3-border">&laquo;</a>
							<?php  } ?>
							<?php
							// Nut so
							for($i = 1;$i <= $sotrang;$i++) {
								if($page != $i) {
							?>
  							<a href="product.php?id=<?php echo $id ?>&page=<?php echo $i ?>" class="w3-bar-item w3-button w3-circle w3-border"><?php echo $i ?></a>
							<?php } else { ?>
  							<div class="w3-bar-item w3-button w3-circle w3-border" style="background-color: #dd9933"><?php echo $i ?></div>
  							<?php } ?>
							<?php } ?>
							<?php
							//Next
							if($page < $sotrang) {
								$next = $page + 1;
							?>
  							<a href="project.php?id=<?php echo $id ?>&page=<?php echo $next ?>" class="w3-bar-item w3-button w3-circle w3-border">&raquo;</a>
							<?php } ?>
						</div>
					</div>
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
