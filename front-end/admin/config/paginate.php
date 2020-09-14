<?php
require("../../../back-end/database.php");
if(isset($_GET['search'])) {
	$search = $_GET['search'];
	$search = addslashes($search);
	$qr_sanpham = "SELECT * FROM products WHERE name LIKE '%$search%'";
}
else {
	$qr_sanpham = "SELECT * FROM products";
}
$sanpham = mysqli_query($conn,$qr_sanpham);
$num_row = mysqli_num_rows($sanpham);
$sotin = 5;
$tong = mysqli_num_rows($sanpham);
if($tong > $sotin) {
	$sotrang = ceil($tong/$sotin);
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
$start = ($page - 1)*$sotin;

?>

<div class="menu">Danh sách các sản phẩm</div>
	<div class="content" style="border: 1px solid #ccc;">
		<div class="w3-margin-top w3-margin-bottom">
			<form action="" method="get">
      			<input type="text" placeholder="Search.." name="search" id="nameSearch">
     			<button id="search"><i class="fa fa-search"></i></button>
			</form>
		</div>
		<?php  echo "Tìm thấy ".$num_row." sản phẩm";?>
		<div class="w3-button w3-pink w3-hover-purple w3-right w3-margin-top w3-margin-bottom">Thêm sản phẩm</div>
		<table class="w3-table-all w3-hoverable w3-margin-top">
    		<thead>
      			<tr class="w3-light-grey">
        			<th>Ảnh</th>
        			<th>Tên sản phẩm</th>
        			<th>Loại sản phẩm</th>
					<th>Sửa</th>
					<th>Xóa</th>
      			</tr>
    		</thead>
<?php
if(isset($_GET['search'])) {
	$qr_sanpham = "SELECT * FROM products WHERE name LIKE '%$search%'";
}
else {
	$qr_sanpham = "SELECT * FROM products LIMIT $start,$sotin";
}
$sanpham = mysqli_query($conn,$qr_sanpham);
while($row_sanpham = mysqli_fetch_assoc($sanpham)) {
?>
<tr>
<td><img src="../../front-end/image/products/<?php echo $row_sanpham['image'] ?>" alt="" width="100px" height="100px;"></td>
<td style="line-height: 100px;"><?php echo $row_sanpham['name'] ?></td>
<td style="line-height: 100px"><?php echo $row_sanpham['id_type'] ?></td>
<td><button class="w3-button w3-pink w3-hover-purple edit" style="margin-top: 38px" id_item="<?php echo $row_sanpham['id'] ?>">Sửa</button></td>
<td><button class="w3-button w3-pink w3-hover-purple delete" style="margin-top: 38px" id_item="<?php echo $row_sanpham['id'] ?>">Xóa</button></td>
</tr>
<?php } ?>
							
  		</table>					
</div>

