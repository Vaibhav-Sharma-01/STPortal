<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/Homepage.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<script src="js/websitecoll.js"></script>
<title>iEducate</title>
<style>
select {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	appearance: none;
	outline: 0;
	box-shadow: none;
	border: 0 !important;
	background: #5c6664;
	background-image: none;
	flex: 1;
	padding: 0 .5em;
	color: #fff;
	cursor: pointer;
	font-size: 1em;
	font-family: 'Open Sans', sans-serif;
}

select::-ms-expand {
	display: none;
}

.select {
	position: relative;
	display: flex;
	width: 63vh;
	margin-left: 10px;
	height: 2em;
	line-height: 2;
	background: #5c6664;
	overflow: hidden;
	border: 2px solid black;
	border-radius: 6px;
	right: 1vh;
	top: 1vh;
}

.select::after {
	content: '\25BC';
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 1em;
	background: #2b2e2e;
	cursor: pointer;
	pointer-events: none;
	transition: .25s all ease;
}

.select:hover::after {
	color: #23b499;
}
.firstSection{
    height:100vh;
    background: rgba(59, 59, 59,0.5);
}
.firstSection-log{
    height: 648px;
    background: rgba(59, 59, 59,0.5);
}
</style>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>

</head>
<body background="images/bg.jpg" class="vh100">
	<div id="overlay"></div>
	<nav class="navbar background h-nav">
		<ul class="nav-list v-class">
			<div class="logo">
				<img src="images/220px-ABESEC_logo.png" alt="logo">
			</div>
			<li><a href="#home">Home</a></li>
			<li><a href="#about">About</a></li>
			<li><a
				onclick="smoothScroll(document.getElementById('programs'))" href="#">Programs</a></li>
			<li><a onclick="openForm(); on();" href="#contact">Contact</a></li>
		</ul>
		<div class="rightnav v-class">
			<input type="text" name="search" id="search">
			<button class="btns btns-sm">Search</button>
		</div>
		<div class="burger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>

	<section class="firstSection-log" id="home">
		<div class="box-main">
			<div class="firstHalf" id="login">
				<div style="color:red; font-size: 30px;word-spacing: 10px; font-style: italic;" id="incorrect">
					${message}
				</div>
				<p class="text-big">Login</p>
				<br>
				<form action="login" method="post" id="loginform">
					<input class="login-input" type="text" name="email" id="email"
						placeholder="Email/Rollno" required> <input class="login-input"
						type="password" name="password" id="password"
						placeholder="Password" required>
					<div class="select">
						<select name="role" id="format" required="required">
							<option selected disabled hidden>Select your role:</option>
							<option value="HOD">HOD</option>
							<option value="ADMIN">ADMIN</option>
							<option value="STUDENT">STUDENT</option>
							<option value="TEACHER">TEACHER</option>
						</select>
					</div>
					<p style="position: relative; right: 25vh; width: 100%">
						<button style="width: 64%" type="submit" class="btns buttons" onclick="myFunction()">Login</button>	
					</p>
					<p style="position: relative; right: 14vh; top: 7vh; width: 100%">
						<a onclick="register()">Don't have an account? Sign up here</a>
					</p>
				</form>

			</div>
			<div class="firstHalfs" id="register" style="display: none;">
				<p class="text-big">Register</p>
				<br>
				<form action="Register" method="post">
					<input class="login-input" type="text" name="uname"
						placeholder="user name" required> <input
						class="login-input" type="email" name="email" placeholder="email"
						required> <input class="login-input" type="password"
						name="password" placeholder="password" required> <input
						class="login-input" type="text" name="phone" placeholder="phone"
						required>
					<div style="position: relative; bottom: 2vh">
						<p style="position: relative; right: 25vh; width: 100%">
							<button type="submit" style="width: 64%" class="btns buttons">Register
								Now</button>
						</p>
						<p style="position: relative; right: 14vh; top: 5vh; width: 100%">
							<a onclick="login()">Already have an account? Login here</a>
						</p>
					</div>
				</form>

			</div>
			<div class="secondHalf">
				<img src="images/login.webp" alt="image">
			</div>
		</div>
	</section>
	<hr>
	<section class="contact chat-popup" id="myForm">
		<h2 class="text-center">Contact Us</h2>
		<div class="niceform niceforms">
			<input class="name" type="text" name="name" id="name"
				placeholder="Enter your name"> <input class="name"
				type="text" name="phone" id="phone" placeholder="Enter your phone">
			<input class="name" type="email" name="email" id="email"
				placeholder="Enter your email">
			<textarea name="text" id="text" cols="30" rows="10" class="name"
				placeholder="Ellaborate your concern"></textarea>
			<button class="buttonss" onclick="closeForm();off()">Submit</button>
			<button class="buttonsss" onclick="closeForm();off()">Cancel</button>
		</div>
	</section>
	<footer class="background">
		<p class="text-footer">Copyright &copy; 2027 - All Rights Reserved
		</p>
	</footer>
</body>
</html>