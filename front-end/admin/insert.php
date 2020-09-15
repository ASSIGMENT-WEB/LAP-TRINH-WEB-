<?php
require("../../back-end/database.php");
if(isset($_POST['add'])) {
	$name = $_POST['name'];
	$id_type = $_POST['id_type'];
	$id_type = (int)$id_type;
	$decription = $_POST['description'];
	if(isset($_FILES['image'])) {
		$image = $_FILES['image']['name'];
		move_uploaded_file($_FILES['image']['tmp_name'],'./../image/products/'.$_FILES['image']['name']);
	}
	if(!empty($name) && !empty($id_type) && !empty($image)) {
		$insert = "INSERT INTO products (name,id_type,description,image) VALUES ('$name',$id_type,'$decription','$image')";
		mysqli_query($conn,$insert);
		$suss = "Đã thêm mới sản phẩm";
	}
	else {
		$error = array();
		if(empty($name)) {
			$error['name'] = "Bạn chưa nhập tên sản phẩm!";
		}
		if(empty($image)) {
			$error['image'] = "Bạn chưa chọn ảnh cho sản phẩm";
		}
	}
}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/style.css">
<script src="ckeditor/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Untitled Document</title>
</head>

<body>
	<?php
	if(isset($_SESSION['admin'])) {
	?>
	<div id="hearder">
		<div class="w3-bar w3-black">
  			<a href="#" class="w3-bar-item w3-button">Xin chào, <?php echo $_SESSION['admin'] ?></a>
  			<a href="../../back-end/logout.php" class="w3-bar-item w3-button w3-right"><i class='fas fa-power-off'></i> Đăng xuất</a>
			<a href="../index.php" class="w3-bar-item w3-button w3-right"><i class="fa fa-home"></i> Trang chủ</a>
		</div>
	</div>
	<div id="content">
		<div class="w3-row-padding w3-margin">
			<div class="w3-col l4">
				<div id="left">
					<div class="menu">Admin menu</div>
					<div class="content" style="border: 1px solid #ccc;border-radius:0px 0px 20px 20px;">
						<div class="w3-bar-block">
							<a href="#" class="w3-bar-item w3-button w3-border-bottom">Cấu hình</a>
							<a href="#" class="w3-bar-item w3-button w3-border-bottom">Tin tức</a>
							<a href="#" class="w3-bar-item w3-button w3-border-bottom">Sản phẩm</a>
							<a href="#" class="w3-bar-item w3-button">Đơn hàng</a>
						</div>
					</div>
				</div>
			</div>
			<div class="w3-col l8">
				<div id="right">
					<div class="menu">Thêm sản phẩm</div>
					<div class="content" style="border: 1px solid #ccc;">
						<?php 
							if(isset($error['name'])) {
						?>
						<div class="w3-panel w3-pale-red w3-border">
  							<p><?php echo $error['name'] ?></p>
						</div>
						<?php } ?>
						<?php if(isset($error['image'])) { ?>
						<div class="w3-panel w3-pale-red w3-border">
  							<p><?php echo $error['image'] ?></p>
						</div>
						<?php } ?>
						<?php if(isset($suss)) { ?>
						<div class="w3-panel w3-pale-green w3-border">
  							<p><?php echo $suss ?></p>
						</div>
						<?php } ?>
						<form class="w3-container w3-card-4" enctype="multipart/form-data" method="post">
  							<p>      
  								<label class="w3-text-blue"><b>Tên sản phẩm</b></label>
  								<input class="w3-input w3-border" name="name" type="text" id="name">
								<div id="name-error" style="display: none;color: red"></div>
							</p>
							<p>
								<label class="w3-text-blue"><b>Loại sản phẩm</b></label>
  								<select class="w3-select w3-border" name="id_type">
   									<option value="1">1 - Đá marble</option>
    								<option value="2">2 - Đá Granite</option>
    								<option value="3">3 - Đá Mosaic</option>
									<option value="4">4 - Đá Hoa Văn</option>
									<option value="5">5 - Cột, chỉ, pháo</option>
  								</select>
							</p>
  							<p>      
  								<label class="w3-text-blue"><b>File ảnh</b></label>
  								<input class="w3-input w3-border" name="image" type="file">
							</p>
							<p>      
  								<label class="w3-text-blue"><b>Mô tả</b></label>
  								<textarea name="description" id="mo-ta"></textarea>
								 <script>CKEDITOR.replace('mo-ta');</script>
							</p>
  							<p>      
  								<button class="w3-btn w3-blue" name="add">Thêm mới</button>
							</p>
						</form>
					</div>
				</div>
				
				</div>
			</div>
		</div>
	</div>
	<div id="footer" class="w3-black w3-center" style="line-height: 60px">Dragonstone.vn</div>
	<?php }  else {?>
	<div class="w3-panel w3-pale-red w3-border">
  <h3>Bạn chưa đăng nhập!</h3>
  <p>Bạn có muốn đăng nhập? <a href="../login.php">Đăng nhập?</a></p>
</div>
	<?php }?>
</body>	
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script>
	$(document).ready(function() {
		$("#name").blur(function() {
			var name = $(this).val();
			if(name == "") {
				$("#name-error").css({"display":"block"});
				$("#name-error").html("Bạn chưa nhập tên sản phẩm!");
			}
		});
		$("#name").click(function() {
			$("#name-error").css({"display":"none"});
		})
	});
</script>
</html>