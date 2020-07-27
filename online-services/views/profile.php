<!DOCTYPE html>
<html lang="en">
<head>
	<title>Online services</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/profile.css">
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

	<!-- Section Profile -->
	<?php 
		include('../php/connect.php');
		$link = 'login.php';

		if(isset($_SESSION['user_id'])) {

			$sql = "SELECT * FROM `tblclient` WHERE ID = " . $_SESSION['user_id'];
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
				$row = $result->fetch_assoc();
			}
		
		}else {
			header("location: index.php");
		}
	?>

	<section class="section-profile">
		<div>
			<h2><?php echo $_SESSION['user_name']; ?></h2>
			<p>Address: <?php echo $row['Address']; ?></p>
			<p>Phone: <?php echo $row['Phone_No']; ?></p>
			<a href="../php/logout.php">Log Out</a>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th>Service Name</th>
						<th>Price</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<?php  
						$sql = "SELECT * FROM `view_cart` WHERE user_id = " . $_SESSION['user_id'];
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {
								while($row = $result->fetch_assoc()) {
									?>
									<tr>
										<td><?php echo $row['Services_Title']; ?></td>
										<td><?php echo $row['price']; ?></td>
										<td><?php echo $row['Status']; ?></td>
									</tr>
									<?php			
								}
						}else {
							header("location: index.php");
						}
					?>
				</tbody>
			</table>
		</div>
	</section>

	<!-- Footer -->
	<footer class="footer">
		<div class="footer-inner">
			<div>
				<label class="logo"><i class="fa fa-bicycle"></i> Services on the Go &copy; 2020 All rights reserved.</label>
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