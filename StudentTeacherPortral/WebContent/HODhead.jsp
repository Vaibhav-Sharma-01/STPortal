<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<style>
@-webkit-keyframes fill {
  0% {
    width: 0%;
    height: 2px; }
  50% {
    width: 100%;
    height: 2px; }
  100% {
    width: 100%;
    height: 100%;
    background: #f30067; } }
  .w3l-banner-slider-main .carousel-item:before {
    content: "";
    background: rgba(16, 16, 16, 0.470588);
    position: absolute;
    top: 0;
    min-height: 100%;
    left: 0;
    right: 0;
    z-index: -1; }
  .w3l-banner-slider-main .button-4 {
    width: 160px;
    height: 50px;
    border: 2px solid #fff;
    /* float: left; */
    text-align: center;
    cursor: pointer;
    position: relative;
    box-sizing: border-box;
    overflow: hidden;
    margin: 40px 0 0 0;
    border-radius: 6px; }
  .w3l-banner-slider-main .button-4 a {
    font-size: 16px;
    color: #fff;
    text-decoration: none;
    line-height: 45px;
    transition: all .5s ease;
    z-index: 2;
    position: relative;
    font-weight: 700;
    display: inline; }
  .w3l-banner-slider-main .eff-4 {
    width: 160px;
    height: 50px;
    left: -160px;
    background: #fff;
    position: absolute;
    transition: all .5s ease-in-out;
    z-index: 1; }
  .w3l-banner-slider-main .button-4:hover .eff-4 {
    left: 0; }
  .w3l-banner-slider-main .button-4:hover a {
    color: #f30067; }
body {
  font-family: 'Lato', sans-serif;
}

.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
#abc{
position: relative;
bottom: 4vh;
}
</style>
</head>
<body style="font-family:'Aclonica';">

<div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <img alt="whoops... something went wrong" src="images/ABESEC_logo.png" height="20%">
    <a href="HOD.jsp">Dashboard</a>
    <a href="logout">Logout</a>
  </div>
</div>

<section class="w3l-banner-slider-main">
				<div class="carousel-item button-4 mx-auto" id="abc">
								<div class="eff-4"></div>
								<a href="#" style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</a>
		
	</div>
</section>
<script>
function openNav() {
  document.getElementById("myNav").style.width = "100%";
  document.getElementById("abc").style.display="none";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
  document.getElementById("abc").style.display="block";
}
</script>
     
</body>
</html>
