<?php
require("../back-end/database.php");
	$qr_news = "SELECT * FROM tintuc";
	$news = mysqli_query($conn,$qr_news);
$sotin = 10;
$tong = mysqli_num_rows($news);
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
						<h4>CATEGORY ARCHIVES: TIN TỨC</h4>
					</div>
					<div id="news-contruction">
						<?php
								$qr_news = "SELECT * FROM tintuc LIMIT $start,$sotin";
								$news = mysqli_query($conn,$qr_news);
								while($row_news = mysqli_fetch_assoc($news)) {
							
						?>
						<div class="w3-row" style="margin-bottom: 16px;">
							<a href="news_content.php?id=<?php echo $row_news['id'] ?>">
								<div class="w3-col l5 s12">
									<div class="box-img">
										<img src="image/news/<?php echo $row_news['image'] ?>" alt="" width="100%" height="250px;">
									</div>
								</div>
								<div class="w3-col l7 s12">
									<div class="box-news">
										<div class="box-news-tittle">
											<?php echo $row_news['tieuDe'] ?>
										</div><hr>
										<div class="box-news-summary">
											<?php echo $row_news['tomTat'] ?>
										</div>
									</div>
								</div>
							</a>
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
  							<a href="project.php?id=<?php echo $id ?>&page=<?php echo $prev ?>" class="w3-bar-item w3-button w3-circle w3-border">&laquo;</a>
							<?php  } ?>
							<?php
							// Nut so
							for($i = 1;$i <= $sotrang;$i++) {
								if($page != $i) {
							?>
  							<a href="project.php?id=<?php echo $id ?>&page=<?php echo $i ?>" class="w3-bar-item w3-button w3-circle w3-border"><?php echo $i ?></a>
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
					<?php include("right_content.php"); ?>
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