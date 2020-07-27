<!DOCTYPE html>
<html lang="en">
<head>
	<title>Online services</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/category.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<!-- nav -->
	<nav class="main-nav">
		<div class="main-nav-inner">
			<!-- <img src="assets/img/logo/logo.png" alt="Online Services" class="logo"> -->
			<a href="index.php">
				<label class="logo"><i class="fa fa-bicycle"></i> Services on the Go</label>
			</a>

			<ul class="main-menu">
				<li><a href="category.php">Services</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Support</a></li>
			</ul>

			<ul class="right-menu">
				<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
				<li><a href="#"><i class="fa fa-user-circle"></i></a></li>
			</ul>

			<div class="menu-btn">
				<i class="fa fa-bars fa-2x"></i>
			</div>
		</div>
	</nav>

	<!-- section background image -->
	<div class="category-background-image">
		
	</div>

	<!-- Category section -->
	<section class="category-section">
		<div class="category-section-inner">
			<h1>
				<?php 
					if(isset($_GET['c']) && isset($_GET['s'])) {
						$category = str_replace('-', ' ', $_GET['c']);
						$label = str_replace('-', ' ', $_GET['s']);
						echo $label;
					}
				?>
			</h1>
			<label class="category-crumb"><a class="a-blue" href="category.php">Services</a> / 
				<a class="a-blue" href="category.php">
				<?php 
					if(isset($category)) {
						echo $category;
					}
				?>
				</a>
			 / 
				<?php 
					if(isset($label)) {
						echo $label;
					}
				?>
			</label>

			<div class="category-body">
				<!-- start here -->
				<?php 
					include('../php/connect.php');
					if(isset($_GET['category']) && isset($_GET['sub'])) {
						$sql = "SELECT * FROM `tblservices` WHERE category = " . $_GET['category'] . " AND subcategory = " . $_GET['sub'];

						$result = $conn->query($sql);

						if ($result->num_rows > 0) {
							while($row = $result->fetch_assoc()) {
								?>

								<!-- category item template -->
								<div class="category-item">
									<div class="category-image"
										style="background-image: url('../assets/images/services/<?php echo $row['Services_Img']; ?>')"
									>
										
									</div>
									<dir class="category-text">
										<div>
											<h3><?php echo $row["Services_Title"]; ?></h3>
											<div class="ratings">
												<div>
													<label>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</label>
													<span class="star-detail">(374)</span>
												</div>
												<span class="price">₱<?php echo $row["price"]; ?></span>
											</div>
											<p class="category-detail"><?php echo $row["Services_Desc"]; ?></p>
										</div>
										<span class="open">Open ⋅ 8:am - 5pm</span>
										<a class="a-blue" href="detail.php?id=<?php echo $row["IDServices"]; ?>">Request now</i></a>
									</dir>
								</div>
								<!-- category item template -->

								<?php
							}
						} else {
							echo "No Available Service for this category yet.";
						}

					}
					$conn->close();
				?>

				<!-- category item template -->
<!-- 				<div class="category-item">
					<div class="category-image"></div>
					<dir class="category-text">
						<div>
							<h3>Full Body Massage</h3>
							<div class="ratings">
								<div>
									<label>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</label>
									<span class="star-detail">(374)</span>
								</div>
								<span class="price">₱150</span>
							</div>
							<p class="category-detail">Hire our house cleaning experts for a qualirt cleaning service</p>
						</div>
						<span class="open">Open ⋅ 8:am - 5pm</span>
						<a class="a-blue" href="detail.php">Request now</i></a>
					</dir>
				</div> -->
				<!-- category item template -->
		</div>
	</section>

	<!-- How it works -->
	<div class="section-devider">
		<i class="fa fa"></i>
		<h2 class="sec-title">How we operate</h2>
	</div>

	<section class="how-to">
		<div class="how-to-item">
			<div class="how-to-image"></div>
			<div>
				<h2 class="title">1. Request Services</h2>
				<p>Need some help? Tell us what services you need and where do you need them - directly from our website</p>
			</div>
		</div>
		<div class="how-to-item">
			<div class="how-to-image"></div>
			<div>
			<h2 class="title">2. Get Connected</h2>
				<p>Depending on the service, we will send quotes or assign you a vendor at fixed prices. Speed, reliability, value and satisfaction is our priority.</p>
			</div>
		</div>
		<div class="how-to-item">
			<div class="how-to-image"></div>
			<div>
			<h2 class="title">3. Hire & Pay</h2>
				<p>Hire the right vendor for your job request. Once the job is completed, you can pay directly to the vendor.</p>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="footer">
		<div class="footer-inner">
			<div>
				<i class="fa fa-globe fa-2x"></i> English (United States)
			</div>
			<ul>
				<li><a href="#">Sitemap</a></li>
				<li><a href="#">Privacy & cookies</a></li>
				<li><a href="#">Terms of use</a></li>
				<li><a href="#">Trademarks</a></li>
				<li><a href="#">Safety & eco</a></li>
				<li><a href="#">About our ads</a></li>
				<li><a href="#">&copy; Services on the Go 2020</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>