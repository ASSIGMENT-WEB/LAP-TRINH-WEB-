
<div id="header">
		<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none; width: 340px;" id="leftMenu">
  			<button onclick="closeLeftMenu()" class="w3-bar-item w3-button w3-large">&times;</button>
  			<div id="search">
				<form action="" method="get" class="w3-bar-item">
					<input type="text" placeholder="Tìm kiếm...">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
  			<a href="index.php" class="w3-bar-item w3-button">TRANG CHỦ</a>
			<a href="introduce.php" class="w3-bar-item w3-button">GIỚI THIỆU</a>
			<a href="catalogue.php" class="w3-bar-item w3-button">CATALOGUE</a>
			<a href="#" class="w3-bar-item w3-button">SẢN PHẨM</a>
			<a href="project.php?id=1" class="w3-bar-item w3-button">HẠNG MỤC THI CÔNG</a>
			<a href="service.php" class="w3-bar-item w3-button">DỊCH VỤ THI CÔNG</a>
			<a href="contruction.php" class="w3-bar-item w3-button">CÔNG TRÌNH</a>
			<a href="news.php" class="w3-bar-item w3-button">TIN TỨC</a>
			<a href="contact.php" class="w3-bar-item w3-button">LIÊN HỆ</a>
			<a href="login.php" class="w3-bar-item w3-button">ĐĂNG NHẬP</a>
			<a href="signup.php" class="w3-bar-item w3-button">ĐĂNG KÝ</a>
			<div id="contact">
				<div class="w3-col m6 w3-black w3-round-xlarge" id="zalo"><a href="https://zalo.me/0902711851" target="_blank">ZALO: 0933 67 62 64</a> 
				</div>
				<div class="w3-col m6 w3-black w3-round-xlarge" id="phone"><a href="#" target="_blank">CALL: 0933 33 43 48</a></div>
			</div>
		</div>
		<div id="mobile">
			<a href="javascript:void(0)" class="w3-button w3-hide-large w3-margin" onclick="openLeftMenu()">&#9776;</a>
			<div id="logo" class="w3-hide-large w3-display-topmiddle">
	
				<a href="#"><img class="" src="image/products/logo.png" alt="" width="200px"></a>
			</div>
		</div>
		<div id="header-top">
			<div class="w3-row">
				<div class="w3-col m3">
					
					<div id="logo">
						<a href="#"><img class="w3-hide-small w3-hide-medium" src="image/products/logo.png" alt="" width="200px"></a>
					</div>
				</div>
				<div class="w3-col m5">
					<div id="search">
						<form action="" method="get" class="w3-hide-small w3-hide-medium">
							<input type="text" placeholder="Tìm kiếm...">
							<button type="submit"><i class="fa fa-search"></i></button>
						</form>
					</div>
					
				</div>
				
				<div class="w3-col m4">
					<div class="w3-row">
						<div class="w3-show-inline-block w3-hide-small w3-hide-medium" style="margin-left: 170px;">
							<div class="w3-item w3-light-grey">
								<?php
								if(isset($_SESSION['user'])) {
								?>
								<div class="w3-bar-item w3-button">Xin chào, ABC</div>
								<a href="#" class="w3-bar-item w3-button">Đăng xuất</a>
								<?php } else { ?>
								 <a href="login.php" class="w3-bar-item w3-button">Đăng nhập</a>
  								<a href="signup.php" class="w3-bar-item w3-button">Đăng ký</a>
								<?php } ?>
  								
							</div>
						</div>
						<div id="contact">
							<div class="w3-col m6 w3-black w3-round-xlarge w3-hide-small w3-hide-medium" id="zalo"><a href="https://zalo.me/0902711851" target="_blank">ZALO: 0933 67 62 64</a> 
							</div>
							<div class="w3-col m6 w3-black w3-round-xlarge w3-hide-small w3-hide-medium" id="phone"><a href="#" target="_blank">CALL: 0933 33 43 48</a></div>
						</div>
					</div>
				</div>
			</div>
		</div><hr>
		<div id="header-menu">
			<div class="w3-bar">
					<a href="index.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">TRANG CHỦ</a>
					<a href="introduce.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">GIỚI THIỆU</a>
					<a href="catalogue.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">CATALOGUE</a>
					<div class="w3-dropdown-hover">
						 <button class="w3-button w3-hide-small w3-hide-medium">SẢN PHẨM <i class="fa fa-angle-down"></i></button>
      					<div class="w3-dropdown-content w3-bar-block w3-card-4">
							<?php
							$qr_typeProducts = "SELECT * FROM type_products";
							$typeProducts = mysqli_query($conn,$qr_typeProducts);
							while($row_typeProducts = mysqli_fetch_assoc($typeProducts)) {
							?>
        					<a href="#" class="w3-bar-item w3-button"><?php echo $row_typeProducts['name']; ?></a>
        					<?php } ?>
      					</div>
					</div>
					<div class="w3-dropdown-hover">
						 <button class="w3-button w3-hide-small w3-hide-medium">HẠNG MỤC THI CÔNG <i class="fa fa-angle-down"></i></button>
      					<div class="w3-dropdown-content w3-bar-block w3-card-4">
							<?php 
							$qr_project = "SELECT * FROM loaihangmucthicong";
							$project = mysqli_query($conn,$qr_project);
							while($row_project = mysqli_fetch_assoc($project)) {
							?>
        					<a href="project.php?id=<?php echo $row_project['id'] ?>" class="w3-bar-item w3-button"><?php echo $row_project['name']; ?></a>
        				<?php } ?>
      					</div>
					</div>
					
					<a href="service.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">DỊCH VỤ THI CÔNG</a>
					<a href="contruction.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">CÔNG TRÌNH</a>
					<a href="news.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">TIN TỨC</a>
					<a href="contact.php" class="w3-bar-item w3-button w3-hide-small w3-hide-medium">LIÊN HỆ</a>
				</div>
			
		</div>
		
	</div>