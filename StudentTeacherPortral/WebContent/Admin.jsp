<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Admin</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
.rightnav{
    text-align: right;
    left: 30%;
    width:30%;
    padding: 0px 23px;
    position: relative;
    top: 4vh;
    left: 62%;
}
#search{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    left: 11vh;
}
#searches{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    left: 11vh;
}
#searces{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    left: 11vh;
}
.btns{
    padding: 8px 20px;
    border: 2px solid black;
    border-radius: 8px;
    background: none;
    color: black;
    cursor: pointer;
    width: 30%;
}
.btns-sm{
    vertical-align: middle;
}
.background{
    background-color:rgba(66, 66, 66, 0.9);
}
</style>
<body>
<div class="w3-container" >
  <nav class="navbar background h-nav" style="font-family:'Aclonica'; ">
  <img alt="old version of browser" src="images/ABESEC_logo.png" width="5%">
    <button class="w3-bar-item w3-button tablink w3-red divis" onclick="openCity(event,'London')"><i>Add Students</i></button>
    <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Paris')"><i>Add HOD</i></button>
    <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'India')"><i>Add Faculty</i></button>
    <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Tokyo')"><i>Registered Students</i></button>
     <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Tokyo1')"><i>Registered Faculty</i></button>
     <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Tokyo2')"><i>Registered HOD</i></button>
     <div class="dropdown">
     <button class="w3-bar-item w3-button tablink divis"><i>More</i></button>
     <div class="dropdown-content">
     <a href="AdminHome.jsp" class="w3-bar-item w3-button tablink divis"><i>Edit your Profile</i></a>
     <a href="logout" class="w3-bar-item w3-button tablink divis"><i>Logout</i></a>
     </div>
     </div>
  </nav>  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer" style="font-family:'Aclonica'; ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="backcard">
                        <center><div class="card-header divi"><b><i>Add New Student</i></b></div></center>
                        <div class="table-back">
                            <form name="my-form" onsubmit="return validform()" action="addnewstudent.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right div"><i>Course Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="course">
                                    </div>
                                </div>
										<input type="hidden" name="viewid" value="Admin.jsp">
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right div"><i>Branch Name</i></label>
                                    <div class="col-md-6">
                                        <select class="form-control" name="branch" id="format" required>
											<option value="Information Technology">Information Technology</option>
											<option value="Computer Science">Computer Science</option>
											<option value="Mechanical Engineering">Mechanical Engineering</option>
											<option value="Civil Engineering">Civil Engineering</option>
										</select>				
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Roll Number</i></label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control div" name="rollno">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right div"><i>Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Father Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="fathername">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right div"><i>Gender</i></label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control div" name="gender">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Semester</i></label>
                                    <div class="col-md-6">
                                         <select  class="form-control div" name="semester">
                                        <option value="First">First</option>
  										<option value="Second">Second</option>
  										<option value="Third">Third</option>
  										<option value="Fourth">Fourth</option>
  										<option value="Fifth">Fifth</option>
  										<option value="Sixth">Sixth</option>
  										<option value="Seventh">Seventh</option>
  										<option value="Eighth">Eighth</option>
  										</select>
                                    </div>
                                </div>
                                <style>
	                                .container {
										  display: inline;
										  position: relative;
										  padding-left: 35px;
										  margin-bottom: 12px;
										  cursor: pointer;
										  font-size: 22px;
										  -webkit-user-select: none;
										  -moz-user-select: none;
										  -ms-user-select: none;
										  user-select: none;
										}
										
										/* Hide the browser's default checkbox */
										.container input {
										  position: absolute;
										  opacity: 0;
										  cursor: pointer;
										  height: 0;
										  width: 0;
										}
										
										/* Create a custom checkbox */
										.checkmark {
										  position: absolute;
										  top: 0;
										  left: 0;
										  height: 25px;
										  width: 25px;
										  background-color: #eee;
										}
										
										/* On mouse-over, add a grey background color */
										.container:hover input ~ .checkmark {
										  background-color: #ccc;
										}
										
										/* When the checkbox is checked, add a blue background */
										.container input:checked ~ .checkmark {
										  background-color: #2196F3;
										}
										
										/* Create the checkmark/indicator (hidden when not checked) */
										.checkmark:after {
										  content: "";
										  position: absolute;
										  display: none;
										}
										
										/* Show the checkmark when checked */
										.container input:checked ~ .checkmark:after {
										  display: inline;
										}
										
										/* Style the checkmark/indicator */
										.container .checkmark:after {
										  left: 9px;
										  top: 5px;
										  width: 5px;
										  height: 10px;
										  border: solid white;
										  border-width: 0 3px 3px 0;
										  -webkit-transform: rotate(45deg);
										  -ms-transform: rotate(45deg);
										  transform: rotate(45deg);
										}
                                </style>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Section</i></label>
                                    <div class="col-md-6">
                                         <label class="container">A
										  <input type="radio" class="check" name="rad" value="A">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">B
										  <input type="radio"  class="check" name="rad" value="B">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">C
										  <input type="radio" class="check" name="rad" value="C">
										  <span class="checkmark"></span>
										</label>
										
						 				<label class="container">D
										  <input type="radio" class="check" name="rad" value="D">
										  <span class="checkmark"></span>
										</label>
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div><br>
                    </div><br>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer" style="font-family:'Aclonica'; height: 67vh ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="backcard">
                        <center><div class="card-header divi"><b><i>Add HOD</i></b></div></center>
                        <div class="table-back">
                            <form name="my-form" onsubmit="return validform()" action="AddHOD.jsp" method="">
                            	<div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>ID</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="id">
                                    </div>
                                </div>
                            	
                            
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right div"><i>Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control div" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right div"><i>Email</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="email">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Phone Number</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="phone">
                                    </div>
                                </div>   

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right div"><i>Department</i></label>
                                    <div class="col-md-6">
                                        <select class="form-control" name="dept" id="format" required>
											<option value="Information Technology">Information Technology</option>
											<option value="Computer Science">Computer Science</option>
											<option value="Mechanical Engineering">Mechanical Engineering</option>
											<option value="Civil Engineering">Civil Engineering</option>
										</select>				
                                    </div>
                                </div>                                                         
                                
                                    <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>


<div id="India" class="w3-container w3-border city"
	style="display: none">
	<br>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<main class="my-form">
    <div class="cotainer" style="font-family:'Aclonica'; ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="backcard">
                        <center><div class="card-header divi"><b><i>Add Faculty</i></b></div></center>
                        <div class="table-back">
                            <form name="my-form" onsubmit="return validform()" action="AddNewFaculty.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right div"><i>ID</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="Id">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right div"><i>Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Branch</i></label>
                                    <div class="col-md-6">
                                        <select class="form-control hh" name="branch" id="format" required>
											<option value="Information Technology">Information Technology</option>
											<option value="Computer Science">Computer Science</option>
											<option value="Mechanical Engineering">Mechanical Engineering</option>
											<option value="Civil Engineering">Civil Engineering</option>
										</select>				
                                    </div>
                                </div>
									<input type="hidden" name="viewid" value="Admin.jsp">
                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right div"><i>Subject Teaching</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="subject">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Email ID</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="email">
                                    </div>
                                </div>
								
								<div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Semester teaching</i></label>
                                    <div class="col-md-6">
                                         <select  class="form-control div" name="semester">
                                        <option value="First">First</option>
  										<option value="Second">Second</option>
  										<option value="Third">Third</option>
  										<option value="Fourth">Fourth</option>
  										<option value="Fifth">Fifth</option>
  										<option value="Sixth">Sixth</option>
  										<option value="Seventh">Seventh</option>
  										<option value="Eighth">Eighth</option>
  										</select>
                                    </div>
                                </div>
                                <style>
	                                .container {
										  display: inline;
										  position: relative;
										  padding-left: 35px;
										  margin-bottom: 12px;
										  cursor: pointer;
										  font-size: 22px;
										  -webkit-user-select: none;
										  -moz-user-select: none;
										  -ms-user-select: none;
										  user-select: none;
										}
										
										/* Hide the browser's default checkbox */
										.container input {
										  position: absolute;
										  opacity: 0;
										  cursor: pointer;
										  height: 0;
										  width: 0;
										}
										
										/* Create a custom checkbox */
										.checkmark {
										  position: absolute;
										  top: 0;
										  left: 0;
										  height: 25px;
										  width: 25px;
										  background-color: #eee;
										}
										
										/* On mouse-over, add a grey background color */
										.container:hover input ~ .checkmark {
										  background-color: #ccc;
										}
										
										/* When the checkbox is checked, add a blue background */
										.container input:checked ~ .checkmark {
										  background-color: #2196F3;
										}
										
										/* Create the checkmark/indicator (hidden when not checked) */
										.checkmark:after {
										  content: "";
										  position: absolute;
										  display: none;
										}
										
										/* Show the checkmark when checked */
										.container input:checked ~ .checkmark:after {
										  display: inline;
										}
										
										/* Style the checkmark/indicator */
										.container .checkmark:after {
										  left: 9px;
										  top: 5px;
										  width: 5px;
										  height: 10px;
										  border: solid white;
										  border-width: 0 3px 3px 0;
										  -webkit-transform: rotate(45deg);
										  -ms-transform: rotate(45deg);
										  transform: rotate(45deg);
										}
                                </style>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Section teaching <br>(Max. two)</i></label>
                                    <div class="col-md-6">
                                         <label class="container">A
										  <input type="checkbox" class="check" name="chk" value="A">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">B
										  <input type="checkbox"  class="check" name="chk" value="B">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">C
										  <input type="checkbox" class="check" name="chk" value="C">
										  <span class="checkmark"></span>
										</label>
										
						 				<label class="container">D
										  <input type="checkbox" class="check" name="chk" value="D">
										  <span class="checkmark"></span>
										</label>
										<script>
										$("input[name=chk]").change(function(){
										    var max= 2;
										    if( $("input[name=chk]:checked").length == max ){
										        $("input[name=chk]").attr('disabled', 'disabled');
										        $("input[name=chk]:checked").removeAttr('disabled');
										    }else{
										         $("input[name=chk]").removeAttr('disabled');
										    }
										});
										</script>
                                    </div>
                                </div>
								
                                    <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div><br>
                    </div><br>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
</div>


  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  <div class="rightnav v-class">
			<input type="text" name="search" id="search">
			<button class="btns btns-sm">Search</button>
		</div>
  
<section style="font-family:'Aclonica'; ">
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>Course Name</b></i></th>
          <th class="division"><i><b>Branch Name</b></i></th>
          <th class="division"><i><b>Roll Number</b></i></th>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Father Name</b></i></th>
          <th class="division"><i><b>Gender</b></i></th>
		  <th class="division"><i><b>Semester</b></i></th>
		  <th class="division"><i><b>Section</b></i></th>
          <th class="division"><i><b></b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
      <%@page import = "java.sql.*" %>
      <%@page import = "Dao.JSconnector" %>
	  <%try
	  {
		  Connection con = JSconnector.getConnection();
		  Statement st = con.createStatement();
		  ResultSet rs = st.executeQuery("select * from student order by roll_no");
		  while(rs.next())
		  {
	  %>
        <tr>
          <td class="division"><i><b><%=rs.getString(1) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(2) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(5) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(6) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(9) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(10) %></b></i></td>
          <form method="post" action="deletestudent">
	  <input type="hidden" name="roll" value="<%=rs.getString(3) %>">
	  <input type="hidden" name="viewid" value="Admin.jsp">
	  <td><i><b><button type="submit" class="delete">delete</button></b></i></td>
	   </form>
        </tr>
      </tbody>
      <%}}
	  catch(Exception e)
	  {}
	  %>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
    <div class="rightnav v-class">
			<input type="text" name="search" id="searches">
			<button class="btns btns-sm">Search</button>
		</div>
<section style="font-family:'Aclonica'; ">
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>ID</b></i></th>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Branch</b></i></th>
          <th class="divisions"><i><b>Subject Teaching</b></i></th>
 		  <th class="divisions"><i><b>Semester Teaching</b></i></th>
          <th class="divisions"><i><b>Section 1</b></i></th>
		  <th class="divisions"><i><b>Section 2</b></i></th>
          <th class="division"><i><b>Email ID</b></i></th>
          <th class="division"><i><b></b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
<%@page import = "java.sql.*"%>
<%@page import = "Dao.JSconnector" %>
<%try
{
	Connection con = JSconnector.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from teacher order by id");
    while(rs.next())
    {
%>
        <tr>
          <td class="division"><i><b><%=rs.getString(1) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(2) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(8) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(9) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(10) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(5) %></b></i></td>
          <form method="post" action="deleteteacher">
	  <input type="hidden" name="email" value="<%=rs.getString(5) %>">
	  <input type="hidden" name="viewid" value="Admin.jsp">
	  <td><i><b><button type="submit" class="delete">delete</button></b></i></td>
	   </form>
        </tr>
      </tbody>
<%}}
catch(Exception e)
{}
%>
    </table>
  </div>
</section>

</div>

<div id="Tokyo2" class="w3-container w3-border city" style="display:none">
    <div class="rightnav v-class">
			<input type="text" name="search" id="searces">
			<button class="btns btns-sm">Search</button>
		</div>
<section style="font-family:'Aclonica'; ">
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>ID</b></i></th>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Email Id</b></i></th>
          <th class="divisions"><i><b>Phone Number</b></i></th>
          <th class="division"><i><b>Department</b></i></th>
          <th class="division"><i><b></b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
<%@page import = "java.sql.*"%>
<%@page import = "Dao.JSconnector" %>
<%try
{
	Connection con = JSconnector.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from member order by id");
    while(rs.next())
    {
%>
        <tr>
          <td class="division"><i><b><%=rs.getString(6) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(1) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(7) %></b></i></td>
          <form method="post" action="deletehod">
	  <input type="hidden" name="email" value="<%=rs.getString(3) %>">
	  <input type="hidden" name="viewid" value="Admin.jsp">
	  <td><i><b><button type="submit" class="delete">delete</button></b></i></td>
	   </form>
        </tr>
      </tbody>
<%}}
catch(Exception e)
{}
%>
    </table>
  </div>
</section>
<script>  
      $(document).ready(function(){  
           $('#search').keyup(function(){  
                search_table($(this).val());  
           });  
           function search_table(value){  
                $('#student tr').each(function(){  
                     var found = 'false';  
                     $(this).each(function(){  
                          if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                          {  
                               found = 'true';  
                          }  
                     });  
                     if(found == 'true')  
                     {  
                          $(this).show();  
                     }  
                     else  
                     {  
                          $(this).hide();  
                     }  
                });  
           }  
      });  
      
      $(document).ready(function(){  
          $('#searches').keyup(function(){  
               search_table($(this).val());  
          });  
          function search_table(value){  
               $('#student tr').each(function(){  
                    var found = 'false';  
                    $(this).each(function(){  
                         if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                         {  
                              found = 'true';  
                         }  
                    });  
                    if(found == 'true')  
                    {  
                         $(this).show();  
                    }  
                    else  
                    {  
                         $(this).hide();  
                    }  
               });  
          }  
     });
      
      $(document).ready(function(){  
          $('#searces').keyup(function(){  
               search_table($(this).val());  
          });  
          function search_table(value){  
               $('#student tr').each(function(){  
                    var found = 'false';  
                    $(this).each(function(){  
                         if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                         {  
                              found = 'true';  
                         }  
                    });  
                    if(found == 'true')  
                    {  
                         $(this).show();  
                    }  
                    else  
                    {  
                         $(this).hide();  
                    }  
               });  
          }  
     });
 </script>
</div>
 <%@include file="foot.jsp"%>
</body>
</html>