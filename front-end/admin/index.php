<?php
require("../../back-end/database.php");
if(isset($_GET['search'])) {
	$qr_sanpham = "SELECT * FROM products WHERE name LIKE '%$search%'";
}
else {
	$qr_sanpham = "SELECT * FROM products";
}
$sanpham = mysqli_query($conn,$qr_sanpham);
$sotin = 5;
$tong = mysqli_num_rows($sanpham);
if($tong > $sotin) {
	$sotrang = ceil($tong/$sotin);
}
else {
	$sotrang = 1;
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
				<div id="right"></div>
				<div id="paging">
                 <ul id="rows"></ul>
                 <ul id="pages">
                 	 <li class="pageInfo">Page <span id="sotrang">1</span> of <span id="tongtrang"><?php  echo $sotrang; ?></span></li> 
                     <li class="goPrevious" id="prev">&lsaquo;&lsaquo; Previous</li>
                     <li>
                     	<input type="text" class="currentPage" id="currentPage" value=""/>
                     </li>
                     <li class="goNext" id="next">Next &rsaquo;&rsaquo;</li>
                     
                 </ul>
                 <div class="clr"></div>
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
		var tongtrang = $("#tongtrang").text();
		tongtrang = parseInt(tongtrang);
		var page = 1;
		$("#sotrang").html(page);
		function fetchData() {
			$.get("config/paginate.php",function(data) {
			$("#right").append(data);
		});
		}
		fetchData();
		$("#next").click(function() {
			if(page < tongtrang){
				page += 1;
			$("#sotrang").html(page);
			$("#right").empty();
			$.get("config/paginate.php",{page:page},function(data) {
				$("#right").append(data);
			});
			}
		});
		$("#prev").click(function() {
			if(page > 1){
				page -= 1;
			$("#sotrang").html(page);
			$("#right").empty();
			$.get("config/paginate.php",{page:page},function(data) {
				$("#right").append(data);
			});	
			}
		});
		$("#currentPage").blur(function() {
			page = $(this).val();
			page = parseInt(page);
			if(page <= tongtrang) {
				$("#sotrang").html(page);
			$("#right").empty();
			$.get("config/paginate.php",{page:page},function(data) {
				$("#right").append(data);
			});
			}
			else {
				alert("Số trang phải từ 1 đến "+tongtrang+" trang");
			}
			
		});
		$(document).on("click","#search",function() {
			var search = $("#nameSearch").val();
			$("#right").empty();
			$.get("config/paginate.php",{search:search},function(data) {
				$("#right").append(data);
			});
		})
		$(document).on("click",".delete",function() {
			var id = $(this).attr("id_item");
			$("#right").empty();
			$.get("config/delete.php",{id:id},function(data) {
				$.get("config/paginate.php",{page:page},function(data) {
					$("#right").append(data);
			});
			});
		});
	});
</script>
</html>