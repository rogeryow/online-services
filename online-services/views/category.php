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
	<?php 
		include('../php/connect.php')
	?>
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

	<!-- Service Category -->
	<section class="service-category">
			<div>
				<h2>Browse Services</h2>
				<label class="category-crumb">Services / Categories</label>
			</div>
		<div class="service-category-inner">
			<div class="service-category-item">
				<div class="category-image">
					<label>Home</label>
				</div>
				<div class="category-body">
				<ul>
					<li><a href="browse.php?c=Home&s=Pest-Control-Services">Pest Control Services</a></li>
					<li><a href="browse.php?c=home&s=House-Cleaning-Services">House Cleaning Services</a></li>
					<li><a href="browse.php?c=Home&s=Plumbing-Services">Plumbing Services</a></li>
					<li><a href="browse.php?c=Home&s=Electrical-Services">Electrical Services</a></li>
					<li><a href="browse.php?c=Home&s=Aircon-Services">Aircon Services</a></li>
				</ul>
<!-- 					<a class="btn-view" href="">
						<span>View all</span>
					</a> -->
				</div>
			</div>
			<div class="service-category-item">
				<div class="category-image">
					<label>Events</label>
				</div>
				<div class="category-body">
				<ul>
					<li><a href="browse.php?c=Events&s=Catering-Services">Catering Services</a></li>
					<li><a href="browse.php?c=Events&s=Birthday-Decoration-Services">Birthday Decoration Services</a></li>
				</ul>
<!-- 					<a class="btn-view" href="">
						<span>View all</span>
					</a> -->
				</div>
			</div>
			<div class="service-category-item">
				<div class="category-image">
					<label>Body and Health</label>
				</div>
				<div class="category-body">
				<ul>
					<li><a href="browse.php?c=Body-and-Health&s=Manicure-and-Pedicure-Services&category=35&sub=6">Manicure and Pedicure Services</a></li>
					<li><a href="browse.php?c=Body-and-Health&s=Massage-Services&category=35&sub=5">Massage Services</a></li>
				</ul>
<!-- 					<a class="btn-view" href="">
						<span>View all</span>
					</a> -->
				</div>
			</div>
			<div class="service-category-item">
				<div class="category-image">
					<label>Rental</label>
				</div>
				<div class="category-body">
				<ul>
					<li><a href="browse.php?c=Rental&s=Tables-and-Affairs-Rental">Tables & Affairs Rental Services</a></li>
					<li><a href="browse.php?c=Rental&s=Car-Rental-Servicse">Car Rental Services</a></li>
				</ul>
<!-- 					<a class="btn-view" href="">
						<span>View all</span>
					</a> -->
				</div>
			</div>
			<div class="service-category-item">
				<div class="category-image">
					<label>Delivery</label>
				</div>
				<div class="category-body">
				<ul>
					<li><a href="browse.php?c=Delivery&s=Grocery-and-Shopping-Services">Grocery & Shopping Services</a></li>
					<li><a href="browse.php?c=Delivery&s=Food-Deliver Services">Food Delivery Services</a></li>

				</ul>
<!-- 					<a class="btn-view" href="">
						<span>View More</span>
					</a> -->
				</div>
			</div>
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