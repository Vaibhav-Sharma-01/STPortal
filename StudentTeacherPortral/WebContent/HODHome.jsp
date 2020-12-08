<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<script type="text/javascript">
	$(document).ready(function() {
		$("#off").click(function() {
			if ($(this).text() == "visibility_off") {
				$(this).text("visibility");
				$("#password").attr("type", "text");
			} else {
				$(this).text("visibility_off");
				$("#password").attr("type", "password");
			}

		});
	});
</script>
<title>Hod profile</title>
<style>
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {	
  display: none;
  position: fixed;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

.new1{
	border: 1px solid rgba(0,0,0,0.1);
}
.hh{
color: rgb(0,0,0);
}
.hh:hover {
	font-weight: bolder;
}
</style>
</head>
<%@include file="HODhead.jsp" %>
 <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<div style="height: 85vh;">
	<form action="profileProcess" method="post"
		enctype="multipart/form-data">
		<div class="row" style="margin: 1px;">

			<div class="col-sm-1"></div>

			<div class="col-sm-10"
				style="box-shadow: 2px 1px 3vh 0vh rgba(0, 0, 0, 0.2); transition: 0.3s; background-color: #17a2b8cc; border-radius: 10px">

				<h1 align="center" class="hh" style="font-family:'Aclonica';"><i>${uname}</i></h1>
				<hr>

				<div align="center">
					<%-- <img class="rounded-circle"
					src="<spring:url value="/images/abc.jpg"/>" width="150"
					height="150"> --%>
							<img class="img-circle"
								src="profileimage/${imgpath}" width="170" height="150" alt="${imgpath }">
				</div>
				<br>
				<div class="col-md-2"></div>

				<div class="col-md-4">
					<br>
					<div class="form-group">
						<label for="price" class="hh">Email Id:</label> <input type="email"
							class="form-control hh" id="email"
							value="${email}" placeholder="Enter Email" readonly>
					</div>
					<div class="form-group">
						<label for="name" class="hh">Department:</label> 
						<select class="form-control hh" name="dep" id="format" required>
							<option value="${department}" disabled selected>${department}</option>
							<option value="Information Technology">Information Technology</option>
							<option value="Computer Science">Computer Science</option>
							<option value="Mechanical Engineering">Mechanical Engineering</option>
							<option value="Civil Engineering">Civil Engineering</option>
						</select>						
					</div>
				</div>


				<div class="col-md-4">
					<br>
					<div class="form-group">
						<label for="quantity" class="hh">Password</label>
						<div
							style="display: flex; align-items: center; border: 1px lightgray solid; border-radius: 5px;">
							<input type="password" class="form-control hh" style="border: 0;"
								id="password" name="pass" placeholder="Enter Password"
								required value="${password}"><span
								id="off" style="cursor: default; margin-right: 12px;"
								class="material-icons md-24">visibility_off</span>
						</div>
					</div>
					<div class="form-group">
						<label for="file" class="hh">Upload Profile Image</label> <input type="file"
							class="form-control hh" id="customFile" name="imageprofile">
					</div>

				</div>


				<div class="form-inline">

					<div class="row"
						style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); transition: 0.3s;">
						<div class="col-sm-3"></div>
						<div class="col-sm-6" align="center">
							<br>
							<button type="submit" class="btn btn-primary hh"
								style="width: 100%; color: white">Update Profile</button>
							<br> <br> <br>
						</div>
						<div class="col-sm-2"></div>
					</div>
				</div>

			</div>
		</div>

	</form>
</div>
<%@include file="foot.jsp"%>