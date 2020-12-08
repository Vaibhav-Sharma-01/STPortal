<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/Homepage.css">
<link rel="stylesheet" href="css/section2.css">
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
.bg{
  background-repeat: no-repeat;
  background-size: 100% 100vh;
}
.tdiv{
background-image: url("images/bg7.jpg");
 height: 25%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 100vh;
}

.bigsize{
	font-size: xx-large;
	font-weight: bolder;
}
.textb{
	font-size: 20px;
	font-weight: bold;
}
.adjust{
position: relative;
top: 40px;
}
.white{
color: white;
}
.pink{
color: rgb(224, 9, 127);
}
.tra{
text-decoration: none;
animation-name: example;
  animation-duration: 4s;
  animation-iteration-count: infinite;
color: black
}
@keyframes example {
  from {color: red;}
  to {color: blue;}
  }
  .tra:hover{
  text-decoration: underline;
  }
</style>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>
<body background="images/bg1.jpg" class="bg">
	<div id="overlay"></div>
	<nav class="navbar background h-nav">
		<ul class="nav-list v-class">
			<div class="logo">
				<img src="images/220px-ABESEC_logo.png" alt="logo">
			</div>
			<li><a href="#home">Home</a></li>
			<li><a href="#about">About</a></li>
			<li><a onclick="smoothScroll(document.getElementById('programs'))">Programs</a></li>
		</ul>
		<div class="rightnav v-class">
			<input type="text" name="search" id="search">
			<button class="btns btns-sm">Search</button>
		</div>
		
	</nav>

	<section class="firstSection" id="home">
		<div class="box-main">
			<div class="firstHalf" id="login">
				<div style="display: none;color:red; font-size: 30px;word-spacing: 10px; font-style: italic;" id="incorrect">
					<script>
					function myFunction() {
						  document.getElementById("incorrect").style.display="block";
						 }
					</script>
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
					<p style="position: relative; right: 14vh; top: 9vh; width: 100%">
							<a onclick="forgot()">Forgot Password? Reset it here</a>
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
			<div class="firstHalfs" id="forgot"  style="display: none">
			<p class="text-big" style="position: relative; right: 14vh;top: 2vh">Forgot Password</p>
					<div class="text-center" style="padding:50px 0;position: relative; right: 14vh">
					<p>We will be sending you an email for resetting
	  	you password. In case you didn't recieve it
     in some time try checking in spam folder.</p><br><br>
						<div class="login-form-1 main-login-form login-group form-group" style="width: 35%">			
							<input type="email" class="form-control c" id="fp_email" name="fp_email" placeholder="email address" required>
							<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>		
						</div>
					</div>
					<div style="position: relative; bottom: 2vh">
						<p style="position: relative; right: 14vh; bottom: 1vh; width: 100%">
							<a onclick="login()">Already have an account? Login here</a>
						</p>
					</div>
			</div>
			<div class="secondHalf">
				<img src="images/login.webp" alt="image">
			</div>
		</div>
	</section>
	<section class="section2">
	<div class="cardview">
        <div class="fdiv">
            <div class="fldiv">
                <h1>What do you want</h1>
                <h1>to Learn today?</h1>
            </div>
            <div class="frdiv">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Ipsam officia, maiores alias sit </p>
                <p>soluta nostrum ad debitis modi itaque consectetur quod, ipsum at hic voluptas</p> 
                <p>deleniti laboriosam odit dolor!</p>
            </div>
        </div>
        <div class="sdiv">
            <div class="fldivs">
                <p class="pink"><i class="fas icons fa-desktop fa-2x"></i></p>
                <p><a class="tra">Experienced Faculty</a></p>
                <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
            </div>
            <div class="nldivs">
                <p class="pink"><i class="fas fa-band-aid"></i></p>
                <p><a class="tra">Experienced Faculty</a></p>
                <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
            </div>
            <div class="nldivs">
                <p class="pink"><i class="fas fa-band-aid"></i></p>
                <p><a class="tra">Experienced Faculty</a></p>
                <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
            </div>
            <div class="frdivs">
                <p class="pink"><i class="fas fa-band-aid"></i></p>
                <p><a class="tra">Experienced Faculty</a></p>
                <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
            </div>
        </div>
        <div class="tdiv" style="color: white">
            <div class="fldivs adjust">
                <p class="bigsize">40M</p>
                <p class="textb">Students</p>
            </div>
            <div class="nldivs adjust">
                <p class="bigsize">60K</p>
                <p class="textb">Instructors</p>
            </div>
            <div class="nldivs adjust">
                <p class="bigsize">90K</p>
                <p class="textb">Courses</p>
            </div>
            <div class="frdivs adjust">
                <p class="bigsize">40K</p>
                <p class="textb">Languages</p>
            </div>
        </div>
        </div>
    </section>
	<section class="section secLeft">
		<div class="para">
			<p class="sectionTag text-big">The end of your search is here.</p>
			<p class="sectionSubTag text-small">i am fine here.it is the
				space where you can add text for tour site.this is a basic website
				we can change the conent here at any time for making the
				website.this is a basic website we can change the conent here at any
				time for making the website.i am fine here.it is the space where you
				can add text for tour site.this is a basic website we can change the
				conent here at any time for making the website.this is a basic
				website we can change the conent here at any time for making the
				website. i am fine here.it is the space where you can add text for
				tour site.this is a basic website we can change the conent here at
				any time for making the website.this is a basic website we can
				change the conent here at any time for making the website.</p>
		</div>
		<div class="thumbnail">
			<img src="download.jpeg" alt="laptop image" class="imgfluid">
		</div>
	</section>
	<section class="section">
		<div class="para">
			<p class="sectionTag text-big">The end of your search is here.</p>
			<p class="sectionSubTag text-small">i am fine here.it is the
				space where you can add text for tour site.this is a basic website
				we can change the conent here at any time for making the
				website.this is a basic website we can change the conent here at any
				time for making the website.i am fine here.it is the space where you
				can add text for tour site.this is a basic website we can change the
				conent here at any time for making the website.this is a basic
				website we can change the conent here at any time for making the
				website. i am fine here.it is the space where you can add text for
				tour site.this is a basic website we can change the conent here at
				any time for making the website.this is a basic website we can
				change the conent here at any time for making the website.</p>
		</div>
		<div class="thumbnail">
			<img src="download.jpeg" alt="laptop image" class="imgfluid">
		</div>
	</section>
	<hr>

	<footer class="background">
		<p class="text-footer">Copyright &copy; 2027 - All Rights Reserved
		</p>
	</footer>
	<script type="text/javascript">
    (function(d, m){
        var kommunicateSettings = 
            {"appId":"2d5f7bc45bfdcada5e52c8552b3d78e5c","popupWidget":true,"automaticChatOpenOnNavigation":true};
        var s = document.createElement("script"); s.type = "text/javascript"; s.async = true;
        s.src = "https://widget.kommunicate.io/v2/kommunicate.app";
        var h = document.getElementsByTagName("head")[0]; h.appendChild(s);
        window.kommunicate = m; m._globals = kommunicateSettings;
    })(document, window.kommunicate || {});
/* NOTE : Use web server to view HTML files as real-time update will not work if you directly open the HTML file in the browser. */
</script>
</body>
</html>