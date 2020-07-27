<!DOCTYPE html>
<html lang="en">
<head>
	<title>Online services</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/detail.css">
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

	<!-- Service Detail -->
	<section class="section-detail">
		<div class="section-detail-inner">
			<!--  -->
			<?php  
				include('../php/connect.php');
				if(isset($_GET['id'])) {
					$sql = "SELECT * FROM `tblservices` WHERE IDServices = " . $_GET['id'];

					$result = $conn->query($sql);

					if ($result->num_rows > 0) {
						$row = $result->fetch_assoc();
					}
				}
			?>

			<?php 
				// insert
				if($_SERVER["REQUEST_METHOD"] == "POST") {
					if(isset($_SESSION['user_id'])) {
						$sql = "INSERT INTO `tblrequestservices` (`ID`, `user_id`, `service_id`) VALUES (NULL, '" . $_SESSION['user_id'] . "', '" . $_GET['id'] . "')";
						if ($conn->query($sql) === TRUE) {
							header("location: profile.php");
						} else {
							echo "Error: " . $sql . "<br>" . $conn->error;
						}

						$conn->close();
					}
				}
			?>
			<div class="detail-image"
				style="background-image: url('../assets/images/services/<?php echo $row['Services_Img']; ?>')"
			></div>
			<div class="detail-info">
				<div>
					<h2><?php echo $row['Services_Title']; ?></h2>	
					<div class="ratings">
						<div>
							<div class="stars-div">
								<label class="stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</label>
								<span class="star-detail">(374)</span>
							</div>
							<p class="price">₱<?php echo $row["price"]; ?></p>
							<p class="category-detail"><?php echo $row["Services_Desc"]; ?></p>
							<span class="open"><b>Open</b> ⋅ 8:am - 5pm</span>
							<p><b>Address:</b> <?php echo $row["address"]; ?></p>
						</div>
					</div>
				</div>
				<div>
					<form method="post">
						<input type="submit" class="btn-order" value="Place Order">
					</form>
				</div>
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