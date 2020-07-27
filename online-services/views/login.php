<!DOCTYPE html>
<html lang="en">
<head>
	<title>Online services</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/form.css">
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
				<li><a href="#">Services</a></li>
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

	<section class="login-section">
		<form class="login-form"  method="post">
			<?php
				include("../php/connect.php");

				if($_SERVER["REQUEST_METHOD"] == "POST") {
					// username and password sent from form 

					$username = mysqli_real_escape_string($conn, $_POST['username']);
					$password = mysqli_real_escape_string($conn, $_POST['password']); 

					$sql = "Select * From `tblclient` Where `Username` = '$username' AND `Password` = '$password'";
					$result = mysqli_query($conn, $sql);
					$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

					$count = mysqli_num_rows($result);

					// If result matched $myusername and $mypassword, table row must be 1 row
					if($count == 1) {
						$_SESSION['user_id'] = $row['ID'];
						$_SESSION['user_name'] = $row['Username'];
						$_SESSION['login_user'] = $myusername;
					 
						header("location: index.php");
					}else {
						$error = "Your Login Name or Password is invalid";
						echo $error;
					}
				}
			?>
			<h2>Login</h2>
			<label class="label">Username</label>
			<input class="input" name="username" type="text" name="" placeholder="Username or Password">
			<label class="label">Password</label>
			<input class="input" name="password" type="password" name="" placeholder="Password">
			<input name="btn_login" type="submit" class="btn-form btn-red" value="Login">
			<hr class="divider">
			<p class="form-text">Don't have an account? Sign up as</p>
			<p class="group-link">
				<a href="register.php">User</a>
				or
				<a href="register.php">Vendor</a>
			</p>
		</form>
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