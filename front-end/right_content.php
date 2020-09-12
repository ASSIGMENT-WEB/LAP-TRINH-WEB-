<div class="box-text-right">
						<div class="box-text-title">
							<h4>TIN TỨC CẬP NHẬT</h4>
						</div>
						<div style="border: 1px solid black;">
							<?php
							$qr_news = "SELECT * FROM tintuc LIMIT 5";
							$news = mysqli_query($conn,$qr_news);
							while($row_news = mysqli_fetch_assoc($news)) {
							?>
							<div class="w3-row" style="padding: 8px; margin-bottom: 10px;">
								<a href="news_content.php?id=<?php echo $row_news['id'] ?>">
									<div class="w3-col l5">
										<div class="">
											<img src="image/news/<?php echo $row_news['image'] ?>" alt="" width="100px" height="100px">
										</div>
									</div>
									<div class="w3-col l7">
										<div class="news-right-title" style="font-weight: bold">
											<?php echo $row_news['tieuDe'] ?>
										</div>
									</div>
								</a>
							</div>
							<?php } ?>
						</div>
					</div>